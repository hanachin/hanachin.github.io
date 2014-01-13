'use strict'

WebFont.load
  google:
    families: ['Overlock:700:latin']

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
      .when '/md/:md*',
        templateUrl: 'views/md.html'
        controller: 'MdCtrl'
      .otherwise
        redirectTo: '/'
