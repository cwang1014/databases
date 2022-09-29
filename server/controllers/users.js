var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.users.getAll((err, usernames) => {
      res.status(200).json(usernames);
    });
  },
  post: function (req, res) {
    let username = req.body.username;
    models.users.create(username, (err, username) => {
      res.status(201).end();
    });
  }
};
