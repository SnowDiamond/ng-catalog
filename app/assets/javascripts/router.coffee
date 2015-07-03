App.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $stateProvider
    .state('catalog',
      url: '/',
      templateUrl: 'products/index.html',
      controller: 'ProductsCtrl')
    .state('product',
      url: '/:id',
      templateUrl: 'products/show.html',
      controller: 'ProductShowCtrl')
  $urlRouterProvider.otherwise('/')
  $locationProvider.html5Mode(true)

