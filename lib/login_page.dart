import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _TestState();
}

class _TestState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF741cd7),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.cancel, size: 35, color: Colors.white),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Login to',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30)),
                        Text('Your account',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30))
                      ],
                    ),
                  ),
                ),
                Expanded(child: Image.asset('assets/images/sceen1.png')),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(40),
                        topEnd: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('  Email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey[500])),
                        TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Enter your email',
                            hintStyle:
                            TextStyle(color: const Color(0xFFFF741cd7)),
                            prefixIcon: Icon(Icons.email,
                                color: const Color(0xFFFF741cd7)),
                            // labelText: 'Email'
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(' password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey[500])),
                        TextFormField(
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Enter your password',
                            hintStyle:
                            TextStyle(color: const Color(0xFFFF741cd7)),
                            prefixIcon: Icon(Icons.password,
                                color: const Color(0xFFFF741cd7)),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsecure = !obsecure;
                                });
                              },
                              icon: Icon(
                                obsecure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color:
                                obsecure ? Colors.grey[500] : Colors.black,
                              ),
                            ),
                          ),
                          obscureText: obsecure,
                          obscuringCharacter: '*',
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          validator: (value) {
                            if ((value ?? '').isEmpty) {
                              return 'please, Enter your password';
                            } else if (!RegExp(r'[A-Z]')
                                .hasMatch(value ?? '')) {
                              return 'Password Must Contain At Least One Captial Later';
                            } else if (!RegExp(r'[0-9]')
                                .hasMatch(value ?? '')) {
                              return 'The password must contain numbers';
                            } else if (!RegExp(r'[a-z]')
                                .hasMatch(value ?? '')) {
                              return 'The password must contain lowercase letters';
                            } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                                .hasMatch(value ?? '')) {
                              return 'The password must contain distinctive signs !@#\$%^&*(),.?":{}|<>';
                            } else if ((value?.length ?? 0) < 8) {
                              return 'password can`t Be less than 8 characters';
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget password?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFFF741cd7),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadiusDirectional.circular(30)),
                                fixedSize: Size(210, 60)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Text(
                              'or',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don`t have an account?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFFFF741cd7)),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
