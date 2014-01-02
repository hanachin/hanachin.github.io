'use strict'

angular.module('hanachingithubioApp', [
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/diary',
        templateUrl: 'views/diary.html'
        controller: 'DiaryCtrl'
      .otherwise
        redirectTo: '/'
