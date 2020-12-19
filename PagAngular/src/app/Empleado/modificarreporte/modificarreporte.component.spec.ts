import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ModificarreporteComponent } from './modificarreporte.component';

describe('ModificarreporteComponent', () => {
  let component: ModificarreporteComponent;
  let fixture: ComponentFixture<ModificarreporteComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModificarreporteComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ModificarreporteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
