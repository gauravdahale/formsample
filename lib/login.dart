import 'package:flutter/material.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key, required this.title}) : super(key: key);
final String title;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

 Widget snackBar(){
    return SnackBar(content: Text("All OK!"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Column(

              children:  [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(width: double.infinity,

                      child: Text("Form Widget is Here",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,

                      ),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    validator: (value){
                      if(value==null || value.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;

                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your name'
                    ),
keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                      validator: (value){
                        if(value==null || value.isEmpty) {
                          return 'Please Enter Phone Number';
                        }
                        return null;

                      },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Number",

                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                      validator: (value){
                        if(value==null || value.isEmpty) {
                          return 'Please Enter City';
                        }
                        return null;

                      },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter City'
                    ),
keyboardType: TextInputType.streetAddress,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('All Ok'))
                    );
                  }
                }, child: const Text('Submit'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
