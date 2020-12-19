import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class BaseDatosService {

  constructor(private http: HttpClient) { 
  }

  private getHeaders(){
    let headers = new HttpHeaders();
    headers.set('Access-Control-Allow-Origin','*');
    return headers
  }

  
   getSolicitudes(){
    return this.http.get(`${environment.ip}/solicitudes`,{headers:this.getHeaders()})
   }
   getInfantes(){
    return this.http.get(`${environment.ip}/infantes`,{headers:this.getHeaders()})
   }

   getCursos(){
    return this.http.get(`${environment.ip}/cursos`,{headers:this.getHeaders()})
   }
   ex(){
    return this.http.get(`${environment.ip}/extraer`,{headers:this.getHeaders()})
   }
   //iniciar sesion
   iniciar(){
    return this.http.get(`${environment.ip}/iniciars`,{headers:this.getHeaders()})
   }
   //iniciar sesion
   iniciar2(){
    return this.http.get(`${environment.ip}/iniciarse`,{headers:this.getHeaders()})
   }
   //Alta de infante
   altaInfante(infante){
    return this.http.post(`${environment.ip}/registroinfante`,infante,{headers:this.getHeaders()})
   }
   //Alta empleado
   altaEmpleado(empleado){
    return this.http.post(`${environment.ip}/registroe`,empleado,{headers:this.getHeaders()})
   }
   //Alta Curso
   altaCurso(curso){
    return this.http.post(`${environment.ip}/registroc`,curso,{headers:this.getHeaders()})
   }
   //Alta reporte
   altaReporte(rep){
    return this.http.post(`${environment.ip}/registror`,rep,{headers:this.getHeaders()})
   }
   actualizaS(rep){
    return this.http.post(`${environment.ip}/actualizarSoli`,rep,{headers:this.getHeaders()})
   }
   altaInteresado(rep){
    return this.http.post(`${environment.ip}/registroint`,rep,{headers:this.getHeaders()})
   }
   //async altaEmpleado(empleado){
    //let response = await this.http.post(`${environment.ip}/actor`,empleado,{headers:this.getHeaders()}).toPromise()
    //console.log(response)
  //}
  //Para extraer los reportes
  getreportes(){
    return this.http.get(`${environment.ip}/obtenerrep`,{headers:this.getHeaders()})
   }
   actualizarLEspera(){
    return this.http.get(`${environment.ip}/actualizarEspera`,{headers:this.getHeaders()})
   }
  //Para baja empleado/
  bajaEmpelado(id){
    return this.http.get(`${environment.ip}/bajaEmp/${id}`,{headers:this.getHeaders()})
  }
  //Baja reporte
  bajaReporte(id){
    return this.http.get(`${environment.ip}/bajaRep/${id}`,{headers:this.getHeaders()})
  }
  obtenerCU(id){
    return this.http.get(`${environment.ip}/cursosuser/${id}`,{headers:this.getHeaders()})
  }
  obtenerSolicitudes(id){
    return this.http.get(`${environment.ip}/soliin/${id}`,{headers:this.getHeaders()})
  }
  //
  inscripcion(rep){
    return this.http.post(`${environment.ip}/insc`,rep,{headers:this.getHeaders()})
   }
   realizarSoli(rep){
    return this.http.post(`${environment.ip}/realizarsoli`,rep,{headers:this.getHeaders()})
   }
   //m
   modificarRep(rep){
    return this.http.post(`${environment.ip}/modrep`,rep,{headers:this.getHeaders()})
   }
  //Lista de empleados
  getPersonal(){
    return this.http.get(`${environment.ip}/admine`,{headers:this.getHeaders()})
   }

  

  //Recuperar datos del usuario
 getUsr(id){
    return this.http.get(`${environment.ip}/usr/${id}`,{headers:this.getHeaders()})
  }
  //Datos de empleado
  getUsrEmp(id){
    return this.http.get(`${environment.ip}/usrEmp/${id}`,{headers:this.getHeaders()})
  }
  //a Vista de usuario interesado
  getUsrInt(id){
    return this.http.get(`${environment.ip}/usrInt/${id}`,{headers:this.getHeaders()})
  }

  getListaEspera(){
    return this.http.get(`${environment.ip}/listaEsp`,{headers:this.getHeaders()})
  }

  editarUsr(datos){
    return this.http.post(`${environment.ip}/editarUsrInt`, datos, {headers: this.getHeaders()})
   }

   participantes(){
    return this.http.get(`${environment.ip}/participaC`, {headers: this.getHeaders()})
   }

   getSoliNom(){
    return this.http.get(`${environment.ip}/soliNom`, {headers: this.getHeaders()})
   }

}
