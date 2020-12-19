import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../servicios/base-datos.service';

@Component({
  selector: 'app-listainfantes',
  templateUrl: './listainfantes.component.html',
  styleUrls: ['./listainfantes.component.css']
})
export class ListainfantesComponent implements OnInit {

  infantes: any;
 
  constructor(private base: BaseDatosService) { 

  }

  ngOnInit(): void {
    this.base.getInfantes().subscribe((res)=>{
      this.infantes = res;
      console.log(res);
      console.log("LLgue al finin")
    })

  }

}
