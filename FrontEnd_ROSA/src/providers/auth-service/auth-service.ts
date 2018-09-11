/*import { HttpClient } from '@angular/common/http';*/
import { Http, Headers, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';
import 'rxjs/add/operator/map'
import { AlertController } from 'ionic-angular';

//let apiUrl = 'http://localhost:3000/';
let apiUrl = 'https://redoperativaseguridadaplicada.herokuapp.com/';

/*
  Generated class for the AuthServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AuthServiceProvider {
 
  constructor(public http: Http, public alertCtl: AlertController) {
    console.log('Hello AuthServiceProvider Provider');
  }

  postData(credentials, type){

    let headers = new Headers(
      {
        'Content-Type' : 'application/json'
      });

    let options = new RequestOptions({ headers: headers });
    
    return new Promise((resolve, reject) =>{
        this.http.post(apiUrl+type, JSON.stringify(credentials), options)
        .map(res => resolve(res.json()))
        .subscribe(
          data => console.log('Ok data: '+ data),
          err => {
                    console.log('Error al inicial sesion: '+ err);
                    let alert = this.alertCtl.create({
                    title: 'Error al Iniciar Sesión',
                    subTitle: 'No se pudo iniciar sesión, verifique sus credenciales o intente mas tarde.',
                    buttons: ['Dismiss']
                    });
                    alert.present();
                 }         
        );
      });
  }


}
