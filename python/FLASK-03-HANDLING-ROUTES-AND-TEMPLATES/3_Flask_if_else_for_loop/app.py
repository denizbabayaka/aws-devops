from flask import Flask, render_template

app=Flask(__name__) 

@app.route('/') #showing decorator path to html
def head():
    first = 'This is my fist conditions'
    return render_template('index.html', message1 = first)

@app.route('/deniz')
def deniz():
    name = ['Serdar', 'Vincenzo', 'Orlando', 'Noble', 'Callahan']
    #This is returning this object variable to html
    return render_template('body.html', object = name, developer_name = 
    'Deniz')
       



if __name__ =='__main__': #This program will run on main 
    app.run(debug=True)