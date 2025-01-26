--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T5-pat-plsql.sql

--Student ID: 31444059
--Student Name: Jason Abi Chebli

/* Comments for your marker:

Removed the SET SERVEROUTPUT ON AND SET ECHO ON keywords that was originally a part of the code, to avoid loss of marks.

Assumptions:
(a):
    Assume that all drivers when they first get added have 0 demerits as a default. 

*/

--(a)
-- Write your trigger statement,
-- finish it with a slash(/) followed by a blank line

-- Alter the driver table to have a column for number of dermit points
ALTER TABLE driver
    ADD driver_demerits NUMBER(
        2
    ) DEFAULT 0 NOT NULL;

-- Add Comments
COMMENT ON COLUMN driver.driver_demerits IS
    'Driver Total Number of Demerits';

/*-------------------------------*/
/* CHECK DRIVER DEMERITS TRIGGER */
/*-------------------------------*/

CREATE OR REPLACE TRIGGER check_driver_demerits AFTER
    UPDATE OF comp_valid ON complaint FOR EACH ROW
DECLARE
    total_demerits   NUMBER;
    current_demerits NUMBER;
    points_lost      NUMBER;
    d_id             NUMBER;
BEGIN

    -- Get the driver ID
    SELECT
        driver_id INTO d_id
    FROM
        trip
    WHERE
        trip_id = :new.trip_id;

    -- Get the total number of demerit points (Before updating)
    SELECT
        driver_demerits INTO current_demerits
    FROM
        driver
    WHERE
        driver_id = d_id;

    -- Check whether the complaint has been made valid
    IF upper(:new.comp_valid) = upper('Y') THEN
 
        -- Get the number of demerit Points
        SELECT
            comp_cat_demerit INTO points_lost
        FROM
            complaint_category
        WHERE
            comp_cat_id = :new.comp_cat_id;
 
        -- Update the driver's number of demerit points
        UPDATE driver
        SET
            driver_demerits = current_demerits + points_lost
        WHERE
            driver_id = d_id;
 
        -- Get the total number of demerit points (After updating)
        SELECT
            driver_demerits INTO total_demerits
        FROM
            driver
        WHERE
            driver_id = d_id;
 
        -- Check if the driver should be suspended
        IF total_demerits >=4 THEN
 
            -- Update the driver suspended status
            UPDATE driver
            SET
                driver_suspended = 'Y'
            WHERE
                driver_id = d_id;
 
            -- Inform the user that the driver has been suspended
            dbms_output.put_line('The driver #' || d_id ||' has been suspended. This is because they now have '|| total_demerits ||' demerit points.');
        ELSE
 
            -- Inform the user that the demerit points have been added
            dbms_output.put_line('The driver #' || d_id ||' demerit points have been updated. They now have '|| total_demerits ||' demerit point(s).');
        END IF;
    ELSE
 
        -- Inform the user that no demerit points have been added
        dbms_output.put_line('No demerit points have been added to the driver #' || d_id ||'. Their demerit points remain at '|| current_demerits ||' demerit point(s).');
    END IF;
END;
/


-- Write Test Harness for (a)

