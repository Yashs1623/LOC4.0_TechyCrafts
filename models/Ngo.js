const mongoose = require("mongoose");
const bcrypt = require("bcrypt"); 
const {isEmail} = require("validator");


const ngoSchema = new mongoose.Schema({
    org_name:{
        type:String,
        required: [true, "Please enter an Organization Name"],
    },
    email: {
        type: String,
        required: [true, "Please enter an email"],
        unique: true,
        validate: [isEmail , "Please enter a valid email"]
    },
    address:{
        type:String,
        required: [true, "Please enter an address"],
    },
    reg_no:{
        type:String,
        required: [true, "Please enter a Registration Number"],
    },
    contact:{
        type:String,
        required: [true, "Please enter a Contact Number"],
    }  
    password: {
        type: String,
        required: [true, "Please enter a password"],
        minlength: [6, "Minimum password length is 6 characters"]
    }
});

//fire a function after user is created
ngoSchema.post('save', function(doc,next){
    // console.log("new user was created and saved");  
    next();
});

//fire a function before user is created
ngoSchema.pre('save', async function(next){
    // console.log('User about to be created and saved', this); //this refers to local instance of the user
    const salt = await bcrypt.genSalt();
    this.password = await bcrypt.hash(this.password , salt);
    next();
});

//method for ngo login

ngoSchema.statics.login = async function(email,password){
    const ngo = await this.findOne({email});
    if(ngo){
        const auth = await bcrypt.compare(password, ngo.password);
        if(auth){
            return ngo;
        }
        throw Error('incorrect password');
    }
    throw Error('incorrect email');
}

const Ngo = new mongoose.model("ngo", ngoSchema);


module.exports= Ngo;