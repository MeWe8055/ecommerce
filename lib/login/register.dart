import'package:flutter/material.dart';
import 'package:ecommerce/splash.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState.validate()){
      print("Validated");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Splash()),
      );
    }else{
      print("not Validated");
    }
  }


  String validatepass(value){


    {
      if(value.isEmpty){
        return "Required";
      }else if(value.length <6){
        return "Should bee atleast 6 characters";
      }else if(value.length > 15){
        return "Should not be more than 15 characters";
      }else {
        return null;
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(
              25.0
          ),
          child: Center(
            child: Form(
                autovalidateMode: AutovalidateMode.always, key: formkey,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(

                            ),
                            labelText: "Email"),
                        validator: MultiValidator(
                            [
                              RequiredValidator(errorText: "Required *"),
                              EmailValidator(errorText: "Not A Valid Email"),
                            ]
                        )

                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password"),
                        validator: validatepass,
                      )
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Re-enter Password"),
                          validator: validatepass,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: RaisedButton(
                            onPressed: validate,
                            child: Text("Register")
                        )
                    ),

                  ],
                ) ),
          ),
        )
    );
  }
}
