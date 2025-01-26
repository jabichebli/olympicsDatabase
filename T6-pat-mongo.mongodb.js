// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T6-pat-mongo.mongodb.js

// Student ID: 31444059
// Student Name: Jason Abi Chebli

//Comments for your marker:

// ===================================================================================
// Do not add new comments to this playground
// OR modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update xyz001
// with your authcate username

use("jabi0003");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.drivertrip.drop();

// Create collection and insert documents
db.createCollection("drivertrip");

db.drivertrip.insertMany([
  {
    "_id": 2001,
    "name": "Pierre Martin",
    "licence_num": "120501123456",
    "no_of_trips": 5,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 1,
        "veh_vin": "00000000000000001",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 10:04",
          "actual_datetime": "21/07/2024 10:04"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "22/07/2024 12:02",
          "actual_datetime": "22/07/2024 12:04"
        }
      },
      {
        "trip_id": 5,
        "veh_vin": "00000000000000001",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "29/07/2024 10:04",
          "actual_datetime": "29/07/2024 10:04"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "30/07/2024 12:02",
          "actual_datetime": "30/07/2024 12:04"
        }
      },
      {
        "trip_id": 4,
        "veh_vin": "00000000000000001",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 10:04",
          "actual_datetime": "27/07/2024 10:04"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "28/07/2024 12:02",
          "actual_datetime": "28/07/2024 12:04"
        }
      },
      {
        "trip_id": 3,
        "veh_vin": "00000000000000001",
        "pick-up": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 10:04",
          "actual_datetime": "25/07/2024 10:04"
        },
        "drop off": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:02",
          "actual_datetime": "26/07/2024 12:04"
        }
      },
      {
        "trip_id": 2,
        "veh_vin": "00000000000000001",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "23/07/2024 10:04",
          "actual_datetime": "23/07/2024 10:04"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "24/07/2024 12:02",
          "actual_datetime": "24/07/2024 12:04"
        }
      }
    ]
  },
  {
    "_id": 2002,
    "name": "Marie Dupont",
    "licence_num": "34082A789012",
    "no_of_trips": 5,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 6,
        "veh_vin": "00000000000000002",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 10:04",
          "actual_datetime": "21/07/2024 10:04"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "22/07/2024 12:02",
          "actual_datetime": "22/07/2024 12:04"
        }
      },
      {
        "trip_id": 10,
        "veh_vin": "00000000000000002",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "29/07/2024 10:04",
          "actual_datetime": "29/07/2024 10:04"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "30/07/2024 12:02",
          "actual_datetime": "30/07/2024 12:04"
        }
      },
      {
        "trip_id": 9,
        "veh_vin": "00000000000000002",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 10:04",
          "actual_datetime": "27/07/2024 10:04"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "28/07/2024 12:02",
          "actual_datetime": "28/07/2024 12:04"
        }
      },
      {
        "trip_id": 8,
        "veh_vin": "00000000000000002",
        "pick-up": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 10:04",
          "actual_datetime": "25/07/2024 10:04"
        },
        "drop off": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:02",
          "actual_datetime": "26/07/2024 12:04"
        }
      },
      {
        "trip_id": 7,
        "veh_vin": "00000000000000002",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "23/07/2024 10:04",
          "actual_datetime": "23/07/2024 10:04"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "24/07/2024 12:02",
          "actual_datetime": "24/07/2024 12:04"
        }
      }
    ]
  },
  {
    "_id": 2004,
    "name": "Antoine Lefevre",
    "licence_num": "670495098765",
    "no_of_trips": 5,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 16,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 10:04",
          "actual_datetime": "21/07/2024 10:04"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "22/07/2024 12:02",
          "actual_datetime": "22/07/2024 12:04"
        }
      },
      {
        "trip_id": 20,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "29/07/2024 10:04",
          "actual_datetime": "29/07/2024 10:04"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "30/07/2024 12:02",
          "actual_datetime": "30/07/2024 12:04"
        }
      },
      {
        "trip_id": 19,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 10:04",
          "actual_datetime": "27/07/2024 10:04"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "28/07/2024 12:02",
          "actual_datetime": "28/07/2024 12:04"
        }
      },
      {
        "trip_id": 18,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 10:04",
          "actual_datetime": "25/07/2024 10:04"
        },
        "drop off": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:02",
          "actual_datetime": "26/07/2024 12:04"
        }
      },
      {
        "trip_id": 17,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "23/07/2024 10:04",
          "actual_datetime": "23/07/2024 10:04"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "24/07/2024 12:02",
          "actual_datetime": "24/07/2024 12:04"
        }
      }
    ]
  },
  {
    "_id": 2012,
    "name": " Mansour",
    "licence_num": "33022B678901",
    "no_of_trips": 5,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 11,
        "veh_vin": "00000000000000003",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 10:04",
          "actual_datetime": "21/07/2024 10:04"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "22/07/2024 12:02",
          "actual_datetime": "22/07/2024 12:04"
        }
      },
      {
        "trip_id": 15,
        "veh_vin": "00000000000000003",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "29/07/2024 10:04",
          "actual_datetime": "29/07/2024 10:04"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "30/07/2024 12:02",
          "actual_datetime": "30/07/2024 12:04"
        }
      },
      {
        "trip_id": 14,
        "veh_vin": "00000000000000003",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 10:04",
          "actual_datetime": "27/07/2024 10:04"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "28/07/2024 12:02",
          "actual_datetime": "28/07/2024 12:04"
        }
      },
      {
        "trip_id": 13,
        "veh_vin": "00000000000000003",
        "pick-up": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 10:04",
          "actual_datetime": "25/07/2024 10:04"
        },
        "drop off": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:02",
          "actual_datetime": "26/07/2024 12:04"
        }
      },
      {
        "trip_id": 12,
        "veh_vin": "00000000000000003",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "23/07/2024 10:04",
          "actual_datetime": "23/07/2024 10:04"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "24/07/2024 12:02",
          "actual_datetime": "24/07/2024 12:04"
        }
      }
    ]
  },
  {
    "_id": 2013,
    "name": "Lei Xiong",
    "licence_num": "441270890123",
    "no_of_trips": 5,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 21,
        "veh_vin": "00000000000000005",
        "pick-up": {
          "location_id": 101,
          "location_name": "Bordeaux Stadium",
          "intended_datetime": "21/07/2024 10:04",
          "actual_datetime": "21/07/2024 10:04"
        },
        "drop off": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "22/07/2024 12:02",
          "actual_datetime": "22/07/2024 12:04"
        }
      },
      {
        "trip_id": 25,
        "veh_vin": "00000000000000005",
        "pick-up": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "29/07/2024 10:04",
          "actual_datetime": "29/07/2024 10:04"
        },
        "drop off": {
          "location_id": 106,
          "location_name": "La Beaujoire Stadium",
          "intended_datetime": "30/07/2024 12:02",
          "actual_datetime": "30/07/2024 12:04"
        }
      },
      {
        "trip_id": 24,
        "veh_vin": "00000000000000005",
        "pick-up": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "27/07/2024 10:04",
          "actual_datetime": "27/07/2024 10:04"
        },
        "drop off": {
          "location_id": 105,
          "location_name": "South Paris Arena",
          "intended_datetime": "28/07/2024 12:02",
          "actual_datetime": "28/07/2024 12:04"
        }
      },
      {
        "trip_id": 23,
        "veh_vin": "00000000000000005",
        "pick-up": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "25/07/2024 10:04",
          "actual_datetime": "25/07/2024 10:04"
        },
        "drop off": {
          "location_id": 104,
          "location_name": "Eiffel Tower Stadium",
          "intended_datetime": "26/07/2024 12:02",
          "actual_datetime": "26/07/2024 12:04"
        }
      },
      {
        "trip_id": 22,
        "veh_vin": "00000000000000005",
        "pick-up": {
          "location_id": 102,
          "location_name": "Bercy Arena",
          "intended_datetime": "23/07/2024 10:04",
          "actual_datetime": "23/07/2024 10:04"
        },
        "drop off": {
          "location_id": 103,
          "location_name": "Champ de Mars Arena",
          "intended_datetime": "24/07/2024 12:02",
          "actual_datetime": "24/07/2024 12:04"
        }
      }
    ]
  },
  {
    "_id": 2014,
    "name": "Claire Robert",
    "licence_num": "55052a543210",
    "no_of_trips": 1,
    "suspended": "N",
    "trips_info": [
      {
        "trip_id": 100,
        "veh_vin": "1C4SDHCT9FC614231",
        "pick-up": {
          "location_id": 113,
          "location_name": "Olympic and Paralympic village",
          "intended_datetime": "30/07/2024 12:30",
          "actual_datetime": "30/07/2024 12:30"
        },
        "drop off": {
          "location_id": 111,
          "location_name": "Porte de La Chapelle Arena",
          "intended_datetime": "30/07/2024 14:00",
          "actual_datetime": "30/07/2024 14:15"
        }
      }
    ]
  }
]);

