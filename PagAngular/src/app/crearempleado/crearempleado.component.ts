import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import {BaseDatosService} from '../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';
import { MensajesService } from '../servicios/mensajes.service';

@Component({
  selector: 'app-crearempleado',
  templateUrl: './crearempleado.component.html',
  styleUrls: ['./crearempleado.component.css']
})
export class CrearempleadoComponent implements OnInit {
   empelados: any;
  forma: FormGroup;
  radioGroupForm: FormGroup;
  constructor(private formBuilder: FormBuilder,private router: Router, private base: BaseDatosService,
    private _snackBar: MatSnackBar,private msj: MensajesService){
     this.forma = new FormGroup({
      'nombre': new FormControl('', [Validators.required, Validators.minLength(3)]),
      'apep': new FormControl('',Validators.required),
      'apem': new FormControl('',Validators.required),
      'fech_na': new FormControl('',Validators.required),
      'puesto': new FormControl('',Validators.required),
      'calle': new FormControl('',Validators.required),
      'colonia': new FormControl('',Validators.required),
      'municipio': new FormControl('',Validators.required),
      'correo': new FormControl('',Validators.required),
      'telefono': new FormControl('',Validators.required),
      'celular': new FormControl('',Validators.required),
      'contra': new FormControl('',Validators.required),
     });

  }

  guardarCambios():void{
    
    this.base.altaEmpleado(this.forma.value).subscribe((res)=>{
      this._snackBar.open("Se añadio correctamente el empleado", "Nuevo empleado", {
        duration: 2000,
      });
        this.router.navigate(['/perfil']);
    }, err =>{
      console.log(err)
      this.msj.mensaje('error', 'ERROR', 'El empleado ya esta registrado');
    })
   // console.log(this.forma.value)
  
}
eliminar(algo){
  this.base.bajaEmpelado(algo).subscribe((res)=>{
    this._snackBar.open("Se elimino correctamente el empleado", "Empleado Eliminado", {
      duration: 2000,
    });
      this.router.navigate(['/perfil']);
  })
}
    ngOnInit(){
      this.base.getPersonal().subscribe((res)=>{
        this.empelados = res;
        console.log(res);
      })
    }

}
