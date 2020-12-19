import { MensajesService } from './../servicios/mensajes.service';
import { BaseDatosService } from './../servicios/base-datos.service';
import { UsrActualService } from './../servicios/usr-actual.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-usr-editar',
  templateUrl: './usr-editar.component.html',
  styleUrls: ['./usr-editar.component.css']
})
export class UsrEditarComponent implements OnInit {

prueba;
  constructor(public usuario: UsrActualService, private bd: BaseDatosService,
    private msg: MensajesService, private router: Router) {
    
    
   }

  ngOnInit(): void {
  }

  editar(tabla, col, valor){

    let datos = {
      id: this.usuario.id,
      tabla: tabla,
      col: col,
      valor: valor
    }

    this.bd.editarUsr(datos).toPromise()
    .then(data=>{
      this.msg.mensaje("success","Exito","Campo Editado");
      this.usuario.recuperarDatos(datos.id,"UsrInteresado");
      this.router.navigate([`/usrEditar`]);
    })
    .catch(err=>{console.log(err)});

  }

}
