/// <reference types="poool-access" />
import { Injectable } from '@angular/core';
import { LoadingScriptService } from './loadingScript.service';
import { Poool } from 'poool-access';
import { BehaviorSubject } from 'rxjs';
import { LoginService } from './login.service';

@Injectable({
  providedIn: 'root'
})
export class PooolService {
  private access = new BehaviorSubject<Poool.AccessFactory | null>(null);
  access$ = this.access.asObservable();
  constructor(
    private loadingScriptService: LoadingScriptService,
    private loginService: LoginService
  ) {
    this.loadingScriptService.loaded$.subscribe(loaded => {
      this.loginService.isLoggedIn$.subscribe(isLoggedIn => {

        if (loaded) {
          if (this.access) {
            this.access.value?.destroy()
          }
          this.access.next(
            Access
              .init('V9EAO-996I1-CIVYF-LPGKS')
              .config(
                {
                user_is_premium: true,
                cookies_domain: 'localhost',
                cookies_enabled: true,
                subscription_url: '/subscription',
                ...isLoggedIn ? { force_widget: 'disabled' } : {}
              }
            )
          );
        }
      });
    });
  }
}