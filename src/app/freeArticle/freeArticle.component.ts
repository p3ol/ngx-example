import { Component, OnDestroy } from '@angular/core';
import { PooolService } from '../services/poool.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-freeArticle',
  imports: [],
  templateUrl: './freeArticle.component.html',
})
export class FreeArticleComponent implements OnDestroy {
  private pooolServiceSubscription: Subscription;

  constructor(private pooolService_: PooolService) {
    this.pooolServiceSubscription = pooolService_.access$.subscribe(access => {
      if (access) {
        access.createPaywall({
          target: '#paywall',
          content: '.content',
          percent: 80,
          pageType: 'free'
        });
      }
    });
  }

  ngOnDestroy() {
    this.pooolServiceSubscription.unsubscribe();
  }
}
