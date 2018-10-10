import { Http, Headers, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';
import 'rxjs/add/operator/map'
import { AlertController } from 'ionic-angular';

let apiUrl = 'https://redoperativaseguridadaplicada.herokuapp.com/';

/*
  Generated class for the RegServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class RegServiceProvider {

  constructor(public http: Http, public alertCtl: AlertController) {
    console.log('Hello RegServiceProvider Provider');
  }

  postData(credentials, type){

    let headers = new Headers(
      {
        'Content-Type'  : 'application/json',
        'Authorization' : 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1Mzc4Mzg2MDMsInN1YiI6Mn0.s6__9dnDvMIiAXu3zXBz6JUaDePQkJzgvAqNE5z0agE'
      });

    let options = new RequestOptions({ headers: headers });
    
    return new Promise((resolve, reject) =>{
        this.http.post(apiUrl+type, JSON.stringify(credentials), options)
        .map(res => resolve(res.json()))
        .subscribe(
          data => console.log('Ok data: '+ data),
          err => {
                    console.log('Error al registrar usuario: '+ err);
                    let alert = this.alertCtl.create({
                    title: 'Error al registrar usuario',
                    subTitle: 'No se pudo registrar el usuario, verifique los datos diligenciados o intente mas tarde.',
                    buttons: ['Dismiss']
                    });
                    alert.present();
                 }         
        );
      });
  }

}
