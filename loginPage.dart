import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Image(
                  width: 170,
                  height: 190,
                  image: AssetImage(
                    'assets/chef.gif',
                  ),
                ),
              ),
            ),
            Form(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.teal,
                  inputDecorationTheme: const InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 15,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    child: Column(
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter dice',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter password',
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        const SizedBox(height: 40),
                        ButtonTheme(
                          minWidth: 100,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
