from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
import openai
import os

# Initialize the Flask app and database
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'  # SQLite database
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Set your OpenAI API key for Gemini (ChatGPT) API
openai.api_key = 'YOUR_OPENAI_API_KEY'

# Define the User model to store users in SQLite
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), unique=True, nullable=False)
    password = db.Column(db.String(200), nullable=False)

# Create the database tables
with app.app_context():
    db.create_all()

# Route for User Registration
@app.route('/register', methods=['POST'])
def register():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    # Check if username exists
    if User.query.filter_by(username=username).first():
        return jsonify({"message": "Username already exists!"}), 400
    
    new_user = User(username=username, password=password)
    db.session.add(new_user)
    db.session.commit()
    
    return jsonify({"message": "User registered successfully!"}), 201

# Route for User Login
@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    user = User.query.filter_by(username=username).first()
    
    # Check if user exists and password matches
    if user and user.password == password:
        return jsonify({"message": "Login successful!"}), 200
    else:
        return jsonify({"message": "Invalid credentials!"}), 401

# Route for Chatbot (Gemini API)
@app.route('/chat', methods=['POST'])
def chat():
    data = request.get_json()
    user_message = data.get('message')
    
    # Call OpenAI API (Gemini) for chatbot response
    try:
        response = openai.Completion.create(
            engine="text-davinci-003",  # or other model ID
            prompt=user_message,
            max_tokens=150
        )
        
        chatbot_response = response.choices[0].text.strip()
        return jsonify({"response": chatbot_response}), 200
    
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# Route to check if the API is working (Health Check)
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"message": "API is up and running!"}), 200

if __name__ == '__main__':
    app.run(debug=True)
