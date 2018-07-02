import { Component } from "@angular/core"

Component(
    selector: "#app"
    template: """
        <div class="app-container">
            <router-outlet></router-outlet>
        </div>
    """
)(
    class App
)

export { App }
