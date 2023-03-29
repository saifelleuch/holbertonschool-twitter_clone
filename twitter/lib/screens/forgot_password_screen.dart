import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              CustomEntryField(
                hint: 'Email',
                controller: _emailController,
              ),
              CustomFlatButton(
                label: 'Reset Password',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
