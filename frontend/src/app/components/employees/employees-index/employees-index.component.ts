import { Component, OnInit } from '@angular/core';
import { Employees } from 'src/app/Employees';
import { AuthService } from 'src/app/Services/auth.service';
import { HttpCallService } from 'src/app/Services/http-call.service';
import { TokenService } from 'src/app/Services/token.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-employees-index',
  templateUrl: './employees-index.component.html',
  styleUrls: ['./employees-index.component.css']
})
export class EmployeesIndexComponent implements OnInit {
  title = "Daftar Karyawan";
  employees: Employees[];
  infoMsg: string;
  errorMsg: string;
  error: null;
  page = 1;
  collectionSize: number;
  boundaryLinks = true;
  maxSize = 5;
  pageSize: number;
  previousPage: number;
  offset: number;

  constructor(
    private router: Router,
    private Token: TokenService,
    private httpCall: HttpCallService,
    private Auth: AuthService,
  ) { }

  ngOnInit() {
    this.getEmployees(1);
  }

  getEmployees(page) {
    this.httpCall.getEmployees(this.Token.get(), page).subscribe(
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

    this.employees = data.data
    this.collectionSize = data.total
    this.pageSize = data.per_page
    this.offset = (this.page - 1) * this.pageSize + 1 
  }

  handleError(error) {
    // console.log(error.error.error);
    this.error = error.error.error;
  }

  editEmployee(Event: MouseEvent, employee: Employees) {
    // console.log(book);
    event.preventDefault();
    let link = ['employee/update', employee.id];
    this.router.navigate(link);
  }

  detailEmployee(Event: MouseEvent, employee: Employees) {
    console.log(employee);
    event.preventDefault();
    let link = ['employee/detail', employee.id];
    this.router.navigate(link);
  }

  deleteEmployee(employee: Employees) {
    if(confirm("Apakah Anda yakin akan menghapus karyawan " + employee.name + "?")) {
      this.httpCall.deleteEmployee(this.Token.get(), employee.id).subscribe(
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

    // this.books = data.data
    this.getEmployees(1);
  }
  
  loadPage(page: number) {
    if (page !== this.previousPage) {
      this.previousPage = page;
      this.getEmployees(page);
    }
  }
}
