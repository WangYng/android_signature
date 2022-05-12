//
//  AndroidSignatureApi.h
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import "AndroidSignatureEventSink.h"

@protocol AndroidSignatureApiDelegate <NSObject>

- (NSString *)signature;

@end

@interface AndroidSignatureApi : NSObject

+ (void)setup:(NSObject<FlutterPluginRegistrar> *)registrar api:(id<AndroidSignatureApiDelegate>)api;

@end

