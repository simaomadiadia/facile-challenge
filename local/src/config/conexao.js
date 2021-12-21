const { Pool, Client } = require('pg');
import databaseConfig from './databaseConfig';


class Conexao{

    constructor(){
        this.conexao();
    }
     conexao(){
        this.conexao=new Pool(databaseConfig);
     }

}
export default new Conexao().conexao;
