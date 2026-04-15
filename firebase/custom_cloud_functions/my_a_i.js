const functions = require("firebase-functions");
const admin = require("firebase-admin");

// DO NOT initialize admin (per your instructions)

const axios = require("axios");

exports.myAI = functions.https.onCall(async (data, context) => {
  const message = data.message;

  if (!message) {
    return "No message provided.";
  }

  const apiKey = "AIzaSyDMyxApBPNDI0k88o666FcEo2UEhniTQRs";

  const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=${AIzaSyDMyxApBPNDI0k88o666FcEo2UEhniTQRs}`;

  const requestData = {
    contents: [
      {
        parts: [{ text: message }],
      },
    ],
  };

  try {
    const response = await axios.post(apiUrl, requestData, {
      headers: {
        "Content-Type": "application/json",
      },
    });

    const aiText = response.data.candidates[0].content.parts[0].text;

    return aiText;
  } catch (error) {
    console.error("Gemini Error:", error.message);
    return "Error generating response.";
  }
});
