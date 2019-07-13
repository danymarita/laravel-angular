import { Component, OnInit } from '@angular/core';
import { Books } from 'src/app/Books';
import { Router } from '@angular/router';
import { TokenService } from 'src/app/Services/token.service';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { AuthService } from 'src/app/Services/auth.service';

@Component({
  selector: 'app-books-index',
  templateUrl: './books-index.component.html',
  styleUrls: ['./books-index.component.css']
})
export class BooksIndexComponent implements OnInit {
  books: Books[];
  infoMsg: string;
  errorMsg: string;
  error: null;

  constructor(
    private router: Router,
    private Token: TokenService,
    private httpCall: HttpCallService,
    private Auth: AuthService,
  ) { }

  ngOnInit() {
    this.getBooks();
  }

  getBooks() {
    this.httpCall.getBooks(this.Token.get()).subscribe(
      // error => this.handleError(error),
      data => this.handleResponse(data),
      error => this.handleError(error)
    );
  }

  editBook(Event: MouseEvent, book: Books) {
    // console.log(book);
    event.preventDefault();
    let link = ['book/update', book.id];
    this.router.navigate(link);
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

    this.books = data
  }

  handleError(error) {
    // console.log(error.error.error);
    this.error = error.error.error;
  }

  deleteBook(book: Books) {
    if(confirm("Apakah Anda yakin akan menghapus buku " + book.title + "?")) {
      this.httpCall.deleteBook(this.Token.get(), book.id).subscribe(
        // error => this.handleError(error),
        data => this.handleDeleteResponse(data),
        error => this.handleError(error)
      );
    }
  }

  handleDeleteResponse(data) {
    if(data.error){
      if(data.error == 'Token is Expired'){
        this.Token.remove();
        //Change auth status
        this.Auth.changeAuthStatus(false);
        this.router.navigateByUrl('/login');
      }
    }

    this.books = data.data
  }
}
