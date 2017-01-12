var cat2 = function(furColor) {
    this.furColor = furColor;
    this.location = "house";
    this.outside = function() {
        this.location = "outside";
    };
};

var meow2 = new cat2("white");
meow2.outside();
meow2.location



var meow = function(furColor){
  return(
    {
    furColor: furColor,
    location: "house",
    outside: function(){
      this.location = "outside";
      }
    });
}
var niko = meow("white");
niko.furColor
