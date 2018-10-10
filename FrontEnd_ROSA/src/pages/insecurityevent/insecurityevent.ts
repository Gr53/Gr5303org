import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { isCheckedProperty } from 'ionic-angular/umd/util/util';

/**
 * Generated class for the InsecurityeventPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-insecurityevent',
  templateUrl: 'insecurityevent.html',
})
export class InsecurityeventPage {

  FormInsecurityEvent: FormGroup;
  public userDetails: any;
  public myDate: String = new Date().toISOString();

  constructor(public navCtrl: NavController,
              public navParams: NavParams,
              public formBuilder: FormBuilder) 
  {

    const v_username= localStorage.getItem("v_username");
    this.userDetails= v_username;
    console.log("el usuario localStorage es "+ v_username);  
    
    this.FormInsecurityEvent=this.createFormInsecurityEvent();
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad InsecurityeventPage');
  }

  saveData()
  {
    console.log(this.FormInsecurityEvent.value);
  }

  private createFormInsecurityEvent()
  {
    return this.formBuilder.group({
      username: ['', Validators.required],
      location: ['', Validators.required],
      date: ['', Validators.required],
      incidenttype: ['', Validators.required],
      pdeath: [''],
      nambulance: [''],
      npolice: [''],
      priority: ['', Validators.required],
      risk: ['', Validators.required],
      description: ['', Validators.required],
      image: ['']
    });
  }

}
