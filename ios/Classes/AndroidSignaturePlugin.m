//
//  AndroidSignaturePlugin.m
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import "AndroidSignaturePlugin.h"
#import "AndroidSignatureEventSink.h"

@implementation AndroidSignaturePlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    AndroidSignaturePlugin* instance = [[AndroidSignaturePlugin alloc] init];
    [AndroidSignatureApi setup:registrar api:instance];
}

- (NSString *)signature {
    // TODO
    return @"";
}

@end