/*-------------------------------------------------------------*/
/* TEST 1: Checking whether we can add a demerit to one driver */
/*-------------------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the Driver Number of Demerits Currently
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2013';

-- Check the Complaints Table
SELECT
    *
FROM
    complaint;


-- Insert a Complaint
INSERT INTO complaint VALUES(
    TO_DATE('30 July 2024 01:30 PM', 'dd Month YYYY hh:mi AM'),
    1,
    'He was sooooo late - like 10min.',
    22,
    NULL
);


-- Check that the new Complaint has been added
SELECT
    *
FROM
    complaint;

---________________________________________________________---
-- || Test Trigger - Only one dermit (but not suspended) ||
---________________________________________________________---


BEGIN
    -- Update the Complaint to make it valid
    UPDATE complaint
    SET
        comp_valid = 'Y'
    WHERE
        comp_dt = TO_DATE('30 July 2024 01:30 PM', 'dd Month YYYY hh:mi AM')
        AND trip_id = 22;
END;
/

---__________________---
-- || After Value ||
---__________________---

-- Check that the new Complaint has been updated
SELECT
    *
FROM
    complaint;

-- Check that the driver has recieved demerit points
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2013';

/*-------------------------------------------------------------*/
/* TEST 2: Writing a case to make the driver get suspended */
/*-------------------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the Driver Number of Demerits Currently
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2002';

-- Check the Complaints Table
SELECT
    *
FROM
    complaint;

-- Insert a first Complaint
INSERT INTO complaint VALUES(
    TO_DATE('29 July 2024 01:30 PM', 'dd Month YYYY hh:mi AM'),
    1,
    'He was sooooo late to pick us up - like 10min.',
    7,
    NULL
);

-- Insert a second Complaint
INSERT INTO complaint VALUES(
    TO_DATE('29 July 2024 01:35 PM', 'dd Month YYYY hh:mi AM'),
    3,
    'The driver was such a poor driver - he ran a red light.',
    7,
    NULL
);


-- Insert a third Complaint
INSERT INTO complaint VALUES(
    TO_DATE('29 July 2024 02:30 PM', 'dd Month YYYY hh:mi AM'),
    1,
    'We arrived so late to the event - over 40minutes!!!!',
    7,
    NULL
);

-- Check that the new Complaint has been added
SELECT
    *
FROM
    complaint;


---____________________________________---
-- || Test Trigger - Fully Suspended ||
---____________________________________---


BEGIN
    -- Update the First Complaint to make it valid
    UPDATE complaint
    SET
        comp_valid = 'Y'
    WHERE
        comp_dt = TO_DATE('29 July 2024 01:30 PM', 'dd Month YYYY hh:mi AM')
        AND trip_id = 7;
    
    -- Update the Second Complaint to make it valid
    UPDATE complaint
    SET
        comp_valid = 'Y'
    WHERE
        comp_dt = TO_DATE('29 July 2024 01:35 PM', 'dd Month YYYY hh:mi AM')
        AND trip_id = 7;
    
    -- Update the Third Complaint to make it valid
    UPDATE complaint
    SET
        comp_valid = 'Y'
    WHERE
        comp_dt = TO_DATE('29 July 2024 02:30 PM', 'dd Month YYYY hh:mi AM')
        AND trip_id = 7;
END;
/

---__________________---
-- || After Value ||
---__________________---

-- Check that the new Complaints have been updated
SELECT
    *
FROM
    complaint;

-- Check that the driver has recieved demerit points and is suspended
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2002';

/*---------------------------------------*/
/* TEST 3: Creating an invalid complaint */
/*---------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the Driver Number of Demerits Currently
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2012';

-- Insert a Complaint
INSERT INTO complaint VALUES(
    TO_DATE('27 July 2024 12:30 PM', 'dd Month YYYY hh:mi AM'),
    2,
    'No comment',
    13,
    null
);

-- Check the Complaints Table
SELECT
    *
FROM
    complaint;

---____________________________________---
-- || Test Trigger - Invalid Complaint ||
---____________________________________---
BEGIN
    UPDATE complaint
    SET
        comp_valid = 'N'
    WHERE
        comp_dt = TO_DATE('27 July 2024 12:30 PM', 'dd Month YYYY hh:mi AM')
        AND trip_id = 13;
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the new Complaints have been updated
SELECT
    *
FROM
    complaint;

-- Check that the driver has NOT recieved demerit points
SELECT
    *
FROM
    driver
WHERE
    driver_id = '2012';

-- close the transaction
ROLLBACK;
-- End of Test Harness 

--(b)
-- Complete the procedure below
-- finish it with a slash(/) followed by a blank line
CREATE OR REPLACE PROCEDURE PRC_INSERT_TRIP (
    P_OFF_ID IN NUMBER,
    P_NOPASSENGERS IN NUMBER,
    P_INT_PICKUPDT IN DATE,
    P_INT_DROPOFFDT IN DATE,
    P_PICKUP_LOCN_NAME IN VARCHAR2,
    P_DROPOFF_LOCN_NAME IN VARCHAR2,
    P_LANG_NAME IN VARCHAR2,
    P_VEH_VIN IN CHAR,
    P_DRIVER_ID IN NUMBER,
    P_OUTPUT OUT VARCHAR2
) IS
    p_car_capacity NUMBER;
    p_suspended CHAR;
    p_pickup_id NUMBER;
    p_dropoff_id NUMBER;
    p_car_available NUMBER;
    p_driver_available NUMBER;

BEGIN
    -- Get the car capacity
    SELECT
        VEH_NOPASSENGERS INTO P_CAR_CAPACITY
    FROM
        VEHICLE
    WHERE
        UPPER(VEH_VIN) = UPPER(P_VEH_VIN);

    -- Get the driver suspension status 
    SELECT 
        driver_suspended into p_suspended
    FROM
        DRIVER
    WHERE 
        DRIVER_ID = P_DRIVER_ID;

    -- Get the pick up Location ID
    SELECT 
        LOCN_ID into p_pickup_id
    FROM
        LOCATION
    WHERE 
        UPPER(LOCN_NAME) = UPPER(P_PICKUP_LOCN_NAME);

    -- Get the drop off Location ID
    SELECT 
        LOCN_ID into p_dropoff_id
    FROM
        LOCATION
    WHERE 
        UPPER(LOCN_NAME) = UPPER(P_DROPOFF_LOCN_NAME);

    -- Check if the car is available 
    SELECT 
        COUNT(VEH_VIN) INTO p_car_available
    FROM 
        TRIP
    WHERE 
        UPPER(VEH_VIN) = UPPER(P_VEH_VIN) AND 
        NOT((P_INT_PICKUPDT < TRIP_INT_PICKUPDT AND P_INT_DROPOFFDT < TRIP_INT_PICKUPDT) OR 
        (P_INT_PICKUPDT > TRIP_INT_PICKUPDT AND P_INT_DROPOFFDT > trip_int_dropoffdt));

    -- Check if the driver is available 
    SELECT              
        COUNT(driver_id) INTO p_driver_available
    FROM 
        TRIP
    WHERE 
        driver_Id = P_DRIVER_ID AND 
        NOT((P_INT_PICKUPDT < TRIP_INT_PICKUPDT AND  P_INT_DROPOFFDT < TRIP_INT_PICKUPDT) OR 
        (P_INT_PICKUPDT > TRIP_INT_PICKUPDT AND  P_INT_DROPOFFDT > trip_int_dropoffdt));
    
    -- Check if the number of passengers inputted are negative 
    IF P_NOPASSENGERS <= 0 THEN
        P_OUTPUT := 'Invalid number of passengers for this vehicle. You have selected '|| P_NOPASSENGERS  ||' passenger(s) for this trip. The vehicle must take at least 1 passenger. Please select the correct number of passengers.';
    ELSE
        -- Check if number of passengers in car is valid
        IF P_CAR_CAPACITY < P_NOPASSENGERS THEN 
            P_OUTPUT := 'Invalid number of passengers for this vehicle. This vehicle can only hold ' || P_CAR_CAPACITY || ' passenger(s), but you have specified to have '|| P_NOPASSENGERS ||' passenger(s). Please choose another vehicle.';
        ELSE
            -- Check pickup datetime is before dropoff datetime
            IF P_INT_PICKUPDT > P_INT_DROPOFFDT THEN 
                P_OUTPUT := 'Invalid drop off and pick up date and time selected. Please ensure you select a drop off date and time (currently ' || to_char(P_INT_DROPOFFDT,'dd Month YYYY hh:mi AM') ||') that occurs after your pick up date and time (currently ' || to_char(P_INT_PICKUPDT,'dd Month YYYY hh:mi AM') ||').'; 
            ELSE    
                -- Check pickup location and dropoff location are different
                IF p_pickup_id = p_dropoff_id THEN 
                    P_OUTPUT := 'Invalid pick up and drop off location. You cannot be dropped off from the same location  you were picked up (' || P_DROPOFF_LOCN_NAME || '). Please choose a different pick up or drop off location.'; 
                ELSE
                    -- Check that the driver has been suspended
                    IF upper(p_suspended) = UPPER('Y') THEN
                        P_OUTPUT := 'Invalid driver selected. The current driver (#' || P_DRIVER_ID ||') has been suspended. Please select another driver.';
                    ELSE
                    
                        -- Check that the driver is available
                        IF p_driver_available <> 0 THEN
                            P_OUTPUT := 'Invalid driver selected. The current driver (#' || P_DRIVER_ID ||') is not available at the selected time. Please select another driver or change the selected times.';
                        ELSE
                            -- Check that the car is available 
                            IF p_car_available <> 0 THEN
                                P_OUTPUT := 'Invalid car selected. The current car (#' || P_VEH_VIN ||')  is not available at the selected time. Please select another car or change the selected times.';
                            ELSE
                                -- Insert the trip
                                INSERT INTO TRIP VALUES(TRIP_SEQ.NEXTVAL, P_NOPASSENGERS, P_INT_PICKUPDT, NULL, P_INT_DROPOFFDT, NULL, P_VEH_VIN, P_DRIVER_ID, p_pickup_id, p_dropoff_id, P_LANG_NAME, P_OFF_ID);

                                -- Inform the user of successful input
                                P_OUTPUT := 'Trip #' || TRIP_SEQ.CURRVAL || ' was successfully booked.';
                            END IF;
                        END IF;
                    END IF;
                END IF;
            END IF;
        END IF;
    END IF;
exception      
    WHEN OTHERS THEN
        P_OUTPUT := SQLERRM;
END;
/

-- Write Test Harness for (b)


/*----------------------------------------------------------------*/
/* TEST 1: Inputting an invalid number of passengers (too many)   */
/*----------------------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---___________________________________________________________________________---
-- || Execute Procedure - Test Invalid Number of Passengers (no passengers) ||
---___________________________________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,0,TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2001,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;

/*----------------------------------------------------------------*/
/* TEST 2: Inputting an invalid number of passengers (too many)   */
/*----------------------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---___________________________________________________________---
-- || Execute Procedure - Test Invalid Number of Passengers ||
---___________________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,20,TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2001,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;

/*----------------------------------------------------*/
/* TEST 3: Inputting an invalid pickup/dropoff date   */
/*----------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---___________________________________________________________---
-- || Execute Procedure - Test Invalid Pickup/Dropoff Date   ||
---___________________________________________________________---
DECLARE
    output VARCHAR2(400);
BEGIN
    PRC_INSERT_TRIP(1,5,TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 06:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2001,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;

/*--------------------------------------------------------*/
/* TEST 4: Inputting an invalid pickup/dropoff location   */
/*--------------------------------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---______________________________________________________________---
-- || Execute Procedure - Test Invalid Pickup/Drofoff Location ||
---______________________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,4,TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Porte de la Chapelle Arena','en','1C4SDHCT9FC614231',2001,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;


/*---------------------------------------------------*/
/* TEST 5: Inputting an invalid (suspended) driver   */
/*---------------------------------------------------*/


