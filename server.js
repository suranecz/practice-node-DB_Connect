// const mariadb = require('mysql');
// const pool = mariadb.createPool({
//     host: process.env.DB_HOST, 
//     user: process.env.DB_USER, 
//     password:process.env.DB_PASSWORD,
//     database:process.env.DB_NAME,
//     connectionLimit: 5
// });


const mariadb = require('mariadb');
const pool = mariadb.createPool({
    host: 'localhost', port:'3306',
    user: 'hyunki93', password: 'zpdltpr1!',
    connectionLimit: 5
});

async function GetUserList(){
    let conn, rows;
    console.log("start")
    try{
        conn = await pool.getConnection();
        conn.query('USE homedb');
        rows = await conn.query('insert into homedb.test(value) values(?)',['tttt']);
        console.log(rows);
    }
    catch(err){
        throw err;
    }
    finally{
        if (conn) conn.end();
        return rows[0];
    }
}

GetUserList();
