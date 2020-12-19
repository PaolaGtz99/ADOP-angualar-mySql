import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';

@Component({
  selector: 'app-modificarreporte',
  templateUrl: './modificarreporte.component.html',
  styleUrls: ['./modificarreporte.component.css']
})
export class ModificarreporteComponent implements OnInit {

  reportes: any;
  editable: boolean = false;
  editdescripcion ="";
  editfecha;
  idCambiar;
  constructor(private router: Router, private base: BaseDatosService,private _snackBar: MatSnackBar) { 

  }
 
   eliminar(id):void{
    this.base.bajaReporte(id).subscribe((res)=>{
      this._snackBar.open("Se elimino correctamente el reporte", "Reporte Eliminado", {
        duration: 2000,
      });
        this.router.navigate(['/menuempleado']);
    })
   }
   actualizar(Record):void{
    
      this.editable = true;
      this.idCambiar = Record.id_reporte;
      this.editdescripcion = Record.desc_rep;
      this.editfecha = Record.fecha_rep;
      
    
   }
   actualizarRep(texto1, texto2){
      console.log(texto1,texto2,this.idCambiar);
      let datos = {};
      datos["id"] = this.idCambiar;
      datos["desc"] = texto1;
        datos["fecha"] = texto2;
    
      
      this.base.modificarRep(datos).subscribe((res)=>{
        console.log(res);
        this._snackBar.open("Modificacion correcta", "Añadida", {
          duration: 2000,
        });
          this.router.navigate(['/menuempleado']);
      })
   }
  ngOnInit(): void {
    this.base.getreportes().subscribe((res)=>{
      this.reportes = res;
    })
  }

}
