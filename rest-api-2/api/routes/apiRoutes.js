'use strict';
module.exports = function(app) {
  var controllers = require('../controllers/apiControllers');

  // app Routes
  app.route('/api/list')
    .get(controllers.list);
  app.route('/api/:id')
    .get(controllers.read);
  app.route('/api')
    .get(controllers.ping);

};
