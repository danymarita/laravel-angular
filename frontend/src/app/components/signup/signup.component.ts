import { Component, OnInit } from '@angular/core';
import { HttpCallService } from '../../Services/http-call.service'
import { TokenService } from 'src/app/Services/token.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  public form = {
    name:null,
    email:null,
    password:null,
    password_confirmation:null
  }

  public error = []

  constructor(
    private HttpCall: HttpCallService,
    private Token: TokenService,
    private router: Router
    ) { }

  onSubmit() {
    // console.log(this.form);
    this.HttpCall.signup(this.form).subscribe(
      data => this.handleResponse(data),
      error => this.handleError(error)
    );
  }

  handleError(error){
    console.log(error.error);
    this.error = error.error
  }

  handleResponse(data){
    this.Token.handle(data.access_token);
    this.router.navigateByUrl('/home');
  }

  ngOnInit() {
  }

}
