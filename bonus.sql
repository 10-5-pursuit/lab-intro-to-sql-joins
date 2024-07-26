-- Query for hotels that allow pets
 SELECT DISTINCT
hotels.name
 FROM
  hotels
 JOIN
  rooms
 ON
  hotels.id = rooms.hotel_id
 WHERE
  hotels.pets IS TRUE;

-- Query for hotels that allow pets AND have vacancies
SELECT DISTINCT
hotels.name
 FROM
  hotels
 JOIN
  rooms
 ON
  hotels.id = rooms.hotel_id
 WHERE
  hotels.pets IS TRUE AND rooms.vacant = TRUE;

-- Query for the average room price for a hotel that allows pets
SELECT AVG(price) FROM
  hotels
 JOIN
  rooms
 ON
  hotels.id = rooms.hotel_id
 WHERE
  hotels.pets IS TRUE;


-- Query for the most expensive room
SELECT MAX(price) FROM rooms;


-- Query for the average price of a room that has a name that includes queen in it (case insensitive)
SELECT AVG(price) FROM
  hotels
 JOIN
  rooms
 ON
  hotels.id = rooms.hotel_id
 WHERE
  rooms.name ILIKE '%queen%';



-- Update a room at Hotel California with room number 202 from vacant-true to vacant-false.
SELECT * FROM hotels INNER JOIN rooms ON hotels.id = rooms.hotel_id  WHERE rooms.room_num = 202 AND hotels.name = 'Hotel California' ;
UPDATE rooms SET vacant = FALSE WHERE rooms.room_num = 202 RETURNING *;


-- Update all the rooms with the hotel_id of 7 to have now a hotel_id that matches the Grand Budapest Hotel
UPDATE rooms SET hotel_id = 6 WHERE hotel_id = 7 RETURNING *;


