# JARVIS-AI: Your Voice-Activated Multimodal AI Assistant
## 🤖 Overview
JARVIS-AI is a cutting-edge, voice-activated AI assistant inspired by Tony Stark's JARVIS from the Marvel universe. This powerful assistant combines speech recognition, natural language processing, computer vision, and voice synthesis to create a seamless, hands-free AI experience right on your desktop.

## ✨ Key Features
- Voice Activation : Speak naturally to JARVIS and receive voice responses
- Continuous Listening Mode : No need to press buttons - just speak and JARVIS responds
- Computer Vision : JARVIS can see through your webcam when needed to answer visual questions
- Natural Conversations : Powered by state-of-the-art language models for human-like interactions
- Multimodal Understanding : Combines audio, text, and visual inputs for comprehensive assistance
- Cross-Platform : Works on macOS, Windows, and Linux
## 🧠 Technology Stack
- Speech-to-Text : Groq's Whisper Large v3 model for accurate transcription
- AI Brain : Google's Gemini 2.0 Flash model via LangChain for intelligent responses
- Computer Vision : Llama-4-Maverick for visual analysis through Groq's API
- Text-to-Speech : ElevenLabs' realistic voice synthesis (with gTTS fallback)
- Frontend : Gradio for an intuitive, browser-based interface with webcam integration
## 🛠️ Installation
### Prerequisites
- Python 3.9 or higher
- Webcam
- Microphone
- API keys for Groq, Google Generative AI, and ElevenLabs
### Setup
1. 1.
   Clone the repository:
2. 2.
   Install dependencies:
3. 3.
   Create a .env file in the project root with your API keys:
## 🚀 Usage
1. 1.
   Start JARVIS:
2. 2.
   Access the interface in your browser at http://localhost:7860
3. 3.
   Click "Start Camera" to enable the webcam feed
4. 4.
   Start speaking to JARVIS - no button presses needed!
5. 5.
   Say "goodbye" to end the session
## 💬 Example Interactions
- "What's the weather like today?" (JARVIS will respond with weather information)
- "Am I wearing a blue shirt?" (JARVIS will use the webcam to check and respond)
- "Tell me a joke about artificial intelligence" (JARVIS will generate a witty joke)
- "What objects do you see on my desk?" (JARVIS will analyze your surroundings)
## 🔧 Customization
- Modify ai_agent.py to change JARVIS's personality and capabilities
- Adjust voice settings in text_to_speech.py to change how JARVIS sounds
- Add new tools in tools.py to extend JARVIS's abilities
## 🤝 Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

1. 1.
   Fork the repository
2. 2.
   Create your feature branch ( git checkout -b feature/amazing-feature )
3. 3.
   Commit your changes ( git commit -m 'Add some amazing feature' )
4. 4.
   Push to the branch ( git push origin feature/amazing-feature )
5. 5.
   Open a Pull Request
## 📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgements
- Groq for their powerful AI APIs
- Google Generative AI for the Gemini model
- ElevenLabs for realistic voice synthesis
- Gradio for the intuitive UI framework
Made with ❤️ by [NABARUN DUTTA]