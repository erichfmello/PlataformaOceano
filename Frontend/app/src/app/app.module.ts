import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { HeaderComponent } from './components/header/header.component';
import { FooterComponent } from './components/footer/footer.component';
import { HomeBusiness } from './business/home-business.service';
import { HomeService } from './services/home-service.service';
import { HttpClientModule } from '@angular/common/http';

const appRoutes: Routes = [
  { path: "", component: HomeComponent, pathMatch: 'full' },
]

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    HeaderComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    RouterModule.forRoot(appRoutes, { useHash: true, onSameUrlNavigation: 'reload', enableTracing: false, relativeLinkResolution: 'legacy' }),
  ],
  providers: [
    // Business
    HomeBusiness,

    // Services
    HomeService,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
