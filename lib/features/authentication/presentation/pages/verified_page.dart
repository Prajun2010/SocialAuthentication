import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(
            child: Text('Logout'),
            onPressed: () {
              GoogleSignIn()
                  .signOut()
                  .then((value) => AutoRouter.of(context).pop());
            }),
      ),
    );
  }
}
