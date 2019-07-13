import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { LoginComponent } from './components/login/login.component';
import { SignupComponent } from './components/signup/signup.component';
import { ProfileComponent } from './components/profile/profile.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { HttpCallService } from './Services/http-call.service';
import { TokenService } from './Services/token.service';
import { HomeComponent } from './components/home/home.component';
import { AuthService } from './Services/auth.service';
import { AfterLoginService } from './Services/after-login.service';
import { BeforeLoginService } from './Services/before-login.service';
import { BooksComponent } from './components/books/books.component';
import { BooksIndexComponent } from './components/books/books-index/books-index.component';
import { BooksAddComponent } from './components/books/books-add/books-add.component';
import { BooksUpdateComponent } from './components/books/books-update/books-update.component';
import { BooksServiceService } from './Services/books-service.service';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    LoginComponent,
    SignupComponent,
    ProfileComponent,
    HomeComponent,
    BooksComponent,
    BooksIndexComponent,
    BooksAddComponent,
    BooksUpdateComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [HttpCallService, TokenService, AuthService, AfterLoginService, BeforeLoginService, BooksServiceService],
  bootstrap: [AppComponent]
})
export class AppModule { }
