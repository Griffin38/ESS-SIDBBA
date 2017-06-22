import {Component, ElementRef} from '@angular/core';
import * as GoogleMapsLoader from 'google-maps';

@Component({
  selector: 'google-maps',
  styleUrls: ['./googleMaps.scss'],
  templateUrl: './googleMaps.html',
})
export class GoogleMaps {

  constructor(private _elementRef:ElementRef) {
  }

  ngAfterViewInit() {
    let el = this._elementRef.nativeElement.querySelector('.google-maps');

    // TODO: do not load this each time as we already have the library after first attempt
    GoogleMapsLoader.load((google) => {

      /** LATLONG PRAIAS */
      var mindelo = {lat: 41.308184, lng: -8.739452};
      var vdc = {lat: 41.3564954, lng: -8.7554481};
      var matosinhos = {lat: 41.1763988, lng: -8.6927595};
      var leca = {lat: 41.1887021, lng: -8.7059305};
      var povoa = {lat: 41.3853969, lng: -8.7729137};
      var aver = {lat: 41.4060004, lng: -8.7806763};
      var apulia = {lat: 41.4823578, lng: -8.7773786};
      var fao = {lat: 41.5057439, lng: -8.7878409};

      var map = new google.maps.Map(el, {
        center: new google.maps.LatLng(41.3375143, -8.835936),
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });
      
      /** PRAIA 1 - MINDELO */
        var infowindow_mindelo = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Mindelo Sul</h1>',
        });

      var marker_mindelo = new google.maps.Marker({
          position: mindelo,
          title: 'Praia de Mindelo Sul',
          map: map
        });

        marker_mindelo.addListener('click', function() {
          infowindow_mindelo.open(map, marker_mindelo);
        });

        /** PRAIA 2 - VILA DO CONDE */
        var infowindow_vdc = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Vila do Conde</h1>',
        });

      var marker_vdc = new google.maps.Marker({
          position: vdc,
          title: 'Vila do Conde',
          map: map
        });

        marker_vdc.addListener('click', function() {
          infowindow_vdc.open(map, marker_vdc);
        });

        /** PRAIA 3 - MATOSINHOS */
        var infowindow_matosinhos = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Matosinhos</h1>',
        });

      var marker_matosinhos = new google.maps.Marker({
          position: matosinhos,
          title: 'Matosinhos',
          map: map
        });

        marker_matosinhos.addListener('click', function() {
          infowindow_matosinhos.open(map, marker_matosinhos);
        });


        /** PRAIA 4 - LEÇA */
        var infowindow_leca = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Leça da Palmeira</h1>',
        });

      var marker_leca = new google.maps.Marker({
          position: leca,
          title: 'Leça da Palmeira',
          map: map
        });

        marker_leca.addListener('click', function() {
          infowindow_leca.open(map, marker_leca);
        });


        /** PRAIA 5 - PÓVOA */
        var infowindow_povoa = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Póvoa de Varzim</h1>',
        });

      var marker_povoa = new google.maps.Marker({
          position: povoa,
          title: 'Póvoa de Varzim',
          map: map
        });

        marker_povoa.addListener('click', function() {
          infowindow_povoa.open(map, marker_povoa);
        });

         /** PRAIA 6 - AVER O MAR */
        var infowindow_aver = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Aver-o-Mar</h1>',
        });

      var marker_aver = new google.maps.Marker({
          position: aver,
          title: 'Aver-o-Mar',
          map: map
        });

        marker_aver.addListener('click', function() {
          infowindow_aver.open(map, marker_aver);
        });

         /** PRAIA 7 - APÚLIA */
        var infowindow_apulia = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Praia da Apúlia</h1>',
        });

      var marker_apulia = new google.maps.Marker({
          position: apulia,
          title: 'Praia da Apúlia',
          map: map
        });

        marker_apulia.addListener('click', function() {
          infowindow_apulia.open(map, marker_apulia);
        });

         /** PRAIA 8 - FÃO */
        var infowindow_fao = new google.maps.InfoWindow({
          content: '<h1 style="color: #000;">Praia de Fão</h1>',
        });

      var marker_fao = new google.maps.Marker({
          position: fao,
          title: 'Praia de Fão',
          map: map
        });

        marker_fao.addListener('click', function() {
          infowindow_fao.open(map, marker_fao);
        });



    });
  }
  
}