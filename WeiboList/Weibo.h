//
//  Weibo.h
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weibo : NSObject

@property (nonatomic,copy) NSString *text; //内容
@property (nonatomic,copy) NSString *icon; //头像
@property (nonatomic,copy) NSString *name; //昵称
@property (nonatomic,copy) NSString *picture; //配图
@property (nonatomic,assign) BOOL vip;

- (id)initWithDict:(NSDictionary *)dict;
+ (id)weiboWithDict:(NSDictionary *)dict;
@end
