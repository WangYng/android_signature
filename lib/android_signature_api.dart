import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AndroidSignatureApi {

  static Future<String> signature() async {
    const channel = BasicMessageChannel<dynamic>('io.github.wangyng.android_signature.signature', StandardMessageCodec());

    final Map<String, dynamic> requestMap = {};
    final reply = await channel.send(requestMap);

    if (!(reply is Map)) {
      _throwChannelException();
    }

    final replyMap = Map<String, dynamic>.from(reply);
    if (replyMap['error'] != null) {
      final error = Map<String, dynamic>.from(replyMap['error']);
      _throwException(error);
      return '';
    } else {
      return replyMap["result"];
    }
  }

}

_throwChannelException() {
  throw PlatformException(code: 'channel-error', message: 'Unable to establish connection on channel.', details: null);
}

_throwException(Map<String, dynamic> error) {
  throw PlatformException(code: "${error['code']}", message: "${error['message']}", details: "${error['details']}");
}
