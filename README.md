# Book Store System

This is a demo for the book store system.

## Installation

Install NodeJS
<https://nodejs.org/en/>

Use the package manager to install application.

```bash
git clone https://github.com/kbs8707/dataProject.git
npm install
```

## Configuration
Import MySQL schema using schema.sql included in the files.


Navigate to routes\database.js and modify the database configuration to your own setting.

```JavaScript
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'project',
  multipleStatements: true
});
```

## Start the server
```bash
npm start
```

Navigate to <http://localhost:3000/> to begin the demo