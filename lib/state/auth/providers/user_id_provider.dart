import 'package:extagram_flutter/state/auth/providers/auth_state_provider.dart';
import 'package:extagram_flutter/state/posts/typedefs.dart/user_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userIdProvider = Provider<UserId?>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.userId;
});
