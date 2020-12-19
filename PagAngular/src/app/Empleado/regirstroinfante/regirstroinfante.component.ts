import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators, FormBuilder } from '@angular/forms';
import { BaseDatosService } from '../../servicios/base-datos.service';
import {MatSnackBar} from '@angular/material/snack-bar';
import { ActivatedRoute, Router } from '@angular/router';
import { MensajesService } from '../../servicios/mensajes.service';

@Component({
  selector: 'app-regirstroinfante',
  templateUrl: './regirstroinfante.component.html',
  styleUrls: ['./regirstroinfante.component.css']
})
export class RegirstroinfanteComponent implements OnInit {

  forma: FormGroup;
  radioGroupForm: FormGroup;
  constructor(private formBuilder: FormBuilder, private base: BaseDatosService,private _snackBar: MatSnackBar,
    private router: Router,private msj: MensajesService){
     this.forma = new FormGroup({
          'nomin': new FormControl('', [Validators.required, Validators.minLength(3)]),
          'apepin': new FormControl('',Validators.required),
          'apemin': new FormControl('',Validators.required),
          'fe_nain': new FormControl('',Validators.required),
          'gender': new FormControl('',Validators.required),
          'nomtutor': new FormControl('',Validators.required),
          'apeptu': new FormControl('',Validators.required),
          'apemtu': new FormControl('',Validators.required),
          'fech_en': new FormControl('',Validators.required),
          'desc': new FormControl('',Validators.required),
          'numha': new FormControl('',Validators.required),
          'sec': new FormControl('',Validators.required),
     });

  }

  guardarCambios():void{
    this.base.altaInfante(this.forma.value).subscribe((res) =>{
        this._snackBar.open("Registro añadido correctamente", "OK", {
          duration: 2000,
        });
        this.router.navigate(['/menuempleado']);
      }, err =>{
        console.log(err)
        this.msj.mensaje('error', 'ERROR', 'El infante ya esta registrado');
      })
  }
  
    ngOnInit(){}

}
