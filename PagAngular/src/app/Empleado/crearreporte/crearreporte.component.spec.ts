import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CrearreporteComponent } from './crearreporte.component';

describe('CrearreporteComponent', () => {
  let component: CrearreporteComponent;
  let fixture: ComponentFixture<CrearreporteComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CrearreporteComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CrearreporteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
