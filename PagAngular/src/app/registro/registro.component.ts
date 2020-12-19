import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import {BaseDatosService} from '../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';
import { MensajesService } from './../servicios/mensajes.service';
@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {

  forma: FormGroup;
  datos: any;
  radioGroupForm: FormGroup;
  constructor(private formBuilder: FormBuilder, private base:BaseDatosService,
    private router: Router,private _snackBar: MatSnackBar, private msj: MensajesService){
    this.forma = new FormGroup({
      'nombre': new FormControl('', [Validators.required, Validators.minLength(3)]),
      'apep': new FormControl('',Validators.required),
      'apem': new FormControl('',Validators.required),
      'fech_na': new FormControl('',Validators.required),
      'estadocivil': new FormControl('',Validators.required),
      'gender': new FormControl('',Validators.required),
      'propia': new FormControl('',Validators.required),
      'enfermedad': new FormControl('',Validators.required),
      'hijos': new FormControl('',Validators.required),
      'ocupacion': new FormControl('',Validators.required),
      'sueldo': new FormControl('',Validators.required),
      'calle': new FormControl('',Validators.required),
      'colonia': new FormControl('',Validators.required),
      'municipio': new FormControl('',Validators.required),
      'correo': new FormControl('',Validators.required),
      'telefono': new FormControl('',Validators.required),
      'celular': new FormControl('',Validators.required),
      'carta': new FormControl('',Validators.required),
      'contra': new FormControl('',Validators.required),
      'contra2': new FormControl('',Validators.required),
     });

  }

  guardarCambios():void{
    this.datos = this.forma.value
   if(this.datos.contra == this.datos.contra2){
    this.base.altaInteresado(this.forma.value).subscribe((res)=>{
      
      this.msj.mensaje('success', 'Registro correcto', 'Puedes iniciar sesion cuando  quieras, solamente ingresando tu correo y contraseña que acabas de ingresar en el registro');
        this.router.navigate(['/inicio']);
    }, err =>{
      console.log(err)
      this.msj.mensaje('error', 'ERROR', 'Ya existe un registro con esos datos');
    })
   }else{
    this.msj.mensaje('error', 'CONTRASEÑAS DIFERENTES', 'Las contraseñas ingresadas no son correctas');
   }
}
    ngOnInit(){}
}
