import { Component } from '@angular/core';
import { BaseDatosService } from './servicios/base-datos.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'proyBD';

  constructor(
    private apis: BaseDatosService
  ){
    
  }
}
