import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          style: GoogleFonts.poppins(),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00897B), Color(0xFF80CBC4)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          //Text Login
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  //Input Email
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter your email',
                                prefixIcon: const Icon(Icons.email),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                return value!.isEmpty
                                    ? 'Please enter your email'
                                    : null;
                              },
                              style: GoogleFonts.poppins(),
                            ),
                          ),

                          const SizedBox(height: 30),

                          //Input Password 
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                prefixIcon: const Icon(Icons.password),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                return value!.isEmpty
                                    ? 'Please enter your password'
                                    : null;
                              },
                              style: GoogleFonts.poppins(),
                            ),
                          ),

                          const SizedBox(height: 30),

                          //Button Login
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 35),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {},
                              color: Colors.teal.shade700,
                              textColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
                                style: GoogleFonts.poppins(
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
