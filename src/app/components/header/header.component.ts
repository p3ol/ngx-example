import { Component } from '@angular/core';
import { LoginService } from '../../services/login.service';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-header',
  imports: [CommonModule, RouterLink],
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent {
  login () {
    this.loginService.login();
  }

  logout () {
    this.loginService.logout();
  }

  isLoggedIn () {
    return this.loginService.getIsLoggedIn();
  }

  constructor(public loginService: LoginService) {}
}
