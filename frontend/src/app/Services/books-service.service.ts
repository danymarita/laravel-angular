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

  handleError(error){
    this.error = error.error.error;
  }
}
