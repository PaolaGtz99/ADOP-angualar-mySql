import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UsrEditarComponent } from './usr-editar.component';

describe('UsrEditarComponent', () => {
  let component: UsrEditarComponent;
  let fixture: ComponentFixture<UsrEditarComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UsrEditarComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UsrEditarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
