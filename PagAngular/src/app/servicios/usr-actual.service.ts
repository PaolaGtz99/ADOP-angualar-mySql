import { BaseDatosService } from './base-datos.service';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UsrActualService {
  puesto;
  id;
  nombre;
  apeM;
  apeP;
  cel;
  tel;
  calle;
  colonia;
  municipio;
  email;
  //si es usr interesado
  sexo;
  estadoCivil;
  fecha_Nac;
  sueldo;
  numHijos;
  cartaPenal;
  Enf_Cron;
  vivienda;
  Ocupacion;

  constructor(private bd: BaseDatosService) { }

  recuperarDatos(id, tipo) {
    let datos;
    this.bd.getUsr(id).subscribe((res) => {
      datos = res[0];

      this.id = datos.id_usuario;
      this.nombre = datos.nom_usuario;
      this.apeM = datos.ape_musr;
      this.apeP = datos.ape_puser;
      this.cel = datos.cel_usr;
      this.tel = datos.tel_usr;
      this.calle = datos.calle_usr;
      this.colonia = datos.colonia_usr;
      this.municipio = datos.municipio_usr;
      this.email = datos.email_usr;
    });

    if (tipo == "UsrInteresado") {
      this.bd.getUsrInt(id).subscribe((res) => {
        
        this.sexo = res[0].sexo;
        this.estadoCivil = res[0].estado_c;
        this.fecha_Nac = res[0].fecha_nac;
        this.sueldo = res[0].sueldo;
        this.numHijos = res[0].num_hijos;
        this.cartaPenal = res[0].carta_pen;
        this.Enf_Cron = res[0].enf_cron;
        this.vivienda = res[0].vivienda_propia;
        this.Ocupacion = res[0].ocupacion;
        
      });
    }
    else {
      this.bd.getUsrEmp(id).subscribe((res) => {
        this.puesto = res[0].puesto_usr;
      });
    }
  }

}
