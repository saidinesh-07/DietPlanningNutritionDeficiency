<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Gateway - Diet & Nutrition Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
			.payment-container {
			    margin-top: 30px;
			}
			
			.payment-methods {
			    display: flex;
			    justify-content: space-around;
			    margin-bottom: 30px;
			}
			
			.payment-method {
			    border: 2px solid #ddd;
			    padding: 30px; /* Updated from 20px */
			    width: 30%; /* Updated from 25% */
			    text-align: center;
			    border-radius: 8px;
			    transition: all 0.3s;
			    box-sizing: border-box; /* Ensures consistent sizing */
			}
			
			.payment-method img {
			    max-width: 100%; /* Ensures the image fits within the card */
			    height: auto; /* Maintains aspect ratio */
			    margin-bottom: 15px; /* Spacing below the image */
			}
			
			.payment-method:hover {
			    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* More pronounced shadow */
			}
			
			.btn-primary {
			    background-color: #1E3A5F;
			    border-color: #1E3A5F;
			}
			
			.payment-form {
			    background-color: #f9f9f9;
			    padding: 30px;
			    border-radius: 10px;
			    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
			}
			
			.form-group input {
			    height: 45px;
			    font-size: 16px;
			}
			
			.payment-header {
			    text-align: center;
			    margin-bottom: 20px;
			    font-size: 24px;
			    color: #333;
			}
			
			.payment-footer {
			    text-align: center;
			    margin-top: 40px;
			    font-size: 16px;
			    color: #555;
			}
			
			.upi-form input {
			    font-size: 16px;
			    padding: 15px;
			    width: 100%;
			    margin-bottom: 15px;
			    border: 1px solid #ccc;
			    border-radius: 5px;
			}
			
			.upi-button {
			    background-color: #5050d0;
			    color: white;
			    padding: 15px 30px;
			    font-size: 18px;
			    border: none;
			    border-radius: 5px;
			    cursor: pointer;
			}
			
			.upi-button:hover {
			    background-color: #3b3b9e;
			}
			
			.payment-notification {
			    display: none;
			    text-align: center;
			    font-size: 18px;
			    background-color: #28a745;
			    color: white;
			    padding: 15px;
			    border-radius: 5px;
			    margin-top: 20px;
			}

    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #1E3A5F;">
        <div class="container">
            <a class="navbar-brand" href="/">Diet & Nutrition</a>
        </div>
    </nav>

    <!-- Payment Gateway Section -->
    <div class="container payment-container">
        <div class="payment-header">
            <h2>Complete Your Payment</h2>
            <p>Please select your preferred payment method to proceed with the consultation payment.</p>
        </div>

        <div class="payment-methods">
            <!-- Credit/Debit Card Payment Method -->
            <div class="payment-method">
                <img src="data:image/jpeg;base64,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" alt="Card Payment">
                <h5>Credit/Debit Card</h5>
                <p>Pay using your credit or debit card.</p>
                <a href="#card-payment" class="btn btn-primary">Select</a>
            </div>

            <!-- PayPal Payment Method -->
            <div class="payment-method">
                <img src="data:image/png;base64,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" alt="PayPal">
                <h5>Internet Banking</h5>
                <p>Make payment securely with internet banking.</p>
                <a href="#bank-payment" class="btn btn-primary">Select</a>
            </div>

            <!-- UPI Payment Method -->
            <div class="payment-method">
                <img src="data:image/jpeg;base64,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" alt="UPI Payment">
                <h5>UPI Payment</h5>
                <p>Pay via UPI using your UPI ID.</p>
                <a href="#upi-payment" class="btn btn-primary">Select</a>
            </div>
        </div>

        <!-- UPI Payment Form -->
        <div id="upi-payment" class="payment-form" style="display:none;">
            <h3>UPI Payment</h3>
            <form id="upi-form" action="submitAppointment.jsp">
                <div class="form-group">
                    <label for="upi-id">Enter Your UPI ID</label>
                    <input type="text" id="upi-id" name="upi-id" placeholder="example@upi" required>
                </div>
                <div class="form-group">
                    <label for="upi-amount">Enter Amount</label>
                    <input type="number" id="upi-amount" name="upi-amount" placeholder="Amount" required>
                </div>
                <button type="submit" class="upi-button">Pay via UPI</button>
            </form>
        </div>

        <!-- Card Payment Form -->
        <div id="card-payment" class="payment-form" style="display:none;">
            <h3>Card Payment</h3>
            <form action="submitAppointment.jsp">
                <div class="form-group">
                    <label for="card-name">Cardholder Name</label>
                    <input type="text" id="card-name" name="card-name" placeholder="name" required>
                </div>
                <div class="form-group">
                    <label for="card-number">Card Number</label>
                    <input type="text" id="card-number" name="card-number" placeholder="**** **** **** ****" required>
                </div>
                <div class="form-group">
                    <label for="expiry-date">Expiry Date</label>
                    <input type="month" id="expiry-date" name="expiry-date" required>
                </div>
                <div class="form-group">
                    <label for="cvv">CVV</label>
                    <input type="text" id="cvv" name="cvv" placeholder="***" required>
                </div>
                <button type="submit" class="btn btn-primary">Pay with Card</button>
            </form>
        </div>

        <!-- Internet Banking Form -->
        <div id="bank-payment" class="payment-form" style="display:none;">
            <h3>Internet Banking</h3>
            <form action="submitAppointment.jsp">
                <div class="form-group">
                    <label for="bank-account">Bank Account Number</label>
                    <input type="text" id="bank-account" name="bank-account" placeholder="Account Number" required>
                </div>
                <div class="form-group">
                    <label for="bank-amount">Amount</label>
                    <input type="number" id="bank-amount" name="bank-amount" placeholder="Amount" required>
                </div>
                <button type="submit" class="btn btn-primary">Pay via Internet Banking</button>
            </form>
        </div>

        <!-- Payment Notification -->
        <div class="payment-notification" id="payment-notification">
            Payment is being processed to the UPI ID. You will receive a notification in your payment app.
        </div>

        <!-- Footer -->
        <div class="payment-footer">
            <p>&copy; 2024 Diet & Nutrition Management. All Rights Reserved.</p>
        </div>
    </div>

    <script>
        document.querySelectorAll('.btn-primary').forEach(function(button) {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                const target = e.target.getAttribute('href').substring(1);
                document.querySelectorAll('.payment-form').forEach(function(form) {
                    form.style.display = 'none';
                });
                document.getElementById(target).style.display = 'block';
            });
        });

        document.getElementById('upi-form').addEventListener('submit', function(e) {
            e.preventDefault();
            document.getElementById('payment-notification').style.display = 'block';
            // Simulate a payment redirection (You will integrate with UPI API here)
            setTimeout(function() {
                alert('Payment Successful! Transaction Completed.');
                document.getElementById('payment-notification').style.display = 'none';
            }, 2000); // Simulating a delay for the UPI payment process
        });
    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
