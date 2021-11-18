import 'package:ecommerce/home.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
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

void validate(){
  if(formkey.currentState.validate()){
    print("Validated");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
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
   }
 }
  void validateregi(){
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


  String validateregipass(value){


    {
      if(value.isEmpty){
        return "Required";
      }else if(value.length <6){
        return "Should bee atleast 6 characters";
      }else if(value.length > 15){
        return "Should not be more than 15 character'"
            "rs";
      }else {
        return null;
      }
    }
  }
  void sample(){
    MaterialPageRoute(builder: (context) => Register());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Center(
          child: Form(
            autovalidateMode: AutovalidateMode.always, key: formkey,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Login",style: TextStyle(fontSize: 50,fontFamily: 'Raleway'),),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        labelText: "Email"),
                        validator: MultiValidator(
                         [
                           RequiredValidator(errorText: "Required *"),
                           EmailValidator(errorText: "Not A Valid Email"),
                         ]
                        )

                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(
                         20.0,
                      ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                          labelText: "Password"),
                      validator: validatepass,
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child:  ElevatedButton(
                        onPressed: validate,
                        child: Text("Login")
                    )
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                    height: 50,
                  ),
                  Text("If you are New register"),

                  Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child:  ElevatedButton(
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),
                            );
                            },

                          child: Text("Register")
                      )
                  )
                ],
              ) ),
        ),

    );
  }
}
