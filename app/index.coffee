# Deps
import "zone.js"

# Angular
import { platformBrowserDynamic } from "@angular/platform-browser-dynamic"

# App
import { AppModule } from "./containers/App.coffee"

# Styling
import "bootstrap/dist/css/bootstrap.min.css"

platformBrowserDynamic().bootstrapModule AppModule
