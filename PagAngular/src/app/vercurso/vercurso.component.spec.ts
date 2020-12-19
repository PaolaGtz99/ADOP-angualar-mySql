import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VercursoComponent } from './vercurso.component';

describe('VercursoComponent', () => {
  let component: VercursoComponent;
  let fixture: ComponentFixture<VercursoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VercursoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VercursoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
