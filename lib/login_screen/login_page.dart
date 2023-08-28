import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/dashboard.dart';
import 'package:responsive_dashboard_ui/login_screen/widgets/custom_botton.dart';

import '../style/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passVisibility = true ;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Expanded(child: Container(
             padding: const EdgeInsets.symmetric(horizontal: 80),

           alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: CupertinoColors.black
            ),
           child: const SingleChildScrollView(
             child:  Column(

               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   'الورشة الذكية',
                   style: TextStyle(
                       fontFamily: 'Poppins',

                       color: Colors.white,
                       fontSize: 65,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 Text(
                   'نحو ورشة تقنية وذكية',
                   style: TextStyle(
                     fontFamily: 'Poppins',
                       color: Colors.white,
                       fontSize: 30,

                   ),
                 ),
               ],
             ),
           )
          )),


          Expanded(child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80 , vertical: 20),

              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: AppColors.secondaryBg
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      'LogIn to your account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                          color: CupertinoColors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                   const SizedBox(height: 20,),
                    TextField(
                      controller: email,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        labelText:'Email',
                          labelStyle: const TextStyle(
                              fontFamily: 'Poppins',

                            color: Colors.black
                          ),
                          hintText: "Email",
                        hintStyle: const TextStyle(
                          fontFamily: 'Poppins',

                        ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:  const BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),

                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextField(
                      controller: password,
                      obscureText: !passVisibility,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(   passVisibility ?
                          Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                          color: Colors.black,),
                          onPressed: (){
                            setState(() {
                              passVisibility = ! passVisibility ;
                            });
                          },
                        ),
                          hintText: "Password",
                        hintStyle: const TextStyle(
                          fontFamily: 'Poppins',

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:  const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),

                      ),
                    ),
                    const SizedBox(height: 30,),
                   CustomButton(
                       backgroundColor: Colors.black,
                       textColor: Colors.white,
                       text: 'Sign up',
                       func: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Dashboard()));
},
                       width: 300)

                  ],
                ),
              )
          )),

        ],
      ),
    );
  }
}
