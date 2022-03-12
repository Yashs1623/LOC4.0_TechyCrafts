const User = require("../models/User");
const jwt = require("jsonwebtoken");
const auth = require('../middleware/auth');
const dotenv = require("dotenv");
dotenv.config();
const Ngo = require("../models/Ngo");
//error handling

const handleErrors = (err) => {
    console.log(err.message, err.code); //err.code in most cases is undefined but we do have a code for unique property in schema
    let errors = { email: '', password: '' };

    //incorrect email while login
    if (err.message == 'incorrect email') {
        errors.email = "Please enter a registered email";
    }
    if (err.message == 'incorrect password') {
        errors.password = "Please enter a correct password";
    }

    //duplicate key errors
    if (err.code === 11000) {
        errors.email = "This email is already registered";
        return errors;
    }

    //validation erros
    if (err.message.includes('user validation failed')) {
        Object.values(err.errors).forEach((error) => {
            errors[error.properties.path] = error.properties.message;
        });
    }
    return errors;
}

const createToken = (id) => {
    return jwt.sign({ id }, process.env.SECRET_KEY, {
        expiresIn: "365d"
    })
}

module.exports.updateUser = (req, res) => {
    // console.log(req.body);
  const updates = Object.keys(req.body);
//   console.log(updates);
    const user = auth.user;
  const allowedUpdates = [
    'name',
    'email',
    'contact',
    'password',
  ]
  const isValidOperation = updates.every((update) =>
    allowedUpdates.includes(update)
  )

  if (!isValidOperation) {
    return res.status(400).send({ error: 'invalid Updates' })
  }
  if (!user) {
    return res.status(401).json({
      success: false,
      message: 'Please login',
    })
  }

  try {
    updates.forEach((update) => (user[update] = req.body[update]))

    user.save()

    res.send(user)
  } catch (e) {
    res.status(400).json({
      success: false,
      message: e.message,
    })
  }
}

module.exports.getProfile = async(req, res) => {
    try {
      //main
        if(auth.user){
            const user = auth.user;
            res.status(200).json(user);
        }
        // res.send("yash");
        // const userId =  auth.user_id;
        // console.log(userId);
        // const user = await User.findOne({_id:userId});
        // console.log(user);
        
    } catch (e) {
        console.log(e);
        res.status(500).json({
            success: false,
            message: e.message,
        })
    }
    // res.send("Login get request");
}
module.exports.signup_post = async (req, res) => {
    const {name, email, contact, password} = req.body;
    try {
        const user = await User.create({ name, email, contact, password });
        // console.log(user);
        const token = createToken(user._id);
        res.status(201).json({ token });

    } catch (err) {
        const errors = handleErrors(err);
        res.status(400).json(errors);
    }
    // console.log(email, password);
}

module.exports.login_post = async (req, res) => {
    const { email, password } = req.body;
    // console.log(email, password);
    // res.send("Login post request");
    try {
        const user = await User.login(email, password);
        const token = createToken(user._id);
        res.status(201).json({ token });

    } catch (err) {
        console.log(err);
        const errors = handleErrors(err);
        res.status(400).json({ errors });
    }
}

module.exports.ngoSignup = async(req,res)=>{
  const { org_name, email, address, reg_no, contact, password } = req.body;
    try {
        const ngo = await Ngo.create({ org_name, email, address, reg_no, contact, password });
        // console.log(ngo);
        const token = createToken(ngo._id);
        res.status(201).json({ token });

    } catch (err) {
        const errors = handleErrors(err);
        res.status(400).json(errors);
    }
}