//
//  AndroidSignatureEventSink.m
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import "AndroidSignatureEventSink.h"

@implementation AndroidSignatureEventSink

- (FlutterError * _Nullable)onCancelWithArguments:(id _Nullable)arguments {
    self.event = NULL;
    return nil;
}

- (FlutterError * _Nullable)onListenWithArguments:(id _Nullable)arguments eventSink:(nonnull FlutterEventSink)events {
    self.event = events;
    return nil;
}

@end
