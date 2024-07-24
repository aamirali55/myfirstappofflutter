import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  // #0275B2
  // #FAFAFA

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PinFri",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(250, 250, 250, 1.0), // RGB color
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 53, 84),
      ),
      body: Container(
        color: const Color.fromRGBO(250, 250, 250, 1.0),
        width: 393,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromRGBO(250, 250, 250, 1.0),
              width: 393,
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/PinFriLogo.png'),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Container(
              color: const Color.fromRGBO(250, 250, 250, 1.0),
              width: 393,
              height: 300,
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile number or email',
                      border: OutlineInputBorder(),
                      fillColor: Colors.amber,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle login logic here
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromRGBO(
                              2, 117, 178, 1.0), // RGB color for #0275B2
                        ),
                        fixedSize: WidgetStateProperty.all(
                          const Size(340, 50),
                        )),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Color.fromRGBO(250, 250, 250, 1.0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 53, 84),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // const print("Requied Email");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Create New Account',
                  style: TextStyle(
                    // backgroundColor: Color.fromRGBO(2, 117, 178, 1.0),
                    color: Color.fromARGB(255, 0, 53, 84),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
