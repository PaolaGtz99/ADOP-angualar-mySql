import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../servicios/base-datos.service';
import { UsrActualService } from './../servicios/usr-actual.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {  Router } from '@angular/router';

@Component({
  selector: 'app-usr-curso',
  templateUrl: './usr-curso.component.html',
  styleUrls: ['./usr-curso.component.css']
})
export class UsrCursoComponent implements OnInit {
  cursos: any;
  cursosUsuario: any;
  bandera;
  constructor(private base: BaseDatosService, public usuario: UsrActualService, private router: Router,private _snackBar: MatSnackBar) { }
  inscribir(curso,usuario){
    let Record = {};
    Record["idcurso"] = curso;
    Record["idusuario"] = usuario;
    this.base.inscripcion(Record).subscribe((res)=>{
      this._snackBar.open("Se realizo la inscripcion", "Añadido", {
        duration: 2000,
      });
        this.router.navigate(['/menuUsr']);
    })
       //console.log(curso,usuario);
  }
  ngOnInit(): void {
    this.base.obtenerCU(this.usuario.id).subscribe((res)=>{
      this.cursosUsuario = res;
     // console.log(this.cursosUsuario)
      if(this.cursosUsuario.length ==0){
        this.bandera = false;
      }else{
        this.bandera = true;
      }
    })
    this.base.getCursos().subscribe((res)=>{
      this.cursos = res;
    })
  }

}
