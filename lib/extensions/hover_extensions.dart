import 'dart:html' as html;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/*
TODO: Extensions methods not working for now, so Extended the class directly
extension HoverExtension on Widget {
  static final appContainer =
      html.window.document.getElementById("app-container");
  Widget get showCursorOnHover{

  }
}
*/

class HandCursor extends MouseRegion {
  static final appContainer =
      html.window.document.getElementById('app-container');

  HandCursor({Widget child})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: child,
        );
}
