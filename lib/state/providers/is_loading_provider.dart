import 'package:extagram_flutter/state/auth/providers/auth_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isLoadingProvider = Provider((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.isLoading;
});
