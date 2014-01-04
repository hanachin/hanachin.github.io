'use strict'

angular.module('hanachingithubioApp')
  .filter 'markdown', ($sce) ->
    (input) ->
      marked.setOptions highlight: (code, lang) ->
        hljs.highlight(lang, code).value
      $sce.trustAsHtml marked input || ''
