import { HttpClient, HttpClientResponse } from '@microsoft/sp-http';
import { WebPartContext } from '@microsoft/sp-webpart-base';

export class LogicAppService {
  public static async getSiteMetadata(context: WebPartContext, siteId: string): Promise<any> {
    const logicAppUrl = `https://your-logic-app-url?siteId=${siteId}`;

    const response: HttpClientResponse = await context.httpClient.get(logicAppUrl, HttpClient.configurations.v1);
    return await response.json();
  }
}
