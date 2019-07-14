import { Component, OnInit } from '@angular/core';
import { Employees } from 'src/app/Employees';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-employees-detail',
  templateUrl: './employees-detail.component.html',
  styleUrls: ['./employees-detail.component.css']
})
export class EmployeesDetailComponent implements OnInit {

  employee: Employees;
  infoMsg: string;
  errorMsg: string;
  selectedId: number;
  error: null;
  
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
