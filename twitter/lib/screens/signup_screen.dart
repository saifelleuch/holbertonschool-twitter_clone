import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 88,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.network(
                  'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                  height: 150,
                ),
                SizedBox(height: 40),
                CustomEntryField(
                  hint: 'Name',
                  controller: _nameController,
                ),
                CustomEntryField(
                  hint: 'Email',
                  controller: _emailController,
                ),
                CustomEntryField(
                  hint: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                ),
                CustomEntryField(
                  hint: 'Confirm Password',
                  controller: _confirmController,
                  isPassword: true,
                ),
                CustomFlatButton(
                  label: 'Sign Up',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
