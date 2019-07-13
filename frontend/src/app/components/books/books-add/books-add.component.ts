import { Component, OnInit } from '@angular/core';
import { Books } from 'src/app/Books';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/Services/auth.service';
import { Location } from '@angular/common';

@Component({
  selector: 'app-books-add',
  templateUrl: './books-add.component.html',
  styleUrls: ['./books-add.component.css']
})
export class BooksAddComponent implements OnInit {
  book: Books;
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
    this.formTitle = 'Form Tambah Buku';
    this.book = {id: null, isbn: null, title: null, author: null, description: null, created_at: null, updated_at: null};
  }

  addBook() {
    let isbn = this.book.isbn.trim();
    let title = this.book.title.trim();
    let author = this.book.author.trim();
    let description = this.book.description.trim();

    if(!isbn || !title || !author || !description) {
      this.errorMsg = 'Ada field yang belum terisi!';
      return
    }

    this.httpCall.addBookData(this.Token.get(), isbn, title, author, description).subscribe(
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
      this.infoMsg = "Tambah data buku berhasil dilakukan.";
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
