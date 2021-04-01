from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html', name = 'Deniz')

@app.route('/greet', methods = ["GET"])
def greet():
    if 'user' in request.args:
        usr = request.args['user']
        return render_template('greet.html', user = usr)
    else:
        return render_template('greet.html', user = 'Send your user name with  user param in query string ') 
          












if __name__ == '__main__':
    app.run(debug =True)    