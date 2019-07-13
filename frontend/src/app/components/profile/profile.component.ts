import { Component, OnInit } from '@angular/core';
import { Users } from 'src/app/Users';
import { Router } from '@angular/router';
import { TokenService } from 'src/app/Services/token.service';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { AuthService } from 'src/app/Services/auth.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  user: Users;
  error: null

  constructor(
    private router: Router,
    private Token: TokenService,
    private httpCall: HttpCallService,
    private Auth: AuthService,
  ) { }

  ngOnInit() {
    this.user = {id: null,name: null,email: null,created_at: null,updated_at: null}
    this.getProfile();
  }

  getProfile() {
    this.httpCall.getProfile(this.Token.get()).subscribe(
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

    this.user = data.result
  }

  handleError(error) {
    // console.log(error.error.error);
    this.error = error.error.error;
  }
}
