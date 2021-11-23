import 'package:ecommerce/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ecommerce/splash.dart';
import 'package:ecommerce/login/register.dart';

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate()) {
      print("Validated");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      print("not Validated");
    }
  }

  String validatepass(value) {
    {
      if (value.isEmpty) {
        return "Required *";
      } else if (value.length < 6) {
        return "Should bee atleast 6 characters";
      } else if (value.length > 15) {
        return "Should not be more than 15 characters";
      } else {
        return null;
      }
    }
  }

  void validateregi() {
    if (formkey.currentState.validate()) {
      print("Validated");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Splash()),
      );
    } else {
      print("not Validated");
    }
  }

  String validateregipass(value) {
    {
      if (value.isEmpty) {
        return "Required";
      } else if (value.length < 6) {
        return "Should bee atleast 6 characters";
      } else if (value.length > 15) {
        return "Should not be more than 15 character'"
            "rs";
      } else {
        return null;
      }
    }
  }

  void sample() {
    MaterialPageRoute(builder: (context) => Register());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(fontSize: 50),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "Email",
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required *"),
                        EmailValidator(errorText: "Not A Valid Email"),
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    20.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "Password"),
                    validator: validatepass,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: SizedBox(
                      height: 40, //height of button
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),

                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: validate,
                          child: Text("   LOGIN   ")),
                    )),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  height: 50,
                ),
                Text("If you are new"),
                Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: SizedBox(
                      height: 40, //height of button
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            primary: Colors.black, // background
                            onPrimary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              //   MaterialPageRoute(builder: (context) => Register())
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Text("REGISTER")),
                    ))
              ],
            )),
      ),
    );
  }
}
