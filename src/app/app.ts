import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoadingScriptService } from './services/loadingScript.service';
import { HeaderComponent } from './components/header/header.component';
import { LoginService } from './services/login.service';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, HeaderComponent],
  template: `
  <div>
    <app-header></app-header>
  <h1>Welcome to Mousteyton post</h1>  
    <router-outlet />
  </div>
  `,
  providers: [LoadingScriptService],
  styles: [],
})

export class App {
  protected readonly title = signal('ngx-example');
  constructor(private loadingScriptService: LoadingScriptService, private loginService: LoginService) {
  }
}
