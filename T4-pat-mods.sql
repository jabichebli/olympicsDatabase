/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pat-mods.sql

--Student ID: 31444059
--Student Name: Jason Abi Chebli


/* Comments for your marker:

Some comments/notes about the code I wrote:
(a):
    To add the Roles, since the roles 'will remain unchanged', was added as a check constraint.

(b):
    To add the Complaints, We need a lookup table for the different types of complaints to also avoid data anomalies.
    Adding the four different complaint categories in complaint_category table was treated as one transaction (hence, only one commit after four inserts).

*/

/*(a)*/

-- Add a column to Official to add the Role
ALTER TABLE official
    ADD off_role CHAR(
        1
    ) DEFAULT 'G' NOT NULL;

-- Add Comments
COMMENT ON COLUMN official.off_role IS
    'Official Role (G = General, A = Administrator, H = Head Coach, C = Coach, P = Physician)';

-- Add the Check Constraint
ALTER TABLE official
    ADD CHECK (
        off_role IN ( 'G', 'A', 'H', 'C', 'P' )
    );

-- Update all the officials who are the Chief de Mission as 'Administrator'
UPDATE official
SET
    off_role = (
        'A'
    )
WHERE
    off_cdm IS NULL;

COMMIT;

-- Show the Changes Made (modification to offiical table)
SELECT
    *
FROM
    official;

desc official;

/*(b)*/

-- Drop Complaint Table
DROP TABLE complaint CASCADE CONSTRAINTS;

-- Drop Complaint Category Table
DROP TABLE complaint_category CASCADE CONSTRAINTS;

-- Add Complaint Category table
CREATE TABLE complaint_category(
    comp_cat_id NUMBER(2) NOT NULL,
    comp_cat_name VARCHAR2(30) NOT NULL,
    comp_cat_demerit NUMBER(2) NOT NULL
);

-- Add Comments
COMMENT ON COLUMN complaint_category.comp_cat_id IS
    'Complaint Category ID';
COMMENT ON COLUMN complaint_category.comp_cat_name IS
    'Complaint Category Name';
COMMENT ON COLUMN complaint_category.comp_cat_demerit IS
    'Complaint Category Number of Demerit Points';

-- Assign the primary key in table
ALTER TABLE complaint_category
    ADD CONSTRAINT complaint_category_pk PRIMARY KEY (
        comp_cat_id
    );

-- Add Complaint table
CREATE TABLE complaint (
    comp_dt DATE NOT NULL,
    comp_cat_id NUMBER(2) NOT NULL,
    comp_comments VARCHAR(100),
    trip_id NUMBER(4) NOT NULL,
    comp_valid CHAR(1)
);

-- Add Comments
COMMENT ON COLUMN complaint.comp_dt IS
    'Complaint Date and Time';
COMMENT ON COLUMN complaint.comp_cat_id IS
    'Complaint Category ID';
COMMENT ON COLUMN complaint.comp_comments IS
    'Complaint Detailed Comments';
COMMENT ON COLUMN complaint.trip_id IS
    'Identifier for a trip';
COMMENT ON COLUMN complaint.comp_valid IS
    'Valid Complaint';


-- Assign the primary key in table
ALTER TABLE complaint
    ADD CONSTRAINT complaint_pk PRIMARY KEY (
        comp_dt,
        trip_id
    );

-- Assign the foreign key in Complaint Table
ALTER TABLE complaint
    ADD CONSTRAINT complaint_category_complaint_fk FOREIGN KEY (
        comp_cat_id
    )
        REFERENCES complaint_category (
            comp_cat_id
        );

-- Add Check Constraint for Validating the Complaint
ALTER TABLE complaint
    ADD CHECK (
        comp_valid IN ( 'N', 'Y' )
    );

--  Drop Complaint Category Sequence
DROP SEQUENCE complaint_category_seq;

-- Create Sequence
CREATE SEQUENCE complaint_category_seq START WITH 1 INCREMENT BY 1;

-- Insert the current different roles into the table
INSERT INTO complaint_category VALUES(
    complaint_category_seq.NEXTVAL,
    'late arrival',
    1
);

INSERT INTO complaint_category VALUES(
    complaint_category_seq.NEXTVAL,
    'rude behaviour',
    2
);

INSERT INTO complaint_category VALUES(
    complaint_category_seq.NEXTVAL,
    'poor driving',
    2
);

INSERT INTO complaint_category VALUES(
    complaint_category_seq.NEXTVAL,
    'failing to assist',
    1
);

COMMIT;

-- Show the Changes Made (the creation of complaint and complaint_category tables)
SELECT
    *
FROM
    complaint;

desc complaint;

SELECT
    *
FROM
    complaint_category;

desc complaint_category;