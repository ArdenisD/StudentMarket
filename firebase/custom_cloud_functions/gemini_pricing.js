const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
const axios = require("axios");

exports.geminiPricing = functions.https.onRequest(
  { cors: [/flutterflow\.app$/, /flutterflow\.io$/] },
  async (request, response) => {
    const GEMINI_API_KEY = "AIzaSyDMyxApBPNDI0k88o666FcEo2UEhniTQRs";

    const requestJson = request.body;
    let promptResponse = "No prompt provided.";

    if (requestJson && "prompt" in requestJson) {
      const prompt = requestJson.prompt;
      console.log(`Received request for prompt: ${prompt}`);

      const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_API_KEY}`;
      const requestData = {
        contents: [
          {
            parts: [{ text: prompt }],
          },
        ],
      };

      try {
        const apiResponse = await axios.post(apiUrl, requestData, {
          headers: { "Content-Type": "application/json" },
        });
        promptResponse = apiResponse.data.candidates[0].content.parts[0].text;
      } catch (error) {
        console.error("Error generating content:", error);
        promptResponse = "Error generating content";
      }
    }

    console.log(promptResponse);
    response.send({ response_text: promptResponse });
  },
);
