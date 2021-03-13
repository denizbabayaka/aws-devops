from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def head():
    return render_template('index.html', number=12, number1=24)

@app.route('/deniz')
def number():
    variable1 , variable2 = 23 ,45
    return render_template('body.html', num1=variable1, num2=variable2, multiplication=variable1*variable2)    

if __name__=='__main__':
    app.run(debug=True)    