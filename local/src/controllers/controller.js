import { Router } from 'express';
import encriptsModel from '../models/encriptsModel.js';

const route= new Router();


route.get("/encripts/:id",encriptsModel.getEncripts);
route.post("/encripts",encriptsModel.postEncripts);




export default route;