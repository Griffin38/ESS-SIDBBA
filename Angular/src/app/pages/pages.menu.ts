export const PAGES_MENU = [
  {
    path: 'pages',
    children: [
      {
        path: 'dashboard',
        data: {
          menu: {
            title: 'Ver Mapa',
            icon: 'ion-map',
            selected: false,
            expanded: false,
            order: 0
          }
        }
      },
      {
        path: 'forms',
        data: {
          menu: {
            title: 'Alertas',
            icon: 'ion-clock',
            selected: false,
            expanded: false,
            order: 400,
          }
        },
        children: [
          {
            path: 'inputs',
            data: {
              menu: {
                title: 'Novo Alerta',
                icon: 'ion-plus'
              }
            }
          }
        ]
      },
      {
        path: 'tables',
        data: {
          menu: {
            title: 'Leituras',
            icon: 'ion-clipboard',
            selected: false,
            expanded: false,
            order: 500,
          }
        },
        children: [
          {
            path: 'smarttables',
            data: {
              menu: {
                title: 'Ver Registos',
                icon: 'ion-eye',
              }
            }
          }
        ]
      }
    ]
  }
];
