//RESUME TAB directive
app.directive("resume", function(){
  return {
    restrict: "E",
    templateUrl: "tabs/resume.html"
  };
});

app.directive("resume2", function(){
  return {
    restrict: "E",
    template: "<div class='resume'><br><br><br><br><br><br><div><h1>Switch Thomas</h1>Inventor of the optigrab.<br>text in just the directive template.</div></div>"
  };
});