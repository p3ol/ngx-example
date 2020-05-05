import { Component } from '@angular/core';


@Component({
  selector: '#home',
  template: `
    <div class="page home">
      <div class="container">
        <header (onLogin)="onLogin()"></header>
        <h1>Home</h1>
        <p>This is a normal page, without any paywall, with premium & free posts</p>
        <ul>
          <li><a routerLink="/premium">Premium post</a></li>
          <li><a routerLink="/free">Free post</a></li>
          <li><a routerLink="/subscribe">Subscribe now!</a></li>
        </ul>
      </div>
    </div>
  `,
})
export default class Home {
  ngOnInit() {
    this.sendHit();
  }

  onLogin() {
    this.sendHit();
  }

  sendHit() {
    poool('config', 'user_is_premium', window.testUser?.premium || false);
    poool('send', 'page-view', 'page');
  }
}
