const mongoose = require("mongoose");
const bcrypt = require("bcrypt"); 

const createEventSchema = new mongoose.Schema({
    event_name:{
        type:String,
        required: [true, "Please enter a name of event"],
    },
    place: {
        type: String,
        required: [true, "Please enter a place"],
    },
    desc:{
        type:String,
        required: [true, "Please enter a description"],
    },
    volunteers_required:{
        type:Number,
        required: [true, "Please enter a number of volunteers"],
    },
    date:{
        type:String,
        required:false,
    }
});


const CreateEvent = new mongoose.model("createEvent", createEventSchema);


module.exports= CreateEvent;