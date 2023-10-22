import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'authen_widget.dart' show AuthenWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthenModel extends FlutterFlowModel<AuthenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddressLogon widget.
  FocusNode? emailAddressLogonFocusNode;
  TextEditingController? emailAddressLogonController;
  String? Function(BuildContext, String?)? emailAddressLogonControllerValidator;
  // State field(s) for passwordLogon widget.
  FocusNode? passwordLogonFocusNode;
  TextEditingController? passwordLogonController;
  late bool passwordLogonVisibility;
  String? Function(BuildContext, String?)? passwordLogonControllerValidator;
  // State field(s) for PasswordLogon2 widget.
  FocusNode? passwordLogon2FocusNode;
  TextEditingController? passwordLogon2Controller;
  late bool passwordLogon2Visibility;
  String? Function(BuildContext, String?)? passwordLogon2ControllerValidator;
  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeController;
  String? Function(BuildContext, String?)? textFieldNomeControllerValidator;
  // State field(s) for SeForProf widget.
  bool? seForProfValue;
  // State field(s) for emailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLogonVisibility = false;
    passwordLogon2Visibility = false;
    passwordLoginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLogonFocusNode?.dispose();
    emailAddressLogonController?.dispose();

    passwordLogonFocusNode?.dispose();
    passwordLogonController?.dispose();

    passwordLogon2FocusNode?.dispose();
    passwordLogon2Controller?.dispose();

    textFieldNomeFocusNode?.dispose();
    textFieldNomeController?.dispose();

    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
