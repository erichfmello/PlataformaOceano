import { Injectable } from '@angular/core';
import { KartRequest, KartResponse } from 'src/library/types';
import { HomeService } from '../services/home-service.service';

@Injectable({
  providedIn: 'root'
})

export class HomeBusiness {

  constructor(
    private homeService: HomeService,
  ) { }

  public PilotList(request: KartRequest): Promise<KartResponse> {
    var self = this;

    return self.homeService.PilotList<KartRequest, KartResponse>(request);
  }
}
