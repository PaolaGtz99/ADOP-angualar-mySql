import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegirstrocursoComponent } from './regirstrocurso.component';

describe('RegirstrocursoComponent', () => {
  let component: RegirstrocursoComponent;
  let fixture: ComponentFixture<RegirstrocursoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegirstrocursoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegirstrocursoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
