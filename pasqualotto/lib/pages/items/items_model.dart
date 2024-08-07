import '/components/card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'items_widget.dart' show ItemsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemsModel extends FlutterFlowModel<ItemsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Card component.
  late CardModel cardModel1;
  // Model for Card component.
  late CardModel cardModel2;
  // Model for Card component.
  late CardModel cardModel3;

  @override
  void initState(BuildContext context) {
    cardModel1 = createModel(context, () => CardModel());
    cardModel2 = createModel(context, () => CardModel());
    cardModel3 = createModel(context, () => CardModel());
  }

  @override
  void dispose() {
    cardModel1.dispose();
    cardModel2.dispose();
    cardModel3.dispose();
  }
}
