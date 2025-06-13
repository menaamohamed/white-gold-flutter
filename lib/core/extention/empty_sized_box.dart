import 'package:flutter/widgets.dart';

extension EmptyPadding on num {
  SizedBox get sbH => SizedBox(height: toDouble());
  SizedBox get sbW => SizedBox(width: toDouble());
}
