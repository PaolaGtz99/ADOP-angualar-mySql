import { UsrSolicComponent } from './usr-solic/usr-solic.component';
import { UsrEditarComponent } from './usr-editar/usr-editar.component';
import { MenuUsrIntComponent } from './menu-usr-int/menu-usr-int.component';
import { PreguntasComponent } from './preguntas/preguntas.component';
import { RequisitosComponent } from './requisitos/requisitos.component';
import { PrincipalComponent } from './principal/principal.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MenuAdminComponent } from './menu-admin/menu-admin.component';
import { RegistroComponent } from './registro/registro.component';
import { SolicitudesComponent } from './solicitudes/solicitudes.component';
import { VercursoComponent } from './vercurso/vercurso.component';
import { ListainfantesComponent } from './listainfantes/listainfantes.component';
import { CrearempleadoComponent } from './crearempleado/crearempleado.component';
import { MenuempleadoComponent } from './Empleado/menuempleado/menuempleado.component';
import { RegirstroinfanteComponent } from './Empleado/regirstroinfante/regirstroinfante.component';
import { RegirstrocursoComponent } from './Empleado/regirstrocurso/regirstrocurso.component';
import { RegirstrosolicitudesComponent } from './Empleado/regirstrosolicitudes/regirstrosolicitudes.component';
import { CrearreporteComponent } from './Empleado/crearreporte/crearreporte.component';
import { ModificarreporteComponent } from './Empleado/modificarreporte/modificarreporte.component';
import { ListaesperaComponent } from './Empleado/listaespera/listaespera.component';
import { UsrCursoComponent } from './usr-curso/usr-curso.component';

const routes: Routes = [
  { path: 'inicio', component: PrincipalComponent  },
  { path: 'requisitos', component: RequisitosComponent },
  { path: 'preguntas', component: PreguntasComponent },
  { path: 'perfil', component: MenuAdminComponent },
  { path: 'registrar', component: RegistroComponent },
  { path: 'verinfante', component: ListainfantesComponent },
  { path: 'vercurso', component: VercursoComponent },
  { path: 'crearempleado', component: CrearempleadoComponent },
  { path: 'solicitudes', component: SolicitudesComponent },
  { path: 'menuUsr', component: MenuUsrIntComponent},
  { path: 'menuempleado', component: MenuempleadoComponent },
  { path: 'registroinfante', component: RegirstroinfanteComponent },
  { path: 'registrocurso', component: RegirstrocursoComponent },
  { path: 'registrosolicitudes', component: RegirstrosolicitudesComponent },
  { path: 'crearreporte', component: CrearreporteComponent },
  { path: 'modificarreporte', component: ModificarreporteComponent },
  { path: 'listaespera', component: ListaesperaComponent },
  { path: 'usrEditar', component: UsrEditarComponent },
  { path: 'usrCurso', component: UsrCursoComponent },
  { path: 'usrSol', component: UsrSolicComponent },
  { path: '**', pathMatch: 'full', redirectTo: 'inicio'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
