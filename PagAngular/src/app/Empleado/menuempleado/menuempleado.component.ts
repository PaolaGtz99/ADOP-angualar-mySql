import { UsrActualService } from './../../servicios/usr-actual.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-menuempleado',
  templateUrl: './menuempleado.component.html',
  styleUrls: ['./menuempleado.component.css']
})
export class MenuempleadoComponent implements OnInit {

  tipousuario = "";
  constructor(public usuario: UsrActualService) { }

  ngOnInit(): void {
    this.tipousuario = localStorage.getItem("empleado");
  }

}
