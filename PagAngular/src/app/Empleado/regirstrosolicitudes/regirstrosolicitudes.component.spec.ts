import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegirstrosolicitudesComponent } from './regirstrosolicitudes.component';

describe('RegirstrosolicitudesComponent', () => {
  let component: RegirstrosolicitudesComponent;
  let fixture: ComponentFixture<RegirstrosolicitudesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegirstrosolicitudesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegirstrosolicitudesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
