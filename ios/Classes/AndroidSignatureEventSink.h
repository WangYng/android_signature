//
//  AndroidSignatureEventSink.h
//  Pods
//
//  Created by 汪洋 on 2022/5/12.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

@interface AndroidSignatureEventSink : NSObject <FlutterStreamHandler>

@property (nonatomic, copy) FlutterEventSink event;

@end
