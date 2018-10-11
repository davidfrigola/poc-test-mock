'use strict';
var TODO = { message:'TODO'}
var tasks = { 'tasks':
  [{'id':1, 'desc':'task1'},
   {'id':2, 'desc':'task2'}
 ]
}

exports.list = function(req,res){
  res.json(tasks);
};

exports.add = function(req,res){
  res.json(TODO);
};

exports.read = function(req,res){
  res.json(TODO);
};
