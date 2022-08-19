import { Component } from '@angular/core';
import { AppService } from './app.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  providers: [AppService]
})
export class AppComponent {
  constructor(private appService: AppService) {
    this.getData();
  }

  public title: string = 'frontlogin';
  public data: any;

  public getData(): void {
    this.appService.getData()
    .subscribe((res: any) => {
      console.log(res);
      this.data = res.message;
    });
  }
}
