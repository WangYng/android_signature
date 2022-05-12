package io.github.wangyng.android_signature;

import android.content.Context;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.StandardMessageCodec;

public interface AndroidSignatureApi {

    String signature(Context context);

    static void setup(FlutterPlugin.FlutterPluginBinding binding, AndroidSignatureApi api, Context context) {
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();

        {
            BasicMessageChannel<Object> channel = new BasicMessageChannel<>(binaryMessenger, "io.github.wangyng.android_signature.signature", new StandardMessageCodec());
            if (api != null) {
                channel.setMessageHandler((message, reply) -> {
                    Map<String, Object> wrapped = new HashMap<>();
                    try {
                        String result = api.signature(context);
                        wrapped.put("result", result);
                    } catch (Exception exception) {
                        wrapped.put("error", wrapError(exception));
                    }
                    reply.reply(wrapped);
                });
            } else {
                channel.setMessageHandler(null);
            }
        }

   }

    static HashMap<String, Object> wrapError(Exception exception) {
        HashMap<String, Object> errorMap = new HashMap<>();
        errorMap.put("message", exception.toString());
        errorMap.put("code", null);
        errorMap.put("details", null);
        return errorMap;
    }
}
