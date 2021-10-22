import 'package:flutter/material.dart';

import 'ColorPalette.dart';

///==============================
/// BoxShadows
///==============================

/// Shadow Normal
BoxShadow shadow = BoxShadow(
  blurRadius: 5,
  spreadRadius: -2,
  offset: Offset(0.5, 0.5),
  color: kcBlack.withOpacity(0.15),
);

/// ShadowSM
BoxShadow shadowSm = BoxShadow(
  blurRadius: 3,
  spreadRadius: -2,
  offset: Offset(0.5, 0.5),
  color: kcBlack.withOpacity(0.15),
);

/// ShadowLG
BoxShadow shadowLg = BoxShadow(
  blurRadius: 12,
  spreadRadius: -3,
  offset: Offset(0.5, 0.5),
  color: kcBlack.withOpacity(0.2),
);
