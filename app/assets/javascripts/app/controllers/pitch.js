app.controller('PitchCtrl', [
  "$scope",
  "Pitch",
  function($scope, Pitch) {

    Pitch.query().then(function(result) {
      $scope.pitchs = result;
    });

    $scope.addPitch = function() {
      var newPitch = new Pitch({
        name: $scope.newName
      });
      newPitch.create().then(function(newlyCreatedPitch){
        $scope.pitchs.push(newlyCreatedPitch);
        $scope.newName = "";
      });
    };
  }]
);