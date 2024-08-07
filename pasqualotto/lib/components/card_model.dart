import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_widget.dart' show CardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardModel extends FlutterFlowModel<CardWidget> {
  ///  Local state fields for this component.

  ProductStruct? productObj;
  void updateProductObjStruct(Function(ProductStruct) updateFn) {
    updateFn(productObj ??= ProductStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
