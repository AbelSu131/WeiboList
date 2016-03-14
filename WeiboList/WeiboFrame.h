//
//  WeiboFrame.h
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//  用来保存每一行数据的frame,计算frame

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Weibo;
@interface WeiboFrame : NSObject

//头像的frame
@property(nonatomic,assign) CGRect iconF;

//昵称的frame
@property(nonatomic,assign) CGRect nameF;

//vip的frame
@property(nonatomic,assign) CGRect vipF;

//正文的frame
@property(nonatomic,assign) CGRect introF;

//配图的frame
@property(nonatomic,assign) CGRect pictureF;

//行高
@property(nonatomic,assign) CGFloat cellHeight;

/* 模型数据 */
@property(nonatomic,strong) Weibo *weibo;


@end
