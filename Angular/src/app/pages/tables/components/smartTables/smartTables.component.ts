import { Component } from '@angular/core';
import { Http } from '@angular/http';

import { SmartTablesService } from './smartTables.service';
import { LocalDataSource } from 'ng2-smart-table';
import 'rxjs/add/operator/map';

@Component({
  selector: 'smart-tables',
  templateUrl: './smartTables.html',
  styleUrls: ['./smartTables.scss']
})
export class SmartTables {
 data: any;
  
source: LocalDataSource;
   settings = {
     actions: false,
    columns: {
      id: {
        title: 'ID',
        editable: false,
        addable: false,
      },

      Sensor: {
        title: 'Tipo',
      },
      Value: {
        title: 'Value',
      },
      Latitude: {
        title: 'Latitude',
      },
      Longitude: {
        title: 'Longitude',
      },
      Date: {
        title: 'Data',
      },
      Time: {
        title: 'Time',
      },
    },
  };

  
   constructor(private http2: Http) {
      this.source = new LocalDataSource();
    this.data = http2.get('http://localhost:3000/posts').map(response => response.json());
    


    alert(this.source.count());
    
    //this.source.load(this.data);s
    //this.service.getData().then((data) => {
      //
    //});
  }

}