import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../servicios/base-datos.service';
import { UsrActualService } from '../servicios/usr-actual.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import {  Router } from '@angular/router';


@Component({
  selector: 'app-usr-solic',
  templateUrl: './usr-solic.component.html',
  styleUrls: ['./usr-solic.component.css']
})
export class UsrSolicComponent implements OnInit {
  nuevaS = false;
  tiene = false;
  contenido: any;
  forma: FormGroup;
  nuestro;
  constructor(private router: Router, private base: BaseDatosService,private _snackBar: MatSnackBar, public usuario: UsrActualService) { 
    this.forma = new FormGroup({
      'fecha': new FormControl('', Validators.required),
 });
  }
  guardarCambios():void{
    let datos = {};
    datos["idu"] = this.usuario.id;
    this.base.realizarSoli(datos).subscribe((res)=>{
      console.log(res)
        this._snackBar.open("Se realizo correctamente la solicitud", "Acción correcta", {
          duration: 2000,
        });
        this.router.navigate(['/menuUsr']);
    }, err =>{
      console.log(err)
      this._snackBar.open("", "Error", {
        duration: 2000,
      });
    })
  }
  
  ngOnInit(): void {
    this.nuestro = this.usuario.id;
    this.base.obtenerSolicitudes(this.nuestro).subscribe((res)=>{
      console.log(res)
      this.contenido = res
          if(this.contenido.length ==0){
              this.tiene = false;
          }else{
              this.tiene = true;
          }
    })
  }

}
