import { Component } from '@angular/core';
//import { NavController, MenuController } from 'ionic-angular';
import { MenuController } from 'ionic-angular';
import {Storage } from '@ionic/storage';

@Component({
  selector: 'page-hello-ionic',
  templateUrl: 'hello-ionic.html'
})
export class HelloIonicPage {
  
  public userDetails: any;

  constructor(public menu: MenuController, private storage: Storage) {
    const data1= localStorage.getItem("jwt");
    console.log("1. el token localStorage es "+ data1);
    const data2= storage.get("jwt2").then((val) => { val[0] });
    console.log("2. el token storage es "+ data2);
    this.userDetails = data1;
  }

  ionViewWillEnter () { 
    this.menu.enable (true); 
  }

}
