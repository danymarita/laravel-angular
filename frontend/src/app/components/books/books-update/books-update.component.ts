import { Component, OnInit } from '@angular/core';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router, ActivatedRoute, Params } from '@angular/router';
import { Books } from 'src/app/Books';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-books-update',
  templateUrl: './books-update.component.html',
  styleUrls: ['./books-update.component.css']
})
export class BooksUpdateComponent implements OnInit {

  book: Books;
  formTitle: string;
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
      this.formTitle = 'Form Edit Buku';
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

  editBook() {
    let isbn = this.book.isbn;
    let title = this.book.title;
    let author = this.book.author;
    let description = this.book.description;
    let id = this.book.id;

    if(!isbn || !title || !author) {
      this.errorMsg = 'Ada field yang belum terisi!';
      return;
    }

    this.httpCall.updateBookData(this.Token.get(), id, isbn, title, author, description).subscribe(
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
      this.infoMsg = "Update data buku berhasil dilakukan.";
    }else this.errorMsg = 'Maaf ada kegagalan sistem, mohon coba lagi.';
  }
  goBack(Event: MouseEvent) : void {
    Event.preventDefault();
    this.location.back();
  }
}
