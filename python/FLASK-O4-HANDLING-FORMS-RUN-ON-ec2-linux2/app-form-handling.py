from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html', name = 'Deniz')

@app.route('/greet', methods = ["GET"])
def greet():
    if 'user' in request.args:
        usr = request.args['user']
        return render_template('greet.html', user = usr.title())
    else:
        return render_template('greet.html', user = 'Send your user name with  user param in query string ') 
          

@app.route('/login', methods = ["GET","POST"])
def login():
    if request.method == "POST":
        user_name = request.form["username"]
        password = request.form["password"]
        if password == 'clarusway':
            return render_template('secure.html', user = user_name.title())
        else: 
            return render_template('login.html', user=user_name.title(), control = True )           

    else:
        return render_template('login.html', control = False)






#Add a statement to run the Flask application which can be reached from any host on port 80


if __name__ == '__main__':
    #app.run(debug =True)   
    app.run(host='0.0.0.0', port=80) 