---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

-- Make a driver suspended 
UPDATE 
    DRIVER
SET
    DRIVER_SUSPENDED = 'Y'
WHERE 
    DRIVER_ID = 2002;

-- Show the driver is suspended
SELECT
    *
FROM 
    DRIVER
WHERE 
    DRIVER_ID = 2002;

---___________________________________________________________---
-- || Execute Procedure - Test Invalid (Suspended) Driver ||
---___________________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,4,TO_DATE('30 July 2024 08:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2002,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;


/*----------------------------------------------*/
/* TEST 6: Inputting an invalid (busy) driver   */
/*----------------------------------------------*/


---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---____________________________________________________---
-- || Execute Procedure - Test Invalid (Busy) Driver ||
---____________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,4,TO_DATE('23-07-2024 10:05:00','DD-MM-YYYY hh24:mi:ss'), TO_DATE('24-07-2024 12:02:00','DD-MM-YYYY hh24:mi:ss'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2004,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;


/*-------------------------------------------*/
/* TEST 7: Inputting an invalid (busy) car   */
/*-------------------------------------------*/


---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---_________________________________________________---
-- || Execute Procedure - Test Invalid (Busy) Car ||
---_________________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,4,TO_DATE('23-07-2024 10:05:00','DD-MM-YYYY hh24:mi:ss'), TO_DATE('24-07-2024 12:02:00','DD-MM-YYYY hh24:mi:ss'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','00000000000000004',2009,output);
    dbms_output.put_line(output);
END;
/


---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was not added
SELECT
    *
FROM
    trip;

/*----------------------------------*/
/* TEST 8: Inputting a valid trip   */
/*----------------------------------*/

---__________________---
-- || Before Value ||
---__________________---

-- Check the current trips
SELECT
    *
FROM
    trip;

---_________________________________________---
-- || Execute Procedure - Test Valid Trip ||
---_________________________________________---
DECLARE
    output VARCHAR2(200);
BEGIN
    PRC_INSERT_TRIP(1,5,TO_DATE('30 July 2024 9:00 PM', 'dd Month YYYY hh:mi AM'), TO_DATE('30 July 2024 10:00 PM', 'dd Month YYYY hh:mi AM'),'Porte de la Chapelle Arena', 'Olympic and Paralympic Village','en','1C4SDHCT9FC614231',2001,output);
    dbms_output.put_line(output);
END;
/

---__________________---
-- || After Value ||
---__________________---

-- Check that the trip was added
SELECT
    *
FROM
    trip;


-- close the transaction
ROLLBACK;
-- End of Test Harness 