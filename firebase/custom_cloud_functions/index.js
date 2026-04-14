const admin = require("firebase-admin/app");
admin.initializeApp();

const geminiPricing = require("./gemini_pricing.js");
exports.geminiPricing = geminiPricing.geminiPricing;
