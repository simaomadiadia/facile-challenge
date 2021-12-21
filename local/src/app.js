import express  from 'express';
import controller from './controllers/controller'
import cors from 'cors';


class App{
   constructor(){
      this.server=express();
      this.middlewares();
      this.routes();
   }

   middlewares(){
      this.server.use(express.json());
      this.server.use(cors());
   }
   routes(){
      this.server.use(controller);
   }

}

export default new App().server;
