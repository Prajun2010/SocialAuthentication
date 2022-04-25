import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_auth/core/presentation/routes/router.gr.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final GoogleSignInAccount? googleUser =
                    await GoogleSignIn().signIn();

                // Obtain the auth details from the request
                final GoogleSignInAuthentication? googleAuth =
                    await googleUser?.authentication;

                // Create a new credential
                final credential = GoogleAuthProvider.credential(
                  accessToken: googleAuth?.accessToken,
                  idToken: googleAuth?.idToken,
                );

                // Once signed in, return the UserCredential
                UserCredential cred = await FirebaseAuth.instance
                    .signInWithCredential(credential);
                // googleAuth
                //     .signIn()
                //     .then((result) =>
                //         result?.authentication.then((googleKey) async {
                //           AuthCredential credential =
                //               GoogleAuthProvider.credential(
                //                   accessToken: googleKey.accessToken,
                //                   idToken: googleKey.idToken);

                //           UserCredential userCred = await FirebaseAuth.instance
                //               .signInWithCredential(credential);

                if (cred.credential != null) {
                  debugPrint('${cred.credential}>>>>>>>>>>>>>>>>');
                  AutoRouter.of(context).push(const VerifiedRoute());
                }
                //         }).catchError((e) => SnackBar(content: Text('$e'))))
                //     .catchError((e) {
                //   SnackBar(content: Text('$e'));
                // });
              },
              child: const Text('Login with Google'),
            )
            // TextField(
            //   decoration: const InputDecoration(hintText: 'Email'),
            //   onChanged: (value) {
            //     setState(() {});
            //     email = value;
            //   },
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // TextField(
            //   decoration: const InputDecoration(hintText: 'Password'),
            //   onChanged: (value) {
            //     setState(() {});
            //     password = value;
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
