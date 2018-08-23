import { Component } from '@angular/core';
import { NavController, MenuController } from 'ionic-angular';

@Component({
  selector: 'page-hello-ionic',
  templateUrl: 'hello-ionic.html'
})
export class HelloIonicPage {
  
  public userDetails: any;

  constructor(public menu: MenuController) {
    const data= JSON.parse(localStorage.getItem('jwt'));
    console.log(data);
    this.userDetails = data.user;
    console.log(this.userDetails);

  }

  ionViewWillEnter () { 
    this.menu.enable (true); 
  }

}
