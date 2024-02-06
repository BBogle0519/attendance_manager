import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로그인 화면"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "ID",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ID를 입력하세요.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "PW",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "PW를 입력하세요.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        //
                      }
                    },
                    child: const Text("로그인"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("회원가입"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
