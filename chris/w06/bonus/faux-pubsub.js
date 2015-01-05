
///conceptual - will not run  
//pub sub  - publish to who's subscribed 

var clientOne= new Client();  ///clients
var clientTwo= new Client();
var clientThree= new Client();
var clientFour= new Client();

var server = new Server(); ///server

var clientOne.connect(server);
var clientTwo.connect(server);
var clientThree.connect(server);
var clientFour.connect(server);

clientOne.subscribe("A", function(message){
  console.log(message.text);
});
clientOne.subscribe("B");   ///channels
clientTwo.subscribe("A");
clientThree.subscribe("B");