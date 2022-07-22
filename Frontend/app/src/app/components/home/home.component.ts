import { Component, OnInit } from '@angular/core';
import { HomeBusiness } from 'src/app/business/home-business.service';
import { Kart, KartRequest, KartResponse } from 'src/library/types';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.less']
})

export class HomeComponent implements OnInit {
  public karts: Array<Kart> = [];

  ngOnInit(): void { }

  constructor(
    private homeBusiness: HomeBusiness,
  ) {
    var self = this;

    self.start();
  }

  private start(): void {
    var self = this;

    var request: KartRequest = new KartRequest();
    request.RaceID = 1;

    self.homeBusiness.PilotList(request)
      .then((response: KartResponse) => {
        if (!response.succsess)
          alert(response.message)

        self.karts = response.items;
        self.karts.forEach(obj => {
          obj.totalTime = obj.totalTime.split('T')[1];
        })
      }).catch((response: KartResponse) => {
        alert(response.message);
      });
  }
}
