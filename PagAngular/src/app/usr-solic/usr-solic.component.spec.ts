import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UsrSolicComponent } from './usr-solic.component';

describe('UsrSolicComponent', () => {
  let component: UsrSolicComponent;
  let fixture: ComponentFixture<UsrSolicComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UsrSolicComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UsrSolicComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
