const jwt = require("jsonwebtoken")
const User = require("../models/User");
const dotenv = require("dotenv");
dotenv.config();



const auth  = async(req, res, next) => {
  try {
    const token = req.headers.authorization.split(' ')[1];
    const decodedToken = jwt.verify(token, process.env.SECRET_KEY);
    const userId = decodedToken.id;
    const user=await User.findOne({_id:userId});
    if (!user) {
      throw 'Invalid user';
    } else {
      module.exports.user =user;
      next();
    }
  } catch {
    res.status(401).json({
      error: new Error('Invalid request!')
    });
  }
};


module.exports = { auth }