import 'core-js/proposals/reflect-metadata';
import 'zone.js/dist/zone';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import AppModule from './modules/App';

platformBrowserDynamic().bootstrapModule(AppModule);
