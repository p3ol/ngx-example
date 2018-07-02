# Angular
import { NgModule, ErrorHandler } from "@angular/core"
import { BrowserModule }  from "@angular/platform-browser"
import { RouterModule, Routes } from "@angular/router"

# App
import { App } from "../components/App"
import { Header } from "../components/Header"

import { Home } from "./Home"
import { Free } from "./Free"
import { Premium } from "./Premium"
import { Subscription } from "./Subscription"

NgModule(
    imports: [
        BrowserModule
        RouterModule.forRoot [
            { path: "", component: Home }
            { path: "free", component: Free }
            { path: "premium", component: Premium }
            { path: "subscribe", component: Subscription }
        ]
    ]
    declarations: [
        App
        Header

        Home
        Free
        Premium
        Subscription
    ]
    bootstrap: [
        App
    ]
)(
    class AppModule
)

export { AppModule }
