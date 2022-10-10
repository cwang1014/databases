var db = require('../db');

module.exports = {
  getAll: function (callback) {
    db.query('SELECT * FROM messages INNER JOIN users ON (messages.user_id=users.id) ORDER BY messages.id DESC', (err, messages) => {
      if (err) {
        console.log('err', err);
        callback(err);
      }
      callback(null, messages);
    });
  }, // a function which produces all the messages
  create: function (message, callback) {
    db.query('INSERT INTO messages (user_id, roomname, messageText, createdAt) VALUES ((SELECT id FROM users WHERE username = ? limit 1), ?, ?, ?)', [message.username, message.roomname, message.text, message.createdAt], (err, message) => {
      callback(err, message);
    });
  } // a function which can be used to insert a message into the database
};
