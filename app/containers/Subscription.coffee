import { Component } from "@angular/core"

Component(
    selector: "#subscription"
    template: """
        <div class="page subscribe">
            <div class="container">
                <header (onLogin)="onLogin()"></header>

                <h1>Our offers</h1>
                <p>This is a subscription page, without any paywall, where you list all your subscription offers.</p>
                <ul>
                    <li><a routerLink="/">Home</a></li>
                    <li><a routerLink="/premium">Premium post</a></li>
                    <li><a routerLink="/free">Free post</a></li>
                </ul>
            </div>
        </div>
    """
)(
    class Subscription

        ngOnInit: ->
            @sendHit()

        onLogin: ->
            @sendHit()

        sendHit: ->
            poool "config", "user_is_premium", window.test_user?.premium ? false
            poool "send", "page-view", "subscription"
)

export { Subscription }
