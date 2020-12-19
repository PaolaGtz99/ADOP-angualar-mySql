import { UsrActualService } from './../servicios/usr-actual.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-menu-usr-int',
  templateUrl: './menu-usr-int.component.html',
  styleUrls: ['./menu-usr-int.component.css']
})
export class MenuUsrIntComponent implements OnInit {

  constructor(public usuario: UsrActualService) { }

  ngOnInit(): void {
  }

}
