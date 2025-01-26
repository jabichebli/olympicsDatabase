/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID: 31444059
--Student Name: Jason Abi Chebli

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO official
--------------------------------------

-- Team USA

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    1,
    'Michael',
    'Phelps',
    'USA',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    2,
    'Simone',
    'Biles',
    'USA',
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    3,
    'Mark',
    'Spitz',
    'USA',
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    4,
    'Serena',
    'Wiliams',
    'USA',
    1
);

-- Team JAM

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    5,
    'Usain',
    'Bolt',
    'JAM',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    6,
    'Shelly-Ann',
    'Fraser-Pryce',
    'JAM',
    5
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    7,
    'Veronica',
    'Campbell-Brown',
    'JAM',
    5
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    8,
    'Asafa',
    'Powell',
    'JAM',
    5
);

-- Team GER

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    9,
    'Jesse',
    'Owens',
    'GER',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    10,
    'Franziska',
    'Van Almsick',
    'GER',
    9
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    11,
    'Birgit',
    'Fischer',
    'GER',
    9
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    12,
    'Michael',
    'Schumacher',
    'GER',
    9
);

-- Team AUS

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    13,
    'Dawn',
    'Fraser',
    'AUS',
    NULL
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    14,
    'Ian',
    'Thorpe',
    'AUS',
    13
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    15,
    'Cathy',
    'Freeman',
    'AUS',
    13
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm
) VALUES (
    16,
    'Michael',
    'Klim',
    'AUS',
    13
);

--------------------------------------
--INSERT INTO vehicle
--------------------------------------

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000001',
    'AAAA000',
    TO_DATE('2001', 'YYYY'),
    482339,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000002',
    'AAAA001',
    TO_DATE('2001', 'YYYY'),
    623204,
    5,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000003',
    'AAAA002',
    TO_DATE('2001', 'YYYY'),
    391823,
    5,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000004',
    'AAAA003',
    TO_DATE('2001', 'YYYY'),
    823726,
    5,
    4
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000005',
    'AAAA004',
    TO_DATE('2002', 'YYYY'),
    207393,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000006',
    'AAAA005',
    TO_DATE('2002', 'YYYY'),
    963232,
    5,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000007',
    'AAAA006',
    TO_DATE('2002', 'YYYY'),
    151294,
    5,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000008',
    'AAAA007',
    TO_DATE('2002', 'YYYY'),
    742306,
    5,
    4
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000009',
    'AAAA008',
    TO_DATE('2003', 'YYYY'),
    604279,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000010',
    'AAAA009',
    TO_DATE('2003', 'YYYY'),
    235735,
    5,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000011',
    'AAAA010',
    TO_DATE('2003', 'YYYY'),
    804212,
    5,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000012',
    'AAAA011',
    TO_DATE('2003', 'YYYY'),
    579034,
    5,
    4
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000013',
    'AAAA012',
    TO_DATE('2004', 'YYYY'),
    313223,
    5,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000014',
    'AAAA013',
    TO_DATE('2004', 'YYYY'),
    234233,
    5,
    2
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000015',
    'AAAA014',
    TO_DATE('2004', 'YYYY'),
    123132,
    5,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '00000000000000016',
    'AAAA015',
    TO_DATE('2004', 'YYYY'),
    213121,
    5,
    4
);

--------------------------------------
--INSERT INTO trip
--------------------------------------


INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    1,
    2,
    TO_DATE('21-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('21-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000001',
    2001,
    101,
    102,
    'en',
    1
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    2,
    2,
    TO_DATE('23-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('23-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000001',
    2001,
    102,
    103,
    'en',
    1
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    3,
    3,
    TO_DATE('25-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('25-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000001',
    2001,
    103,
    104,
    'en',
    1
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    4,
    2,
    TO_DATE('27-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('27-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000001',
    2001,
    104,
    105,
    'en',
    1
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    5,
    3,
    TO_DATE('29-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('29-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000001',
    2001,
    105,
    106,
    'en',
    1
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    6,
    2,
    TO_DATE('21-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('21-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000002',
    2002,
    101,
    102,
    'fr',
    2
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    7,
    3,
    TO_DATE('23-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('23-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000002',
    2002,
    102,
    103,
    'fr',
    2
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    8,
    3,
    TO_DATE('25-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('25-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000002',
    2002,
    103,
    104,
    'fr',
    2
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    9,
    2,
    TO_DATE('27-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('27-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000002',
    2002,
    104,
    105,
    'fr',
    2
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    10,
    3,
    TO_DATE('29-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('29-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000002',
    2002,
    105,
    106,
    'fr',
    2
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    11,
    2,
    TO_DATE('21-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('21-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000003',
    2012,
    101,
    102,
    'ar',
    3
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    12,
    2,
    TO_DATE('23-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('23-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000003',
    2012,
    102,
    103,
    'ar',
    3
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    13,
    1,
    TO_DATE('25-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('25-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000003',
    2012,
    103,
    104,
    'ar',
    3
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    14,
    2,
    TO_DATE('27-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('27-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000003',
    2012,
    104,
    105,
    'ar',
    3
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    15,
    3,
    TO_DATE('29-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('29-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000003',
    2012,
    105,
    106,
    'ar',
    3
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    16,
    2,
    TO_DATE('21-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('21-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000004',
    2004,
    101,
    102,
    'pt',
    4
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    17,
    2,
    TO_DATE('23-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('23-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000004',
    2004,
    102,
    103,
    'pt',
    4
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    18,
    4,
    TO_DATE('25-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('25-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000004',
    2004,
    103,
    104,
    'pt',
    4
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    19,
    2,
    TO_DATE('27-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('27-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000004',
    2004,
    104,
    105,
    'pt',
    4
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    20,
    2,
    TO_DATE('29-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('29-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000004',
    2004,
    105,
    106,
    'pt',
    4
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    21,
    2,
    TO_DATE('21-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('21-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('22-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000005',
    2013,
    101,
    102,
    'zh',
    5
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    22,
    2,
    TO_DATE('23-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('23-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('24-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000005',
    2013,
    102,
    103,
    'zh',
    5
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    23,
    2,
    TO_DATE('25-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('25-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('26-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000005',
    2013,
    103,
    104,
    'zh',
    5
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    24,
    2,
    TO_DATE('27-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('27-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('28-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000005',
    2013,
    104,
    105,
    'zh',
    5
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    25,
    2,
    TO_DATE('29-07-2024 10:04:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('29-07-2024 10:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:02:00', 'DD-MM-YYYY hh24:mi:ss'),
    TO_DATE('30-07-2024 12:04:32', 'DD-MM-YYYY hh24:mi:ss'),
    '00000000000000005',
    2013,
    105,
    106,
    'zh',
    5
);

COMMIT;