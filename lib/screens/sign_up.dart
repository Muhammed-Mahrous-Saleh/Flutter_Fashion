import 'package:fashions/screens/signin.dart';
import 'package:fashions/screens/successful.dart';
import 'package:fashions/styles/icons.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:fashions/data/user_model.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repPasswordController = TextEditingController();

  Future<void> _register() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    final userBox = Hive.box<User>('users');

    // Use a default user with placeholder values
    final placeholderUser = User(email: '', password: '');

    // Check if the user already exists
    final existingUser = userBox.values.firstWhere(
      (user) => user.email == email,
      orElse: () => placeholderUser,
    );

    if (existingUser.email.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email already exists')),
      );
    } else {
      final newUser = User(email: email, password: password);
      await userBox.add(newUser);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User registered successfully')),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Successful()),
        ModalRoute.withName('//'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Builder(builder: (context) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                        ModalRoute.withName('//'),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ));
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, top: 10),
                        child: Image.asset(appLogo),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "Create a new account",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: _usernameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name must not be empty.";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'User Name',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none, // No border by default
                          enabledBorder:
                              InputBorder.none, // No border when not focused
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 188, 184, 184),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email must not be empty.";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none, // No border by default
                          enabledBorder:
                              InputBorder.none, // No border when not focused
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 188, 184, 184),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password must not be empty.";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none, // No border by default
                          enabledBorder:
                              InputBorder.none, // No border when not focused
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 188, 184, 184),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        controller: _repPasswordController,
                        validator: (value) {
                          if (_repPasswordController.value !=
                              _passwordController.value) {
                            return "Passwords must be identical.";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none, // No border by default
                          enabledBorder:
                              InputBorder.none, // No border when not focused
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 188, 184, 184),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      CheckboxListTile(
                        title: const Text(
                          "By creating an account you have to agree with our Terms and Conditions.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = !_isChecked;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        side: const BorderSide(color: Colors.grey),
                        activeColor: Colors
                            .blue, // Change the active color of the checkbox
                        checkColor: Colors.white,
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.black),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate() &&
                                _isChecked) {
                              _register();
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
