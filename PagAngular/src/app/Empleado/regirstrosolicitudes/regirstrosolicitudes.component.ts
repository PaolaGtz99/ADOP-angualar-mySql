import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';
import { MensajesService } from '../../servicios/mensajes.service';
@Component({
  selector: 'app-regirstrosolicitudes',
  templateUrl: './regirstrosolicitudes.component.html',
  styleUrls: ['./regirstrosolicitudes.component.css']
})
export class RegirstrosolicitudesComponent implements OnInit {
  solicitudes: any;
  infantes: any;
  constructor(private base: BaseDatosService,private router: Router,private _snackBar: MatSnackBar,private msj: MensajesService) { 

  }
  ActualizarSoli(valor,valor2,soli){
      let datos = {};
      datos["estado"] = valor;
      datos["id"] = soli;
      datos["infante"] = valor2;
      this.base.actualizaS(datos).subscribe((res)=>{
        this._snackBar.open("Se actualizo correctamente la solicitud", "Actualización correcta", {
          duration: 2000,
        });
          this.router.navigate(['/menuempleado']);
      }, err =>{
        console.log(err)
        this.msj.mensaje('error', 'ERROR', 'El infante ya esta en proceso');
      })
  }
  ngOnInit(): void {
    this.base.getInfantes().subscribe((res)=>{
      this.infantes = res;
    })
   this.base.ex().subscribe((res)=>{
     this.solicitudes = res;
   })
    
  }

}
