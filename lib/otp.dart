import 'package:ecommerce/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otp extends StatefulWidget {
  const otp({Key key}) : super(key: key);

  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _textFieldOTP(first: true, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: false),
                  _textFieldOTP(first: false, last: true),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      //   MaterialPageRoute(builder: (context) => Register())
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                  child: Text(
                    "VERIFY",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              SizedBox(height: 10,),
              Text("Resend new code",style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold,
                color: Colors.black
              ),)
            ],
          ),
        ),
      ),
    );
  }

  _textFieldOTP({bool first, last}) {
    return Container(
      height: 75,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
