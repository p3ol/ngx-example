import { Component, EventEmitter } from "@angular/core"

Component(
    selector: "header"
    template: """
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
    """
    outputs: [
        "onLogin"
    ]
)(
    class Header

        connecting: false

        constructor: ->
            @onLogin = new EventEmitter()

        ngOnInit: ->
            poool "event", "onLoginClick", @onLoginClick

        onLoginClick: (e) =>
            @login()
            e.originalEvent?.preventDefault?()

        isLogged: ->
            window.test_user?.logged is true

        login: ->
            if @connecting is true then return

            @connecting = true

            @_loginTimeout = setTimeout =>
                window.test_user =
                    logged: true
                    premium: true

                @connecting = false

                @onLogin.emit()
            , 2000

        ngOnDestroy: ->
            poool "unevent", "onLoginClick", @onLoginClick
            clearTimeout @_loginTimeout

)

export { Header }
