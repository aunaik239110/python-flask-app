# app/app.py

from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the root URL '/'
@app.route('/')
def hello_kubernetes():
    """
    Returns a simple greeting message.
    """
    return "Hello, Kubernetes! This is a simple Python app."

# Run the application if this script is executed directly
if __name__ == '__main__':
    # Listen on all available network interfaces (0.0.0.0) and port 5000
    # This is important for containerized applications to be accessible externally
    app.run(host='0.0.0.0', port=5000)

