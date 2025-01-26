/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID: 31444059
--Student Name: Jason Abi Chebli


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    JSON_OBJECT ( 
    '_id' VALUE DRIVER_ID, 
    'name' VALUE DRIVER_GIVEN || ' '
    || DRIVER_FAMILY,
    'licence_num' VALUE DRIVER_LICENCE,
    'no_of_trips' VALUE COUNT(TRIP_ID), -- 
    'suspended' VALUE DRIVER_SUSPENDED, 
    'trips_info' VALUE JSON_ARRAYAGG ( 
    JSON_OBJECT(
        'trip_id' VALUE TRIP_ID, 
        'veh_vin'   VALUE VEH_VIN, 
        'pick-up' VALUE JSON_OBJECT (
            'location_id' VALUE pickup_locn_id,
            'location_name' VALUE p.LOCN_NAME,
            'intended_datetime' VALUE TO_CHAR(trip_int_pickupdt, 'DD/MM/YYYY HH24:MI'),
            'actual_datetime' VALUE TO_CHAR(trip_act_pickupdt, 'DD/MM/YYYY HH24:MI')
        ),
        'drop off' VALUE JSON_OBJECT (
            'location_id' VALUE DROPOFF_LOCN_ID,
            'location_name' VALUE d.LOCN_NAME, 
            'intended_datetime' VALUE TO_CHAR(TRIP_INT_DROPOFFDT, 'DD/MM/YYYY HH24:MI'),
            'actual_datetime' VALUE TO_CHAR(TRIP_ACT_DROPOFFDT, 'DD/MM/YYYY HH24:MI')
        ) 
        ) format JSON))
    || ','
FROM
    driver
    NATURAL JOIN trip 
    JOIN LOCATION p ON p.LOCN_ID = pickup_locn_id
    JOIN LOCATION d ON d.LOCN_ID = DROPOFF_LOCN_ID
GROUP BY
    DRIVER_ID, 
    DRIVER_GIVEN, 
    DRIVER_FAMILY, 
    DRIVER_LICENCE, 
    DRIVER_SUSPENDED
ORDER BY
    DRIVER_ID;