import 'package:extagram_flutter/views/components/rich_text/base_text.dart';
import 'package:flutter/material.dart';

@immutable
class LinkText extends BaseText {
  final VoidCallback onTapped;

  const LinkText({
    required super.text,
    required this.onTapped,
    super.style,
  });
}
