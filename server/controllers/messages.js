var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.messages.getAll((err, messages) => {
      res.status(200).json(messages);
    });
  }, // a function which handles a get request for all messages
  post: function (req, res) {
    let message = req.body;
    message.createdAt = new Date();
    models.messages.create(message, (err, message) => {
      if (err) {
        console.error('Unable to post messages to the database: ', err);
        res.status(500).end();
      } else {
        res.status(201).end();
      }
    });
  } // a function which handles posting a message to the database
};
