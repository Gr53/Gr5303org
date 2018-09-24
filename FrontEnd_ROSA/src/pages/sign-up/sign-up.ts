import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, MenuController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';
import { LoginPage } from '../login/login'
import { RegServiceProvider } from '../../providers/reg-service/reg-service';


/**
 * Generated class for the SignUpPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-sign-up',
  templateUrl: 'sign-up.html',
})
export class SignUpPage {

  respouceData : any;
  userData ={
              "names":"",
              "surnames":"",
              "identification_types_id":"",
              "identificationnumber":"" ,
              "cellphonenumber":"",
              "username":"",
              "password":"",
              "password_confirmation":"",
              "support_nets_id":"",
              "active":"1",
              "locked":"0"
            };


  constructor(public navCtrl: NavController,
              public navParams: NavParams, 
              public menu: MenuController, 
              public RegServiceProvider: RegServiceProvider, 
              public alertCtl: AlertController) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad SignUpPage');
  }

  ionViewWillEnter () { 
    this.menu.enable (false); 
  }

  SignUp(){

    var nombres=this.userData.names;
    var apellidos=this.userData.surnames;
    var tipoid=this.userData.identification_types_id;
    var nrotipo=this.userData.identificationnumber;
    var nrocel=this.userData.cellphonenumber;
    var username=this.userData.username;
    var password=this.userData.password;
    var password2=this.userData.password_confirmation;
    var nrored=this.userData.support_nets_id;

    if(nombres==="" || apellidos==="" || tipoid==="" || nrotipo==="" || nrocel==="" || username==="" || password==="" || password2==="" || nrored==="")
    {
      console.log("debe diligenciar toda la información para proceder a finalizar el registro")
      let alert = this.alertCtl.create({
        title: 'Advertencia',
        subTitle: 'Debe diligenciar toda la información para proceder a finalizar el registro.',
        buttons: ['Aceptar']
      });
      alert.present();
    }
    else
    {
      this.RegServiceProvider.postData(this.userData, "users").then((result) => {
        this.respouceData = result;
        console.log("Usuario creado satisfactoriamente");
        console.log(this.respouceData);
        localStorage.setItem('user', JSON.stringify(this.respouceData));
        this.navCtrl.push(LoginPage);
      }, (err) => {
        let alert = this.alertCtl.create({
          title: 'Registro',
          subTitle: 'NO se pudo registrar el usuario, por favor intente mas tarde.',
          buttons: ['Dismiss']
        });
        alert.present();
      });
    }
  }

}
