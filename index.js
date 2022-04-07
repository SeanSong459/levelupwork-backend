const express = require("express");
const mysql = require("mysql2");
const dotenv = require("dotenv").config();

const app = express();
const cors = require("cors");

app.use(cors()); // Allow everyone to call the APIs
app.use(express.json()); // Middleware added to process the json body params

const connection = mysql.createConnection({
  host: process.env.HOST,
  database: process.env.DATABASE,
  user: process.env.USER,
  password: process.env.PASSWORD,
});

app.get("/learningobjectives", (req, res) => {
  console.log("Received a GET request to learningobjectives");

  // Run the SQL query, when you get a request to /
  connection.query(
    `SELECT * FROM database1.project WHERE ProjectID = 1;`,
    (error, result) => {
      if (error) {
        console.log("Error", error);
        res.send("You' got an error ! " + error.code);
      } else {
        console.log(result);
        res.send(result);
      }
    }
  );
});

app.get("/Instructions", (req, res) => {
  console.log("Received a GET request to Instructions");

  // Run the SQL query, when you get a request to /
  connection.query(
    `SELECT * FROM database1.project WHERE ProjectID = 1;`,
    (error, result) => {
      if (error) {
        console.log("Error", error);
        res.send("You' got an error ! " + error.code);
      } else {
        console.log(result);
        res.send(result);
      }
    }
  );
});

app.get("/Projects", (req, res) => {
  console.log("Received a GET request to Projects");

  // Run the SQL query, when you get a request to /
  connection.query(`SELECT * FROM database1.project;`, (error, result) => {
    if (error) {
      console.log("Error", error);
      res.send("You' got an error ! " + error.code);
    } else {
      console.log(result);
      res.send(result);
    }
  });
});

// app.post("/Projects", (req, res) => {
//   console.log("Received a POST request to Projects");
//   const Subscription = req.body.Subscription;
//   // Run the SQL query, when you get a request to /
//   connection.query(`SELECT * FROM database1.project WHERE Subscription = ?;`, Subscription, (error, result) => {
//     if (error) {
//       console.log("Error", error);
//       res.send("You' got an error ! " + error.code);
//     } else {
//       console.log(result);
//       res.send(result);
//     }
//   });
// });

// * 2. Query Parameters
//  *    localhost:3000/teacher?id=52&name=sebin
//  *    Everything after the ? is the Query params.
//  *    Use '&' to separate two different values
//  *    id=52
//  *    name=sebin
//  *    const {name, id} = req.query;
//  *
//  *
// Route Parameters - localhost:5000/city/Auckland
// app.get('/city/:cityName', (req, res) => {
//   console.log('Received a GET request to /city');
//   const { cityName } = req.params;
//   res.send(`You have asked something about ${cityName}`);
// });

// // Query Parameters - localhost:5000/student
// // localhost:5000/student?name=sebin&color=blue
// app.get('/student', (req, res) => {
//   console.log('Received a GET request to /student');
//   console.log('Got a bunch of query params', req.query);
//   // const { name, color } = req.query;
//   res.send(
//     `You have asked something about student ${JSON.stringify(req.query)}`
//   );
// });

app.get("/VideoTutorial", (req, res) => {
  console.log("Received a GET request to VideoTutorial");

  // Run the SQL query, when you get a request to /
  connection.query(
    `SELECT * FROM database1.project WHERE ProjectID = 1;`,
    (error, result) => {
      if (error) {
        console.log("Error", error);
        res.send("You' got an error ! " + error.code);
      } else {
        console.log(result);
        res.send(result);
      }
    }
  );
});

app.get("/MakeProject/:StudentID", (req, res) => {
  console.log("Received a GET request to MakeProject");
  const StudentID = req.params.StudentID;
  // const id = req.body.id;
  // const { StudentID } = req.params;
  // Run the SQL query, when you get a request to /
  connection.query(
    "SELECT * FROM database1.progresshistory WHERE StudentID = ?",
    StudentID,
    (error, result) => {
      if (error) {
        console.log("Error", error);
        res.send("You' got an error ! " + error.code);
      } else {
        console.log(result);
        console.log(StudentID);
        res.send(result);
      }
    }
  );
});

const PORT = process.env.PORT;
console.log("Server running at port", PORT);
app.listen(PORT);
