import traceback
try:
    from flask import Flask
    app = Flask(__name__)

    @app.route('/')
    def home():
        return "Hello, world!!!!!!!!!!!!!!!!!!!!!!!!!! python!!!!!"

    if __name__ == '__main__':
        app.run(host='0.0.0.0', port=5000)
except Exception as e:
    print("Error:", e)
    traceback.print_exc()
