//nodemon ./server.js

import {getGitUser, dumpDB} from './gitInfo.js';
import express from 'express';
const app = express();

const server = app.listen(3000, ()=>{
    console.log("Start Server : localhost:3000");
});

app.get('/', async function(req, res){
    console.log("g2")
    await dumpDB().then(res.send("db dump finish"))
    
    
})

// import {hi} from './test.js'

// const mariadb = require('mariadb');
// const pool = mariadb.createPool({
//     host: 'localhost', port:'3306',
//     user: 'hyunki93', password: 'zpdltpr1!',
//     connectionLimit: 5
// });
// const {getGitUser} = require('./gitInfo')

// async function GetUserList(){
//     let conn, rows;
//     console.log("start")
//     try{
//         conn = await pool.getConnection();
//         conn.query('USE homedb');
//         // rows = await conn.query('insert into homedb.test(value) values(?)',['tttt']);
//         rows = await conn.query('CREATE TABLE `test2` ('+
//             '`value` varchar(100) DEFAULT NULL)');
//         console.log(rows);
//     }
//     catch(err){
//         throw err;
//     }
//     finally{
//         if (conn) conn.end();
//         return rows[0];
//     }
// }

// GetUserList();

