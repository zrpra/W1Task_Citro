import 'package:flutter/material.dart';
import 'routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _passVisibility = true;
  final TextEditingController _passCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Inter',
          primaryColor: const Color(0xFFD7723C),
          accentColor: const Color(0xFFD8723F),
          appBarTheme: const AppBarTheme(
            color: Color(0xFFD7723C),
          )
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: (false),
        appBar: AppBar(title: const Text(
            'Citro',
          style: TextStyle(
              fontWeight: FontWeight.w700),
        )),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment(0.0, -0.85),
              image: AssetImage('assets/images/Background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20.0, 105.0, 10.0, 10.0),
                  child: const Text(
                    'Hello!',
                    style: TextStyle(
                        color: Color(0xFF2A3D44),
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 40.0),
                  child: const Text(
                    'Welcome to Citro',
                    style: TextStyle(
                        color: Color(0xFF2A3D44),
                        fontSize: 20),
                  )),
              Container(
                height: 78,
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: TextField(
                  controller: _emailCon,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xCCF8F7F3),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: Colors.blueGrey),
                    ),
                  ),
                ),
              ),
              Container(
                height: 68,
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                child: TextField(
                  controller: _passCon,
                  obscureText: _passVisibility,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xCCF8F7F3),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1,color: Colors.blueGrey),
                      ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          _passVisibility = !_passVisibility;
                        });
                      },
                          icon: _passVisibility
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)
                      )
                  ),
                ),
              ),
              Container(
                height: 48,
              ),
              Container(
                height: 65,
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      primary: const Color(0xFFD7723C)
                  ),
                  onPressed: () {
                    _emailCon.clear();
                    _passCon.clear();
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Container(
                height: 75,
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: Image.asset('assets/images/Separator_Circles.png',
                  scale: 0.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 1,
                          primary: const Color(0xFFECE9E4)
                      ),
                      onPressed: () {

                      },
                      child: Image.asset('assets/images/Google.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 1,
                          primary: const Color(0xFFECE9E4)
                      ),
                      onPressed: () {

                      },
                      child: Image.asset('assets/images/Apple.png',
                        scale: 3,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 1,
                          primary: const Color(0xFFECE9E4)
                      ),
                      onPressed: () {

                      },
                      child: Image.asset('assets/images/Facebook.png',
                        scale: 3,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Already a member?'),
                  TextButton(
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                          color: Color(0xFF395185),
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginPage);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
