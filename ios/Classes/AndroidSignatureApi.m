//
//  AndroidSignatureApi.m
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import "AndroidSignatureApi.h"

@implementation AndroidSignatureApi

+ (void)setup:(NSObject<FlutterPluginRegistrar> *)registrar api:(id<AndroidSignatureApiDelegate>)api {
    NSObject<FlutterBinaryMessenger> *messenger = [registrar messenger];

    {
        FlutterBasicMessageChannel *channel =[FlutterBasicMessageChannel messageChannelWithName:@"io.github.wangyng.android_signature.signature" binaryMessenger:messenger];
        if (api != nil) {
            [channel setMessageHandler:^(id  message, FlutterReply reply) {
                NSMutableDictionary<NSString *, NSObject *> *wrapped = [NSMutableDictionary new];
                if ([message isKindOfClass:[NSDictionary class]]) {
                    NSString * result = [api signature];
                    wrapped[@"result"] = result;
                } else {
                    wrapped[@"error"] = @{@"message": @"parse message error"};
                }
                reply(wrapped);
            }];
        } else {
            [channel setMessageHandler:nil];
        }
    }

}

@end
