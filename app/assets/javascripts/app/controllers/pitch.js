app.controller('PitchCtrl', [
  "$scope",
  "Pitch",
  function($scope, Pitch) {

    Pitch.query().then(function(result) {
      $scope.pitches = result;
    });

    $scope.addPitch = function() {
      var newPitch = new Pitch({
        company: $scope.newCompany,
        idea: $scope.newIdea,
      });
      newPitch.create().then(function(newlyCreatedPitch){
        $scope.pitches.push(newlyCreatedPitch);
        $scope.newCompany = "";
        $scope.newIdea = "";
      });
    };
  }]
);

app.controller(p)