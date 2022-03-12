const jwt = require("jsonwebtoken")
const Ngo = require("../models/Ngo");
const dotenv = require("dotenv");
dotenv.config();



const ngo_auth  = async(req, res, next) => {
  try {
    const token = req.headers.authorization.split(' ')[1];
    const decodedToken = jwt.verify(token, process.env.SECRET_KEY);
    const ngoId = decodedToken.id;
    console.log(decodedtoken.id);
    const ngo=await Ngo.findOne({_id:userId});
    if (!ngo) {
      throw 'Invalid user';
    } else {
      module.exports.ngo =ngo;
      next();
    }
  } catch {
    res.status(401).json({
      error: new Error('Invalid request!')
    });
  }
};


module.exports = { ngo_auth }