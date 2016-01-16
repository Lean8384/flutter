// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Controls the description of this app in the operating system.
class Title extends StatelessComponent {
  Title({ this.title, this.child, this.color }) {
    assert(color == null || color.alpha == 0xFF);
  }

  final Widget child;

  /// A one-line description of this app for use in the window manager.
  final String title;

  /// A color that the window manager should use to identify this app.
  final Color color;

  Widget build(BuildContext context) {
    updateTaskDescription(label: title, color: color);
    return child;
  }

  void debugFillDescription(List<String> description) {
    super.debugFillDescription(description);
    if (title != null)
      description.add('"$title"');
    if (color != null)
      description.add('color: $color');
  }
}
