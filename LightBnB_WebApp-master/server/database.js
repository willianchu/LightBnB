const properties = require('./json/properties.json');
const users = require('./json/users.json');

const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

console.log("pool");
pool
  .query(`
  SELECT * FROM users ORDER BY id ASC LIMIT 5;
  `)
  .then((result) => console.log(result.rows))
  .catch((err) => {
    console.log('Error adding user', err.message);
  });

// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithEmail = function(email) {
  const loweredEmail = email.toLowerCase();
  return pool
    .query(`SELECT id, name, email, password 
            FROM users 
            WHERE email = $1;`, [loweredEmail])
    .then((result) => {
      const obj = {
        id: result.rows[0].id,
        name: result.rows[0].name,
        email: result.rows[0].email,
        password: result.rows[0].password
      };
      if (obj.email === loweredEmail) {
        return obj;
      } else {
        return null;
      }
    })
    .catch((err) => {
      console.log('Error retrieving user details - email', err.message);
    });
};
exports.getUserWithEmail = getUserWithEmail;


/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
 */
const getUserWithId = function(id) {
  return pool
    .query(`SELECT id, name, email, password 
            FROM users 
            WHERE id = $1;`, [id])
    .then((result) => {
      const obj = {
        id: result.rows[0].id,
        name: result.rows[0].name,
        email: result.rows[0].email,
        password: result.rows[0].password
      };
      if (obj.id === id) {
        return obj;
      } else {
        return null;
      }
    })
    .catch((err) => {
      console.log('Error retrieving user details - id', err.message);
    });
};
exports.getUserWithId = getUserWithId;


/**
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
 */
const addUser =  function(user) {
  const userId = Object.keys(users).length + 1;
  user.id = userId;
  users[userId] = user;
  
  return pool
    .query(`
    INSERT INTO users (name, email, password)
    VALUES ($1, $2, $3) RETURNING *;`, [user.name, user.email, user.password])
    .then((result) => result.rows)
    .catch((err) => {
      console.log('Error adding user', err.message);
    });
};
exports.addUser = addUser;

/// Reservations

/**
 * Get all reservations for a single user.
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
 */
const getAllReservations = function(guest_id, limit = 10) {
  return pool
    .query(`SELECT *
            FROM reservations
            WHERE guest_id = $1 AND start_date >= now()::date AND end_date >= now()::date
            LIMIT 10;
            `, [guest_id])
    .then((result) => result.rows)
    .catch((err) => {
      console.log('Error retrieving all properties', err.message);
    });
};
exports.getAllReservations = getAllReservations;

/// Properties

/**
 * Get all properties.
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
 */
const getAllProperties = (options, limit = 10) => {
  return pool
    .query(`SELECT * FROM properties LIMIT $1`, [limit])
    .then((result) => result.rows)
    .catch((err) => {
      console.log('Error retrieving all properties', err.message);
    });
};
exports.getAllProperties = getAllProperties;


/**
 * Add a property to the database
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
 */
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
};
exports.addProperty = addProperty;
