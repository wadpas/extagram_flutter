import 'dart:collection';
import 'package:extagram_flutter/state/constants/firebase_field_name.dart';
import 'package:extagram_flutter/state/posts/typedefs.dart/user_id.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super({
          FirebaseFieldName.userId: userId,
          FirebaseFieldName.displayName: displayName ?? '',
          FirebaseFieldName.email: email ?? ''
        });
}
