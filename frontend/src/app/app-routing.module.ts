import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { SignupComponent } from './components/signup/signup.component';
import { ProfileComponent } from './components/profile/profile.component';
import { HomeComponent } from './components/home/home.component';
import { AfterLoginService } from './Services/after-login.service';
import { BeforeLoginService } from './Services/before-login.service';
import { BooksIndexComponent } from './components/books/books-index/books-index.component';
import { BooksAddComponent } from './components/books/books-add/books-add.component';
import { BooksUpdateComponent } from './components/books/books-update/books-update.component';
import { BooksDetailComponent } from './components/books/books-detail/books-detail.component';


const routes: Routes = [
  {
    path: 'home', 
    component: HomeComponent,
    canActivate: [AfterLoginService]
  },
  {
    path: 'login', 
    component: LoginComponent,
    canActivate: [BeforeLoginService]
  },
  {
    path: 'signup', 
    component: SignupComponent,
    canActivate: [BeforeLoginService]
  },
  {
    path: 'profile', 
    component: ProfileComponent,
    canActivate: [AfterLoginService]
  },
  {
    path: 'book', 
    component: BooksIndexComponent,
    canActivate: [AfterLoginService]
  },
  { path: 'book/add', canActivate: [ AfterLoginService ], component: BooksAddComponent },
  { path: 'book/update/:id', canActivate: [ AfterLoginService ], component: BooksUpdateComponent },
  { path: 'book/detail/:id', canActivate: [ AfterLoginService ], component: BooksDetailComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
