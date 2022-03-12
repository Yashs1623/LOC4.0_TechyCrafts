const mongoose = require("mongoose");
const bcrypt = require("bcrypt"); 

const fundRaiseSchema = new mongoose.Schema({
    title:{
        type:String,
        required: [true, "Please enter a title"],
    },
    org_name: {
        type: String,
        required: [true, "Please enter an organization name"],
    },
    price:{
        type:Number,
        required: [true, "Please enter an address"],
    },
    desc:{
        type:String,
        required: [true, "Please enter a desciption"],
    },
    date:{
        type:Date,
        required:false,
    }
});


const FundRaise = new mongoose.model("fundraise", fundRaiseSchema);


module.exports= FundRaise;