import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class HttpCallService {

  private base_url = 'http://localhost:8080/api';
  constructor(private http:HttpClient) { }

  signup(data) {
    return this.http.post(this.base_url+'/register', data)
  }

  login(data) {
    return this.http.post(this.base_url+'/login', data)
  }

  getBooks(token, page) {
    return this.http.get(this.base_url+'/book?token='+token+'&page='+page)
  }

  getBookById(token, id) {
    return this.http.get(this.base_url+'/book/'+id+'?token='+token)
  }

  updateBookData(token, id, isbn, title, author, description) {
    let body = JSON.stringify({id: id, isbn: isbn, title: title, author: author, description: description});
    let headers = new HttpHeaders();
    headers.set('Content-Type','application/json');
    return this.http.put(this.base_url+'/book/'+id+'?token='+token, body, {headers : headers})
  }

  addBookData(token, isbn, title, author, description) {
    let body = JSON.stringify({isbn: isbn, title: title, author: author, description: description});
    let headers = new HttpHeaders();
    headers.set('Content-Type','application/json');
    return this.http.post(this.base_url+'/book/?token='+token, body, {headers : headers})
  }

  deleteBook(token, id) {
    let headers = new HttpHeaders();
    headers.set('Content-Type','application/json');
    return this.http.delete(this.base_url+'/book/'+id+'?token='+token, {headers : headers})
  }

  getProfile(token) {
    let headers = new HttpHeaders();
    headers.set('Content-Type','application/json');
    return this.http.post(this.base_url+'/get_user_details/?token='+token, null, {headers : headers});
  }
}
