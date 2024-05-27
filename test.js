const mysql=require('mysql');
const dbConfig= mysql.createConnection({
    host: 'localhost',
    user: 'root',
    port: 3307,
    password: 'admin',
    database: 'pusher',
})
dbConfig.connect((err)=>{
    if(err){
        console.log(err);
    }else{
        console.log('Database connected');
    }
})