//
//  NSString+random.m
//  GraphCodeView-demo
//
//  Created by appleimac on 2017/8/6.
//  Copyright © 2017年 申冠华. All rights reserved.
//

#import "NSString+random.h"

@implementation NSString (random)
+(NSString *)randomStringWithLength:(NSInteger)len {
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (NSInteger i = 0; i < len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length])]];
    }
    return randomString;
}
@end
