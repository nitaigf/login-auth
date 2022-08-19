import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AppService {
  constructor(private http: HttpClient) { }

  private apiUrl = 'http://localhost:3001';

  getData() {
    return this.http.get(this.apiUrl);
  }
}
