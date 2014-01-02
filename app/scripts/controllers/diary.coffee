'use strict'

angular.module('hanachingithubioApp')
  .controller 'DiaryCtrl', ($scope, $http) ->
    $scope.diaryList = []

    $http.get('scripts/diaryList.json')
    .success (diaryList) ->
      $scope.diaryList = diaryList
