import 'package:flutter/material.dart';

class FlutterwavePaymentOption extends StatelessWidget {
  final Function handleClick;
  final String buttonText;

  FlutterwavePaymentOption({required this.handleClick, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this._handleClick,
      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.orangeAccent,
                      ),
      child: Container(
        width: double.infinity,
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            text: "Pay with ",
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: [
              TextSpan(
                text: buttonText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleClick() {
    this.handleClick();
  }
}
