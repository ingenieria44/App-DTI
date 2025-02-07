import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cfd_widget.dart' show CfdWidget;
import 'package:flutter/material.dart';

class CfdModel extends FlutterFlowModel<CfdWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for temped widget.
  double? tempedValue;
  FormFieldController<double>? tempedValueController;
  // State field(s) for pressioncfd widget.
  double? pressioncfdValue;
  FormFieldController<double>? pressioncfdValueController;
  // State field(s) for ground widget.
  double? groundValue;
  FormFieldController<double>? groundValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
