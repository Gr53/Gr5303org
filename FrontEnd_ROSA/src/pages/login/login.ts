import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, MenuController } from 'ionic-angular';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { AlertController } from 'ionic-angular';
import { HelloIonicPage } from '../hello-ionic/hello-ionic';
import {Storage } from '@ionic/storage';


/**
 * Generated class for the LoginPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage {
  
  respouceData: any;
  userData = { auth: {"username":"","password":""} };

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              public menu: MenuController, 
              public authServiceProvider: AuthServiceProvider,
              public alertCtl: AlertController,
              private storage: Storage) {
  }


  ionViewDidLoad() {
    console.log('ionViewDidLoad LoginPage');
  }

  ionViewWillEnter () { 
    this.menu.enable (false); 
  } 


  login(){

    if(this.userData.auth.username==="" || this.userData.auth.password==="")
    {
      console.log("username o password vacío")
      let alert = this.alertCtl.create({
        title: 'Advertencia',
        subTitle: 'No se proporcionaron las credenciales necesarias.',
        buttons: ['Dismiss']
      });
      alert.present();
    }
    else
    {
      this.authServiceProvider.postData(this.userData, "user_token").then((result) => {
        this.respouceData = result;
        this.storage.set('jwt2', this.respouceData["jwt"]);
        localStorage.setItem('jwt', this.respouceData["jwt"]);
        console.log('Ok Login');
        this.navCtrl.setRoot(HelloIonicPage); 
      }, (err) => {
        console.log("error ___________________")
        let alert = this.alertCtl.create({
          title: 'Iniciar Sesión',
          subTitle: 'No se pudo iniciar sesión, por favor intente mas tarde.',
          buttons: ['Dismiss']
        });
        alert.present();
      });
    }
  }


}
