import { Component, OnInit } from '@angular/core';
import { Employees } from 'src/app/Employees';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-employees-add',
  templateUrl: './employees-add.component.html',
  styleUrls: ['./employees-add.component.css']
})
export class EmployeesAddComponent implements OnInit {
  employee: Employees;
  formTitle: string;
  infoMsg: string;
  errorMsg: string;
  error: null;

  constructor(
    private httpCall: HttpCallService,
    private Token: TokenService,
    private router: Router,
    private Auth: AuthService,
    private location: Location
  ) { }

  ngOnInit() {
    this.formTitle = 'Form Tambah Karyawan';
    this.employee = {id: null, name: null, nip: null, birth_place: null, dob: null, address: null, created_at: null, updated_at: null};
  }

  addEmployee() {
    let name = this.employee.name;
    let nip = this.employee.nip;
    let birth_place = this.employee.birth_place;
    let dob = this.employee.dob;
    let address = this.employee.address;

    if(!name || !nip || !birth_place || !dob) {
      this.errorMsg = 'Ada field yang belum terisi!';
      return
    }

    if(nip > 999999){
      this.errorMsg = 'Field NIP harus berupa nomor dengan max 6 digit!';
      return
    }

    this.httpCall.addEmployeeData(this.Token.get(), name, nip, birth_place, dob, address).subscribe(
      data => this.handleResponse(data),
      error => this.handleError(error)
    )
  }

  handleResponse (data) {
    if(data.error){
      if(data.error == 'Token is Expired'){
        this.Token.remove();
        //Change auth status
        this.Auth.changeAuthStatus(false);
        this.router.navigateByUrl('/login');
      }
    }

    if(data.success == 'success'){
      this.infoMsg = "Tambah data karyawan berhasil dilakukan.";
    }else this.errorMsg = 'Maaf ada kegagalan sistem, mohon coba lagi.';
  }

  handleError(error) {
    // console.log(error.error.error);
    this.error = error.error.error;
  }

  goBack(Event: MouseEvent) : void {
    Event.preventDefault();
    this.location.back();
  }
}
