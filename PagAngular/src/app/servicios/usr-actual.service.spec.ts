import { TestBed } from '@angular/core/testing';

import { UsrActualService } from './usr-actual.service';

describe('UsrActualService', () => {
  let service: UsrActualService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(UsrActualService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
