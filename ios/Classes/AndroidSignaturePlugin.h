//
//  AndroidSignaturePlugin.h
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import <Flutter/Flutter.h>
#import "AndroidSignatureApi.h"

@interface AndroidSignaturePlugin : NSObject<AndroidSignatureApiDelegate>

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar;

@end
