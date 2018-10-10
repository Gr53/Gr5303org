import { Component } from '@angular/core';
import { NavController, MenuController } from 'ionic-angular';
import {Storage } from '@ionic/storage';

//pages
import { ConfigurationPage } from '../configuration/configuration';
import { InsecurityeventPage } from '../insecurityevent/insecurityevent';
import { MapPage } from '../map/map';

@Component({
  selector: 'page-hello-ionic',
  templateUrl: 'hello-ionic.html'
})
export class HelloIonicPage {
  
  public userDetails: any;

  constructor(public menu: MenuController, private storage: Storage, public navCtrl: NavController) {
    const data1= localStorage.getItem("jwt");
    console.log("1. el token localStorage es "+ data1);
    //const data2= storage.get("jwt2").then((val) => { val[0] });
    //console.log("2. el token storage es "+ data2);
    this.userDetails = data1;
  }

  ionViewWillEnter () { 
    this.menu.enable (true); 
  }

  menuClic(opcion)
  {
    switch(opcion)
    {
      case 1:
        //this.navCtrl.push(ConfigurationPage);
        console.log('AlertPage');
        break;
      case 2:
        this.navCtrl.push(ConfigurationPage);
        console.log('ConfigurationPage');
        break;
      case 3:
        this.navCtrl.push(InsecurityeventPage);
        console.log('InsecurityeventPage');
        break;
      case 4:
        this.navCtrl.push(MapPage);
        console.log('MapPage');
        break;
      default:
    }
  }

}
