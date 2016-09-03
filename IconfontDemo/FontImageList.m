//
//  FontImageList.m
//  IconfontDemo
//
//  Created by Tassel on 16/9/3.
//  Copyright © 2016年 Tassel. All rights reserved.
//

#import "FontImageList.h"

@implementation FontImageList

+ (NSDictionary*)IconDictionary {
    return @{
             @"discoverline":@"\U0000e600", // discover_line
             @"discovershape":@"\U0000e601", // discover_shape
             @"homeline":@"\U0000e602", // home_line
             @"homeshape":@"\U0000e603", // home_shape
             @"myline":@"\U0000e604", // my_line
             @"myshape":@"\U0000e605", // my_shape 
             @"crown":@"\U0000e606"};//crown
}
+ (NSString*)fontName {
    return @"iconfont";
}
@end
