import { Component, OnInit } from '@angular/core';
import { Employees } from 'src/app/Employees';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-employees-update',
  templateUrl: './employees-update.component.html',
  styleUrls: ['./employees-update.component.css']
})
export class EmployeesUpdateComponent implements OnInit {
  employee: Employees;
  formTitle: string;
  infoMsg: string;
  errorMsg: string;
  selectedId: number;
  error: null;
  datepicker: {};

  constructor(
    private httpCall: HttpCallService,
    private Token: TokenService,
    private router: Router,
    private ActivatedRoute: ActivatedRoute,
    private Auth: AuthService,
    private location: Location
  ) { }

  ngOnInit() {
    this.ActivatedRoute.params.forEach((param : Params) => {
      // console.log(param);
      this.selectedId = param['id'];
      this.formTitle = 'Form Edit Karyawan';
    })

    this.getData(this.selectedId);
  }

  getData(id) {
    this.httpCall.getEmployeeById(this.Token.get(), id).subscribe(
      // error => this.handleError(error),
      data => this.handleResponse(data),
      error => this.handleError(error)
    );
  }

  handleResponse(data) {
    if(data.error){
      if(data.error == 'Token is Expired'){
        this.Token.remove();
        //Change auth status
        this.Auth.changeAuthStatus(false);
        this.router.navigateByUrl('/login');
      }
    }

    this.employee = data
    let arr_date = data.dob.split("-");
    this.datepicker = {year: parseInt(arr_date[0]), month: parseInt(arr_date[1]), day: parseInt(arr_date[2])};
  }

  handleError(error) {
    // console.log(error.error.error);
    this.error = error.error.error;
  }

  editEmployee() {
    let name = this.employee.name;
    let nip = this.employee.nip;
    let birth_place = this.employee.birth_place;
    let dob = this.datepicker;
    let address = this.employee.address;
    let id = this.employee.id;

    if(!name || !nip || !birth_place || !dob) {
      this.errorMsg = 'Ada field yang belum terisi!';
      return
    }

    if(nip > 999999){
      this.errorMsg = 'Field NIP harus berupa nomor dengan max 6 digit!';
      return
    }

    this.httpCall.updateEmployeeData(this.Token.get(), id, name, nip, birth_place, dob, address).subscribe(
      // error => this.handleError(error),
      data => this.handleUpdateResponse(data),
      error => this.handleError(error)
    );
  }

  handleUpdateResponse(data) {
    if(data.error){
      if(data.error == 'Token is Expired'){
        this.Token.remove();
        //Change auth status
        this.Auth.changeAuthStatus(false);
        this.router.navigateByUrl('/login');
      }
    }

    if(data.success == 'success'){
      this.infoMsg = "Update data karyawan berhasil dilakukan.";
    }else this.errorMsg = 'Maaf ada kegagalan sistem, mohon coba lagi.';
  }
  goBack(Event: MouseEvent) : void {
    Event.preventDefault();
    this.location.back();
  }

}
