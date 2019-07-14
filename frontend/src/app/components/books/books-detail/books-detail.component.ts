import { Component, OnInit } from '@angular/core';
import { Books } from 'src/app/Books';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-books-detail',
  templateUrl: './books-detail.component.html',
  styleUrls: ['./books-detail.component.css']
})
export class BooksDetailComponent implements OnInit {

  book: Books;
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
    this.httpCall.getBookById(this.Token.get(), id).subscribe(
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

    this.book = data
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
