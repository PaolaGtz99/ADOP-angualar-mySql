import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UsrCursoComponent } from './usr-curso.component';

describe('UsrCursoComponent', () => {
  let component: UsrCursoComponent;
  let fixture: ComponentFixture<UsrCursoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UsrCursoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UsrCursoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
