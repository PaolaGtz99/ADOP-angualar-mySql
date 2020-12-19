import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MenuUsrIntComponent } from './menu-usr-int.component';

describe('MenuUsrIntComponent', () => {
  let component: MenuUsrIntComponent;
  let fixture: ComponentFixture<MenuUsrIntComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MenuUsrIntComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MenuUsrIntComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
