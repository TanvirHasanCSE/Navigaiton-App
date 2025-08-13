import 'package:flutter/material.dart';
import 'main.dart';
import 'list_view.dart';
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Navigation App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/Images/flutter1.png',
          height: 100,
          ),
          SizedBox(height: 10,),
          Image.asset('assets/Images/facebook.png',
            height: 100,
          ),

          Padding(
            padding: const EdgeInsets.all(11.5),
            child: Form(
              key: _formkey,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  controller:  phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText:  'Enther your pthone number',
                      labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enther your phone number';
                    } else if (value.length != 11) {
                      return 'Plese curect phone number';
                    }
                    else {
                      return null;
                    }
                  }
                ),
                SizedBox(height: 10,),

                TextFormField(
                  controller: passwordController,
                  obscureText: true ,
                  decoration: InputDecoration(
                    hintText: 'Enther 6 Digit password',
                    labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  validator: (value){
                   if(value == null || value.isEmpty){
                     return 'Enther passdown';
                   }else if(value.length < 6){
                     return "Enther atlast 6 degit";
                   }
                    else{
                      return null;
                   }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                      if(_formkey.currentState!.validate()){
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('Login Successful')),
                      //   );
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListV()));
                      }
                  },style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ), child: Text('Login'),
                  ),
                ),
              ],
            )),
          ),
          ],
      ),
    );
  }
}


