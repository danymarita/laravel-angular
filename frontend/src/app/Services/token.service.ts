import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class TokenService {

  private iss = {
    login : 'http://localhost:8080/api/login',
    signup : 'http://localhost:8080/api/register'
  }

  constructor() { }

  handle(token) {
    this.set(token);
  }

  set(token) {
    localStorage.setItem('token', token);
  }

  get() {
    return localStorage.getItem('token');
  }

  remove() {
    localStorage.removeItem('token');
  }

  isValid() {
    const token = this.get();
    if(token){
      //Split jwt token dan dapatkan payload
      const payload = this.payload(token);
      if(payload){
        //get index of property iss diatas, berdasarkan valuenya (payload.iss)
        return Object.values(this.iss).indexOf(payload.iss) > -1 ? true : false;
      }
    }

    return false;
  }

  payload(token) {
    //Split jwt token dan dapatkan payload
    const payload = token.split('.')[1];
    return this.decode(payload);
  }

  decode(payload) {
    //Decode jwt payload
    return JSON.parse(atob(payload));
  }

  loggedIn() {
    return this.isValid();
  }
}
