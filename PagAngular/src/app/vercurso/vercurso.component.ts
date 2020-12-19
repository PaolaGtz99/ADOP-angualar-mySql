import { Component, OnInit } from '@angular/core';
import {BaseDatosService} from '../servicios/base-datos.service';
@Component({
  selector: 'app-vercurso',
  templateUrl: './vercurso.component.html',
  styleUrls: ['./vercurso.component.css']
})
export class VercursoComponent implements OnInit {

  cursos: any[];
  participantes: any[];
 
  constructor(private base: BaseDatosService) { 

  }

  ngOnInit(): void {
    this.base.getCursos().subscribe((res: any[]) => {
      this.cursos = res;
      this.cursos.forEach(data  => {
        this.base.getUsr(data.id_usuario).subscribe((user)=>{
          data.imparte = `${user[0].nom_usuario} ${user[0].ape_puser}`;
        });
      });
    });

    this.base.participantes().subscribe((res: any[]) => {
      this.participantes = res;
      
    });
  }

}
