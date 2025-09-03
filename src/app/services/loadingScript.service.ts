import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoadingScriptService {
  private loadedSubject = new BehaviorSubject<boolean>(false)
  loaded$ = this.loadedSubject.asObservable();
  constructor() {
    new Promise((resolve, reject) => {
      let script: HTMLScriptElement = document.createElement('script');
      script.type = 'text/javascript';
      script.src = "https://assets.poool.fr/access.min.js"
      script.onload = () => {
        resolve({ script: name, loaded: true, status: 'Loaded' });
        this.loadedSubject.next(true);
      };
      script.onerror = (error: any) => resolve({ script: name, loaded: false, status: 'Loaded' });
      document.getElementsByTagName('head')[0].appendChild(script);
    });
  }
}
