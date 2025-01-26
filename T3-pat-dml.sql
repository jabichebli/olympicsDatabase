/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID: 31444059
--Student Name: Jason Abi Chebli

/* Comments for your marker:

In general, every insert/update/delete was followed by a commit to avoid keeping transactions open for long periods of time and ensuring transaction reach commit. 
The only excpetion is task c, as we are asked to make the two trips (inserts) as ONE booking/transaction.

(b):
Assumptions made include: vehicle rego number ('ADI23S1'), vehicle year ('2020') and vehicle odometer (204002) 

(c):
Assumptions made include:  Franklin Gateau is the only passenger (1 passenger), no one else has the same first and lastname as Franklin Gateau.

(d):
Assumption made that all trips after 5pm were cancelled, while if she was on a trip at 5pm exactly, that should remain in the system as unfinished/incomplete.

*/

/*(a)*/

-- Drop Sequences
DROP SEQUENCE official_seq;

DROP SEQUENCE trip_seq;

-- Create Sequences
CREATE SEQUENCE official_seq START WITH 100 INCREMENT BY 10;

CREATE SEQUENCE trip_seq START WITH 100 INCREMENT BY 10;

/*(b)*/
-- Insert the Official
INSERT INTO official VALUES(
    official_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT cr_ioc_code FROM country_region WHERE upper(cr_name) = upper('St Vincent and the Grenadines')),
    NULL
);

COMMIT;

-- Insert the Vehicle
INSERT INTO vehicle VALUES(
    '1C4SDHCT9FC614231',
    'ADI23S1',
    TO_DATE('2020', 'YYYY'),
    204002,
    6,
    (SELECT vm_model_id FROM vehicle_model NATURAL JOIN manufacturer WHERE upper(vm_model) = upper('ALPHARD') AND upper(man_name) = upper('TOYOTA'))
);

COMMIT;

/*(c)*/

INSERT INTO trip VALUES(
    trip_seq.NEXTVAL,
    1,
    TO_DATE('30 July 2024 12:30 PM', 'dd Month YYYY hh:mi AM'),
    NULL,
    (TO_DATE('30 July 2024 12:30 PM', 'dd Month YYYY hh:mi AM')) + (1/24) + (30/(24*60)),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given) = upper('Franklin') AND upper(off_family) = upper('Gateau'))
);

INSERT INTO trip VALUES(
    trip_seq.NEXTVAL,
    1,
    TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM'),
    NULL,
    TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM') + (1/24) + (15/(24*60)),
    NULL,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE upper(driver_licence) = upper('55052a543210')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM location WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given) = upper('Franklin') AND upper(off_family) = upper('Gateau'))
);

COMMIT;

/*(d)*/

UPDATE trip
SET
    trip_act_pickupdt = TO_DATE(
        '30 July 2024 12:30 PM',
        'dd Month YYYY hh:mi AM'
    ),
    trip_act_dropoffdt = TO_DATE(
        '30 July 2024 2:15 PM',
        'dd Month YYYY hh:mi AM'
    )
WHERE
    trip_id = (
        SELECT
            trip_id
        FROM
            trip
        WHERE
            trip_int_pickupdt = TO_DATE('30 July 2024 12:30 PM', 'dd Month YYYY hh:mi AM')
            AND trip_int_dropoffdt = TO_DATE('30 July 2024 2:00 PM', 'dd Month YYYY hh:mi AM')
            AND upper(veh_vin) = upper('1C4SDHCT9FC614231')
            AND driver_id = (
                SELECT
                    driver_id
                FROM
                    driver
                WHERE
                    upper(driver_licence) = upper('55052a543210')
            )
    );

COMMIT;

DELETE FROM trip
WHERE
    trip_int_pickupdt > TO_DATE('30 July 2024 05:00 PM', 'dd Month YYYY hh:mi AM')
    AND trip_int_pickupdt < TO_DATE('31 July 2024 12:00 AM', 'dd Month YYYY hh:mi AM')
    AND driver_id = (
        SELECT
            driver_id
        FROM
            driver
        WHERE
            upper(driver_licence) = upper('55052a543210')
    );

COMMIT;