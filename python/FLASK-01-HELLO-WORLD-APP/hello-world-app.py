from flask import Flask

app= Flask(__name__)

@app.route("/")
def head():
    return "Hello World Deniz Babayaka "


@app.route('/deniz')
def second():  
    return "This is the Deniz's page"

@app.route('/third/subthird') 
def third():
    return "This is the subpage of thirdpage" 

@app.route("/forth/<string:id>")
def forth(id):
    return f'Id of this page is{Id}'


if __name__=='__main__':
    app.run(debug = True)

