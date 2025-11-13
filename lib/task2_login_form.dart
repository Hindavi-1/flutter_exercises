import 'package:flutter/material.dart';

class Task2LoginForm extends StatefulWidget {
  const Task2LoginForm({super.key});

  @override
  State<Task2LoginForm> createState() => _Task2LoginFormState();
}

class _Task2LoginFormState extends State<Task2LoginForm> {
  // Form key to validate later if needed
  final _formKey = GlobalKey<FormState>();

  // Controllers for input fields (optional, but good practice)
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email Field
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // Password Field
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // hides the password
              ),

              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  print("Login Button Pressed");
                  // optional: print entered data
                  print("Email: ${_emailController.text}");
                  print("Password: ${_passwordController.text}");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
