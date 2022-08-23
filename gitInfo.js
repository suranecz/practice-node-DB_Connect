// const util = require('util');
// import util from 'util'
// import {exec} from 'child_process'

import { exec, spawn, fork, execFile } from 'promisify-child-process'
// const exec = util.promisify(require('child_process').exec);

// module.exports.getGitUser = async function getGitUser () {
//     const name = await exec('git config --global user.name')
//     const email = await exec('git config --global user.email')
//     return { name, email }
//   };

// module.exports= {
//     getGitUser: function(){
//         return "h23h2"
//     }
// }

export async function getGitUser(){
    const name = await exec('git config --global user.name')
    const email = await exec('git config --global user.email')
    return { name, email }
}


export async function dumpDB(){
    const name = await exec('docker exec mariadb /usr/bin/mysqldump -u hyunki93 --password=zpdltpr1! homedb account > D:/01.practice/node/DB_Connect/db_dump/test.sql')
    return { name }
}