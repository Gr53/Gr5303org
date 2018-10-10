import { Component, ViewChild } from '@angular/core';
import { Platform, MenuController, Nav, AlertController } from 'ionic-angular';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { OneSignal } from '@ionic-native/onesignal';

import { HelloIonicPage } from '../pages/hello-ionic/hello-ionic';
import { WelcomePage } from '../pages/welcome/welcome';
import { LoginPage } from '../pages/login/login';
import { ConfigurationPage } from '../pages/configuration/configuration';
import { InsecurityeventPage } from '../pages/insecurityevent/insecurityevent';
import { MapPage } from '../pages/map/map';


@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  // make HelloIonicPage the root (or first) page
  rootPage = WelcomePage;
  pages: Array<{title: string, component: any}>;

  constructor(
    public platform: Platform,
    public menu: MenuController,
    public statusBar: StatusBar,
    public splashScreen: SplashScreen,
    private oneSignal: OneSignal,
    public alertCtrl: AlertController
  ) {
    this.initializeApp();
    // set our app's pages
    this.pages = [
      { title: 'Menú principal', component: HelloIonicPage },
      { title: 'Configuración', component: ConfigurationPage },
      { title: 'Registrar Evento de Inseguridad', component: InsecurityeventPage },
      { title: 'Navegar', component: MapPage },
      { title: 'Cerrar Sesión', component: LoginPage }
    ];
  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.styleDefault();
      this.splashScreen.hide();
      /*
      //Configuracion para OneSignal
      this.oneSignal.startInit('9ac8a213-9f95-4ee7-818e-0f19ceabb2ea', '897994546281');

      this.oneSignal.inFocusDisplaying(this.oneSignal.OSInFocusDisplayOption.InAppAlert);

      this.oneSignal.handleNotificationReceived().subscribe(() => {
      // do something when notification is received
      });

      this.oneSignal.handleNotificationOpened().subscribe(() => {
        // do something when a notification is opened
      });

      this.oneSignal.endInit();*/

      // OneSignal Code start:
      // Enable to debug issues:
      // window["plugins"].OneSignal.setLogLevel({logLevel: 4, visualLevel: 4});

      var notificationOpenedCallback = function(jsonData) {
        console.log('notificationOpenedCallback: ' + JSON.stringify(jsonData));
        const alert = this.alertCtrl.create({
          title: jsonData.title,
          subTitle: jsonData.body,
          buttons: ['OK']
        });
        alert.present();
      };

      window["plugins"].OneSignal
        .startInit("9ac8a213-9f95-4ee7-818e-0f19ceabb2ea", "897994546281")
        .handleNotificationOpened(notificationOpenedCallback)
        .endInit();  
      });
  }

  openPage(page) {
    // close the menu when clicking a link from the menu
    this.menu.close();
    // navigate to the new page if it is not the current page
    this.nav.setRoot(page.component);
  }
}
