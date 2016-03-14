//
//  Weibo.m
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo

- (id)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (id)weiboWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

@end
