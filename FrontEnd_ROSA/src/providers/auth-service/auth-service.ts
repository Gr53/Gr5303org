/*import { HttpClient } from '@angular/common/http';*/
import { Http, Headers, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';

//let apiUrl = 'http://localhost:3000/';
let apiUrl = 'https://redoperativaseguridadaplicada.herokuapp.com/';

/*
  Generated class for the AuthServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AuthServiceProvider {
 
  constructor(public http: Http) {
    console.log('Hello AuthServiceProvider Provider');
  }

  postData(credentials, type){

    let headers = new Headers(
      {
        'Content-Type' : 'application/json'
      });

    let options = new RequestOptions({ headers: headers });
    
    return new Promise((resolve, reject) =>{
        this.http.post(apiUrl+type, JSON.stringify(credentials), options).subscribe(res =>{
          console.log("entroooooooooo");
          if(res.json().jwt){
            resolve(res.json());
            console.log("1");
          }else{
            reject("no se encontraron credenciales")
            console.log("21321");
          }

          
        }), (err) => {
          console.log("error");
          reject(err);
        }
    });
  }


}
