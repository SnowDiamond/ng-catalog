App.controller 'ProductsCtrl', ($scope, $http) ->
  getResultsPage = (pageNumber) ->
    $http.get('/api/products?page=' + pageNumber).then((result) ->
      $scope.products = result.data.Items
      $scope.totalProducts = result.data.Count)
  
  $scope.products = []
  $scope.totalProducts = 0
  $scope.productsPerPage = 4
  
  getResultsPage(1)
  
  $scope.pagination = {current: 1}
  $scope.pageChanged = (newPage) ->
    getResultsPage(newPage)
  
App.controller 'ProductShowCtrl', ($scope, $http, $stateParams) ->
  $http.get("/api/products/#{$stateParams.id}").then((result) ->
    $scope.product = result.data)

