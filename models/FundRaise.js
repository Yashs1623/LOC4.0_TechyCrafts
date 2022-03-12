const mongoose = require("mongoose");
const bcrypt = require("bcrypt"); 

const fundRaise = new mongoose.Schema({
    title:{
        type:String,
        required: [true, "Please enter a title"],
    },
    org_name: {
        type: String,
        required: [true, "Please enter an organization name"],
    },
    price:{
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
    },
    password: {
        type: String,
        required: [true, "Please enter a password"],
        minlength: [6, "Minimum password length is 6 characters"]
    }
});