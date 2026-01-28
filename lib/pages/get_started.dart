import 'package:flutter/material.dart';
import 'package:simple_nft/pages/signin.dart';
import '../theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 160.0,
            right: 19,
            left: 19,
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/splash.png'),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Collect NFTs As\nYour Own Collection',
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'NFT is gonna help us to keep what\nbelongs to us, like forever',
                style: subStyle,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ),
                    );
                  },
                  child: const Text(
                    'Getting Started',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
