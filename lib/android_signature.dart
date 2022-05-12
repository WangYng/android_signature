import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:android_signature/android_signature_api.dart';

class AndroidSignature {

  static Future<String> signature() async {
    return AndroidSignatureApi.signature();
  }

}

