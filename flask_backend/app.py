from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configure SQLite database
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///chatbot.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

# Define a user table for login
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    password = db.Column(db.String(120), nullable=False)  # Store hashed passwords for security

# Define a chat history table (if required for chatbot interactions)
class ChatHistory(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    message = db.Column(db.String(500), nullable=False)
    response = db.Column(db.String(500), nullable=True)

# Initialize database
with app.app_context():
    db.create_all()

@app.route('/')
def home():
    return jsonify({"message": "Welcome to the Flask backend!"})

if __name__ == '__main__':
    app.run(debug=True)
