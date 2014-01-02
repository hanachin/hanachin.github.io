'use strict'

angular.module('hanachingithubioApp')
  .controller 'MdCtrl', ($scope, $sce, $routeParams, $http) ->
    $scope.params = $routeParams
    $http.get($routeParams.md)
    .success (body) ->
      $scope.body = $sce.trustAsHtml markdown.toHTML body
