import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListaesperaComponent } from './listaespera.component';

describe('ListaesperaComponent', () => {
  let component: ListaesperaComponent;
  let fixture: ComponentFixture<ListaesperaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaesperaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaesperaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
