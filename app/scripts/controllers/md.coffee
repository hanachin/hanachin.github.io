'use strict'

angular.module('hanachingithubioApp')
  .controller 'MdCtrl', ($scope, $sce, $routeParams, $http) ->
    $scope.params = $routeParams
    $http.get($routeParams.md)
    .success (body) ->
      marked.setOptions highlight: (code, lang) ->
        hljs.highlight(lang, code).value
      $scope.body = $sce.trustAsHtml marked body
