import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ArticleComponent } from './article/article.component';
import { FreeArticleComponent } from './freeArticle/freeArticle.component';
import { SubscriptionComponent } from './subscription/subscription.component';

export const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'article', component: ArticleComponent },
  { path: 'free-article', component: FreeArticleComponent },
  { path: 'subscription', component: SubscriptionComponent },
  { path: '', redirectTo: '/home', pathMatch: 'full' },
];
