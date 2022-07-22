import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { KartResponse } from 'src/library/types';

@Injectable({
  providedIn: 'root'
})
export class HomeService {
  private baseUrl: string = '';

  constructor(
    private http: HttpClient,
  ) {
    var self = this;

    self.start();
  }

  private start(): void {
    var self = this;
    self.baseUrl = 'https://localhost:44342/';
  }

  public PilotList<T1, T2>(request: T1): Promise<T2> {
    var self = this;

    var url = self.baseUrl + 'v1/Kart/PilotList';

    var headers: HttpHeaders = new HttpHeaders({
      'Cotent-Type': 'application/json'
    });

    const httpOptions = { headers: headers };

    return new Promise<T2>((resolve, reject) => {
      self.http.post(url, request, httpOptions)
        .toPromise()
        .then((response: any) => {
          resolve(response);
        }).catch((error: any) => {
          reject(error.message);
        })
    });
  }
}
