import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../servicios/base-datos.service';
@Component({
  selector: 'app-solicitudes',
  templateUrl: './solicitudes.component.html',
  styleUrls: ['./solicitudes.component.css']
})
export class SolicitudesComponent implements OnInit {

  solicitudes: any;
  soliNom: any;
  mostrarSoli;
  mensaje = "";
  mostrar = false;
 
  constructor(private base: BaseDatosService) { 

  }

  ngOnInit(): void {
    this.base.getSolicitudes().subscribe((res)=>{
      this.solicitudes = res;
      console.log(res);
    })

  }
  buscar(nom){
    let nom2;
    this.mostrarSoli = "";
    this.mostrar = false;
    this.base.getSoliNom().subscribe((res)=>{
      this.soliNom = res
      this.soliNom.forEach(item => {
        nom2 = item.nom_usuario + " " + item.ape_puser;
 
        if(nom2 == nom){
          //coincide
          this.mostrarSoli = item;
          
        }
      });
      if(this.mostrarSoli == ""){
       this.mensaje = "No hay resultados"
       this.mostrar = false;
    }
    else {this.mostrar = true;
      this.mensaje = ""}
    })
    
  }

}
