//
//  UIImage+remote.m
//  TwitterUI
//
//  Created by Mesfin Bekele Mekonnen on 7/23/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "UIImage+remote.h"

@implementation UIImage (remote)

+ (UIImage *)imageFromURLString:(NSString *)string {
    NSURL *url = [NSURL URLWithString:string];
    NSData *data = [NSData dataWithContentsOfURL:url];
    return [UIImage imageWithData:data];
}

@end
