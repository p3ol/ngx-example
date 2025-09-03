import { Component, OnDestroy } from '@angular/core';
import { PooolService } from '../services/poool.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-article',
  templateUrl: './article.component.html',
})
export class ArticleComponent implements OnDestroy {
  private pooolServiceSubscription: Subscription;

  constructor(private pooolService_: PooolService) {
    this.pooolServiceSubscription = pooolService_.access$.subscribe(access => {
      if (access) {
        access.createPaywall({
          target: '#paywall',
          content: '.content',
          percent: 80,
          pageType: 'premium'
        });
      }
    })
  }

  ngOnDestroy() {
    this.pooolServiceSubscription.unsubscribe();
  }
}
