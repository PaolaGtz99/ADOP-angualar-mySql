import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegirstroinfanteComponent } from './regirstroinfante.component';

describe('RegirstroinfanteComponent', () => {
  let component: RegirstroinfanteComponent;
  let fixture: ComponentFixture<RegirstroinfanteComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegirstroinfanteComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegirstroinfanteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
