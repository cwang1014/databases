var db = require('../db');

module.exports = {
  getAll: function (callback) {
    db.query('SELECT * FROM users', (err, usernames) => {
      callback(err, usernames);
    });
  },
  create: function (username, callback) {
    db.query('INSERT INTO users (username) VALUES (?)', [username], (err, username) => {
      callback(err, username);
    });
  }
};