// List all documents you added
db.drivertrip.find();

// (c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

db.drivertrip.find(
  {
    "$or": [
      { "trips_info.drop off.location_name": "Champions Park" },
      { "trips_info.drop off.location_name": "Porte de La Chapelle Arena" }
    ]
  },
  { "_id": 0, "name": 1, "licence_num": 1 }
);

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Show document before the new trip is added and the driver is suspended
db.drivertrip.find({ "_id": 2004 });

// Add new trip and set the driver to suspended
db.drivertrip.updateOne(
  { "_id": 2004 },
  {
    "$set": {
      "suspended": "Y",
      "no_of_trips": 6
    },
    "$push": {
      "trips_info": {
        "trip_id": 26,
        "veh_vin": "00000000000000004",
        "pick-up": {
          "location_id": 117,
          "location_name": "Tuileries Garden",
          "intended_datetime": "10/08/2024 10:00",
          "actual_datetime": "10/08/2024 10:03"
        },
        "drop off": {
          "location_id": 118,
          "location_name": "Sainte-Chapelle",
          "intended_datetime": "10/08/2024 10:30",
          "actual_datetime": "10/08/2024 10:33"
        }
      }
    }
  }
);

// Illustrate/confirm changes made
db.drivertrip.find({ "_id": 2004 });
