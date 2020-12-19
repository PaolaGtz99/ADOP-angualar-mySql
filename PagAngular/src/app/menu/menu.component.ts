import { UsrActualService } from './../servicios/usr-actual.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {BaseDatosService} from '../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import { MensajesService } from './../servicios/mensajes.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {
  usuarioS = "";
  contrasenaS = "";
  puesto = "";
  tipouser = "";
  bandera1 = false;
  bandera2 = true;
  datos: any
  datos2: any;
  Estado: String = "Iniciar Sesión";
  constructor(private activatedRoute: ActivatedRoute, private router: Router,
              private base: BaseDatosService, private actual: UsrActualService, private _snackBar: MatSnackBar,
              private msj: MensajesService) {
               
    this.base.iniciar().subscribe((res)=>{
      this.datos = res;
      
    });
    this.base.iniciar2().subscribe((res) => {
      this.datos2 = res
      })
  }

  iniciar(usuario, contrasena) {
   
    // tslint:disable-next-line: forin
    for (let i in this.datos) {

      this.usuarioS = this.datos[i].email_usr;
      this.contrasenaS = this.datos[i].contra;
      this.puesto = this.datos[i].puesto_usr;

      if ((this.usuarioS == usuario) && (this.contrasenaS == contrasena)) {
    

        if (this.puesto == 'Trabajador Social') {
          this.bandera1 = true;
          this.tipouser = "Empleado";
          localStorage.setItem("empleado", "tsocial");
          this.Estado = ' Cerrar Sesión';
          this.actual.recuperarDatos(this.datos[i].id_usuario,"Trabajador Social");
          this.router.navigate([`/menuempleado`]);

        } else if (this.puesto == "Administrador") {
          this.bandera1 = true;
          this.tipouser = "Administrador"
          this.Estado = ' Cerrar Sesión';
          this.actual.recuperarDatos(this.datos[i].id_usuario,"Administrador");
          this.router.navigate([`/perfil`]);

        } else if (this.puesto == "Secretario") {
          this.bandera1 = true;
          this.tipouser = "Empleado"
          localStorage.setItem("empleado", "secretario");
          this.Estado = " Cerrar Sesión";
          this.actual.recuperarDatos(this.datos[i].id_usuario,"Secretario");
          this.router.navigate([`/menuempleado`]);
        }
      }
    }
    if (this.Estado == "Iniciar Sesión") {
      
      // tslint:disable-next-line: forin
      for (let i in this.datos2) {
        this.usuarioS = this.datos2[i].email_usr
        this.contrasenaS = this.datos2[i].contra
        if ((this.usuarioS == usuario) && (this.contrasenaS == contrasena)) {
          this.bandera1 = true;
          this.tipouser = "UsrInteresado"
          this.Estado = " Cerrar Sesión";
          this.router.navigate([`/menuUsr`]);
          
          this.actual.recuperarDatos(this.datos2[i].id_usuario,"UsrInteresado");
        } else {
          //SI NO EXISTE
        }
      }
    }

    if(this.bandera1 == false){
      this._snackBar.open("Correo electronico / contrsaña incorrecto", " Acceso denegado", {
        duration: 4000,
      });
      this.msj.mensaje('error', 'ACCESO DENEGADO', 'Informacion incorrecta');

    }else if(this.bandera1 == true){
      this._snackBar.open("--> Bienvenido(a) <--", " Acceso autorizado", {
        duration: 4000,
      });
      this.msj.mensaje('success', 'BIENVENIDO', '');
    }
  }
 
  cerrar() {
    this.bandera1 = false;
    this._snackBar.open("Nos vemos pronto", "Sesion finalizada", {
      duration: 4000,
    });
    this.msj.timer(2000,'CERRANDO SESIÓN')
  }
  ngOnInit(): void {
  }

}
