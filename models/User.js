const mongoose = require("mongoose");
const {isEmail} = require("validator");
const bcrypt = require("bcrypt"); 
const userSchema = new mongoose.Schema({
    name: {
        type: String,
        required: false,
    },
    email: {
        type: String,
        required: [true, "Please enter an email"],
        unique: true,
        validate: [isEmail , "Please enter a valid email"]
    },
    contact:{
        type:String,
        required:false
    },
    password: {
        type: String,
        required: [true, "Please enter a password"],
        minlength: [6, "Minimum password length is 6 characters"]
    }
});
//fire a function after user is created
userSchema.post('save', function(doc,next){
    // console.log("new user was created and saved");  
    next();
});

//fire a function before user is created
userSchema.pre('save', async function(next){
    // console.log('User about to be created and saved', this); //this refers to local instance of the user
    const salt = await bcrypt.genSalt();
    this.password = await bcrypt.hash(this.password , salt);
    next();
});

//method for user login

userSchema.statics.login = async function(email,password){
    const user = await this.findOne({email});
    if(user){
        const auth = await bcrypt.compare(password, user.password);
        if(auth){
            return user;
        }
        throw Error('incorrect password');
    }
    throw Error('incorrect email');
}



const User = new mongoose.model("user", userSchema);


module.exports= User;