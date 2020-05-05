import { Component, EventEmitter } from '@angular/core';

@Component({
  selector: 'header',
  template: `
    <div class="mb-5">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a routerLink="/" class="navbar-brand">Newspaper</a>
        <div class="collapse navbar-collapse">
          <div class="navbar-nav">
            <a routerLink="/" class="nav-item nav-link">Home</a>
            <a routerLink="/premium" class="nav-item nav-link">Premium post</a>
            <a routerLink="/free" class="nav-item nav-link">Free Post</a>
            <a routerLink="/subscribe" class="nav-item nav-link">Subscribe now!</a>
          </div>
        </div>

        <span class="navbar-text">
          <span *ngIf="connecting">Connecting...</span>
          <span *ngIf="isLogged()">Signed as: <strong>Rick Sanchez</strong></span>
          <a href="javascript:;" *ngIf="!connecting && !isLogged()" (click)="login()">Sign in</a>
        </span>
      </nav>
    </div>
  `,
  outputs: [
    'onLogin',
  ],
})
export default class Header {
  constructor() {
    this.onLogin = new EventEmitter();
  }

  ngOnInit() {
    poool('event', 'onLoginClick', this.onLoginClick.bind(this));
  }

  onLoginClick(e) {
    this.login();
    e.originalEvent?.preventDefault?.();
  }

  isLogged() {
    return window.testUser?.logged;
  }

  async login() {
    if (this.connecting) {
      return;
    }

    this.connecting = true;
    await new Promise(resolve => setTimeout(resolve, 2000));

    window.testUser = { logged: true, premium: true };
    this.connecting = false;

    this.onLogin.emit();
  }

  ngOnDestroy() {
    poool('unevent', 'onLoginClick', this.onLoginClick.bind(this));
  }
}
