# resume tab directive
angular.module 'boa.directives'
  .directive 'resume', () ->
    restrict: "E",
    templateUrl: "resume.html"