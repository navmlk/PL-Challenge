from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/greet', methods=['GET'])
def greet_customer():
    customer_name = request.args.get('Customer', 'Default')

    if customer_name == 'A':
        greeting = 'Hi'
    elif customer_name == 'B':
        greeting = 'Dear Sir or Madam'
    elif customer_name == 'C':
        greeting = 'Moin'
    else:
        greeting = 'Hello'

    return render_template('greet.html', customer=customer_name, greeting=greeting)
    
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)