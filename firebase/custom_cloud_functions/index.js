const admin = require("firebase-admin/app");
admin.initializeApp();

const myAI = require("./my_a_i.js");
exports.myAI = myAI.myAI;
