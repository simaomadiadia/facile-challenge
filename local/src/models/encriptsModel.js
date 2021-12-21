
import crypto from 'crypto';
import { connect } from 'postgres/lib/frontend';
const { Pool, Client } = require('pg')
import connection from '../config/conexao'
exports.getEncripts= (req,res)=>{
    const id= req.params.id;

   connection.query(`SELECT * from texts where id=${id} `, (err, result,fields) => {

   if(err){
      return res.json({"Erro":err});
   }else{
    if(result.rowCount>=1){
      const alg='aes-256-ctr';
      const pwd='abcdabcd';
      const encripted_name=result.rows[0].name;
      const decipher=crypto.createCipher(alg,pwd);
      const decrypted_name=decipher.update(encripted_name,'hex','utf8');
      
        return res.json({"name":decrypted_name});
    }else{
      return res.status(404).json({"msg":"usuario not found"});
    }
   }

 
})

}

exports.postEncripts= (req,res)=>{
     const {name} =req.body;

     if(req.body.name){

      const alg='aes-256-ctr';
      const pwd='abcdabcd';
      const cipher=crypto.createCipher(alg,pwd);
      const encripted_name=cipher.update(name,'utf8','hex');
     
      connection.query(`INSERT INTO texts(name) VALUES ('${encripted_name}') RETURNING id `, (err,result,fields) => {

         if(err){
            return res.json({"Erro":err,"text":encripted_name});
         }else{
             
            return res.json({"id":result.rows[0].id,"encripted_name": encripted_name})
         }
      
      })

      
     }else{
        return res.json({"code": "E_VALIDATION_FAILURE","message": "O campo \"name\" é obrigatório"});
     }
     
}