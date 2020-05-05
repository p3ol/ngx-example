import { NgModule } from '@angular/core';
import { BrowserModule }  from '@angular/platform-browser';
import { RouterModule } from '@angular/router';

import App from '../components/App';
import Header from '../components/Header';
import Home from '../components/Home';
import Free from '../components/Free';
import Premium from '../components/Premium';
import Subscription from '../components/Subscription';

@NgModule({
  imports: [
    BrowserModule,
    RouterModule.forRoot([
      { path: '', component: Home },
      { path: 'free', component: Free },
      { path: 'premium', component: Premium },
      { path: 'subscribe', component: Subscription },
    ]),
  ],
  declarations: [
    App,
    Header,
    Home,
    Free,
    Premium,
    Subscription,
  ],
  bootstrap: [
    App,
  ],
})
export default class AppModule {}
