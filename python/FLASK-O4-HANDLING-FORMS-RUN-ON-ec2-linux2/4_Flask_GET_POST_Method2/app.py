from flask import Flask,render_template, request

app = Flask(__name__)

def lcm(num1,num2):
    common_multiplication = []
    for i in range(max(num1,num2), num1*num2+1):
        if i%num1== 0 and i%num2== 0:












if __name__== '__main__':
    app.run(debug =True)