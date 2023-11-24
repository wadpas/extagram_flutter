import 'package:extagram_flutter/state/auth/providers/auth_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extagram'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Extagram'),
            ElevatedButton(
              onPressed: ref.watch(authStateProvider.notifier).loginWithGoogle,
              child: const Text('Google'),
            ),
            ElevatedButton(
              onPressed:
                  ref.watch(authStateProvider.notifier).loginWithFacebook,
              child: const Text('Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
