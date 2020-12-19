import { BaseDatosService } from './../../servicios/base-datos.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-listaespera',
  templateUrl: './listaespera.component.html',
  styleUrls: ['./listaespera.component.css']
})
export class ListaesperaComponent implements OnInit {

  solicitudes: any;
  lista;
  
  constructor(private bd: BaseDatosService) { 
    
  }

  ngOnInit(): void {
    this.bd.actualizarLEspera().subscribe(res =>{
      
    })
    this.bd.getListaEspera().subscribe(res =>{
      this.lista = res;
     })
  }
}
