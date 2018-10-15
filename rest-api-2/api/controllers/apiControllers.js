var request = require('request');

exports.ping = function(req,res){
  res.send("app2")
}
exports.list = function(req,res){
  request('http://localhost:3000/api/list', function (error, response, body) {
    if(body) {
      res.json(JSON.parse(body));
    }else{
      res.send("ERROR or NOT_FOUND");
    }
  });
};

exports.read = function(req,res){
  request('http://localhost:3000/api/'+req.params.id, function (error, response, body) {
    res.status(response.statusCode)
    if(body) {
      res.json(JSON.parse(body));
    }else{
      res.send("ERROR or NOT_FOUND")
    }
  });
};
