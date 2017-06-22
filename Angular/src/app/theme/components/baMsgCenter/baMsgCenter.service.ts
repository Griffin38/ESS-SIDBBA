import {Injectable} from '@angular/core'

@Injectable()
export class BaMsgCenterService {

  private _notifications = [
    {
      name: 'Vila do Conde',
      text: 'Temperatura máxima atingida!',
      time: 'Há 1 minuto'
    },
    {
      name: 'Apúlia',
      text: 'Humidade mínima atingida!',
      time: 'Há 13 minuto'
    },
    {
      name: 'Vila do Conde',
      text: 'Temperatura máxima atingida!',
      time: 'Há 2 horas'
    },
    {
      name: 'Fão',
      text: 'Luminosidade máxima atingida!',
      time: 'Há 1 dia'
    },
    {
      name: 'Mindelo Sul',
      text: 'Humidade máxima atingida!',
      time: 'Há 2 dias'
    },
  ];

  private _messages = [
    {
      name: 'Administrador',
      text: 'Exemplo de notificação...',
      time: 'Há 15 minutos'
    }
  ];

  public getMessages():Array<Object> {
    return this._messages;
  }

  public getNotifications():Array<Object> {
    return this._notifications;
  }
}
