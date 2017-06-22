import {Component} from '@angular/core';

@Component({
  selector: 'checkbox-inputs',
  templateUrl: './checkboxInputs.html',
})
export class CheckboxInputs {
  public checkboxModel = [{
    name: 'Sensor 1',
    checked: false,
    class: 'col-md-3'
  }, {
    name: 'Sensor 2',
    checked: false,
    class: 'col-md-3'
  }, {
    name: 'Sensor 3',
    checked: false,
    class: 'col-md-3'
  },{
    name: 'Sensor 4',
    checked: false,
    class: 'col-md-3'
  },{
    name: 'Sensor 5',
    checked: false,
    class: 'col-md-3'
  },{
    name: 'Sensor 6',
    checked: false,
    class: 'col-md-3'
  },{
    name: 'Sensor 7',
    checked: false,
    class: 'col-md-3'
  },{
    name: 'Sensor 8',
    checked: false,
    class: 'col-md-3'
  },];

  isDisabled: boolean = false;

  public checkboxPropertiesMapping = {
    model: 'checked',
    value: 'name',
    label: 'name',
    baCheckboxClass: 'class'
  };

  constructor() {
  }

}
