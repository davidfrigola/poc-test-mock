'use strict';
var TODO = { message:'TODO'}
var tasks = { 'items':
  [{'id':1, 'desc':'task1'},
   {'id':2, 'desc':'task2'}
 ]
}
exports.ping = function(req,res){
  res.send("app1")
}
exports.list = function(req,res){
  res.json(tasks);
};

exports.read = function(req,res){

  for(var i=0;i<tasks['items'].length;i++){
    var task=tasks['items'][i]
    if(task.id==req.params.id){
      res.setHeader('Content-Type', 'application/json');
      res.send(JSON.stringify(task));
      return;
    }
  }

  res.status(404);
  res.send();

};
