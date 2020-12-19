import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListainfantesComponent } from './listainfantes.component';

describe('ListainfantesComponent', () => {
  let component: ListainfantesComponent;
  let fixture: ComponentFixture<ListainfantesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListainfantesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListainfantesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
