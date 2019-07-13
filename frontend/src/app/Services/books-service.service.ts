import { Injectable } from '@angular/core';
import { TokenService } from './token.service';
import { HttpCallService } from './http-call.service';
import { Observable } from 'rxjs';
import { Books } from '../Books';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class BooksServiceService {

  public error = null

  constructor(
    private Token: TokenService,
    private httpCall: HttpCallService
  ) { }

  getBooks() {
    this.httpCall.getBooks(this.Token.get()).subscribe(
      data => data,
      error => this.handleError(error)
    );
  }

  handleError(error){
    this.error = error.error.error;
  }
}
