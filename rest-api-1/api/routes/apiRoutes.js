'use strict';
module.exports = function(app) {
  var controllers = require('../controllers/apiControllers');

  // app Routes
  app.route('/api')
    .get(controllers.list);
  app.route('/api/:id')
    .get(controllers.read);

};
