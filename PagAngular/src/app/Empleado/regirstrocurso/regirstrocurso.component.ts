import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import {BaseDatosService} from '../../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';
import { MensajesService } from '../../servicios/mensajes.service';

@Component({
  selector: 'app-regirstrocurso',
  templateUrl: './regirstrocurso.component.html',
  styleUrls: ['./regirstrocurso.component.css']
})
export class RegirstrocursoComponent implements OnInit {
  empelados: any;
  forma: FormGroup;
  radioGroupForm: FormGroup;
  constructor(private formBuilder: FormBuilder,private router: Router, private base: BaseDatosService,
    private _snackBar: MatSnackBar,private msj: MensajesService){
     this.forma = new FormGroup({
          'nombreC': new FormControl('', [Validators.required, Validators.minLength(3)]),
          'duracion': new FormControl('',Validators.required),
          'fechaC': new FormControl('',Validators.required),
          'Imparte': new FormControl('',Validators.required),
     });

  }

  guardarCambios():void{
    this.base.altaCurso(this.forma.value).subscribe((res)=>{
      console.log(res)
        this._snackBar.open("Se añadio correctamente el curso", "Nuevo curso", {
          duration: 2000,
        });
        this.router.navigate(['/menuempleado']);
      
      
        
    }, err =>{
      console.log(err)
      this.msj.mensaje('error', 'ERROR', 'El id no existe / el curso ya esta creado');
    })
}
    ngOnInit(){
      this.base.getPersonal().subscribe((res)=>{
        this.empelados = res;
        console.log(res);
      })
    }

}
