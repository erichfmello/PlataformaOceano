import { TestBed } from '@angular/core/testing';

import { HomeBusiness } from './home-business.service';

describe('HomeBusiness', () => {
  let service: HomeBusiness;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HomeBusiness);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
