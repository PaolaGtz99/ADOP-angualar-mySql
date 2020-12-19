import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './menu/menu.component';
import { FooterComponent } from './footer/footer.component';
import { PrincipalComponent } from './principal/principal.component';
import { RequisitosComponent } from './requisitos/requisitos.component';
import { PreguntasComponent } from './preguntas/preguntas.component';
import { MenuAdminComponent } from './menu-admin/menu-admin.component';
import { RegistroComponent } from './registro/registro.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
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
import { MenuUsrIntComponent } from './menu-usr-int/menu-usr-int.component';
import { UsrEditarComponent } from './usr-editar/usr-editar.component';
import { UsrCursoComponent } from './usr-curso/usr-curso.component';
import { UsrSolicComponent } from './usr-solic/usr-solic.component';
import { HttpClientModule } from '@angular/common/http';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';


@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    FooterComponent,
    PrincipalComponent,
    RequisitosComponent,
    PreguntasComponent,
    MenuAdminComponent,
    RegistroComponent,
    SolicitudesComponent,
    VercursoComponent,
    ListainfantesComponent,
    CrearempleadoComponent,
    MenuempleadoComponent,
    RegirstroinfanteComponent,
    RegirstrocursoComponent,
    RegirstrosolicitudesComponent,
    CrearreporteComponent,
    ModificarreporteComponent,
    ListaesperaComponent,
    MenuUsrIntComponent,
    UsrEditarComponent,
    UsrCursoComponent,
    UsrSolicComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule, ReactiveFormsModule, MatSnackBarModule, BrowserAnimationsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
