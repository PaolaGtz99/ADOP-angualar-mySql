import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { BaseDatosService } from '../../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';
@Component({
  selector: 'app-crearreporte',
  templateUrl: './crearreporte.component.html',
  styleUrls: ['./crearreporte.component.css']
})
export class CrearreporteComponent implements OnInit {
  
  forma: FormGroup;
  radioGroupForm: FormGroup;
  constructor(private formBuilder: FormBuilder, private router: Router, private basedatos: BaseDatosService,private _snackBar: MatSnackBar){
     this.forma = new FormGroup({
          'fechaR': new FormControl('', Validators.required),
          'des': new FormControl('',Validators.required),
          'idinfante': new FormControl('',Validators.required),
          'idadoptante': new FormControl('',Validators.required),
     });

  }

  guardarCambios():void{
    this.basedatos.altaReporte(this.forma.value).subscribe((res)=>{
      console.log(res)
        this._snackBar.open("Se añadio correctamente el reporte", "Acción correcta", {
          duration: 2000,
        });
        this.router.navigate(['/menuempleado']);
      
      
        
    }, err =>{
      console.log(err)
      this._snackBar.open("Los ids no corresponden", "Error", {
        duration: 2000,
      });
    })
}
    ngOnInit(){}

}
