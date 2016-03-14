//
//  WeiboCell.m
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import "WeiboCell.h"
#import "Weibo.h"
#import "WeiboFrame.h"

#define NameFont [UIFont systemFontOfSize:15];
#define TextFont [UIFont systemFontOfSize:16];

@interface WeiboCell ()

//头像
@property (nonatomic,weak) UIImageView *iconView;
//vip
@property (nonatomic,weak) UIImageView *vipView;
//配图
@property (nonatomic,weak) UIImageView *pictureView;

//昵称
@property (nonatomic,weak) UILabel *nameLabel;
//正文
@property (nonatomic,weak) UILabel *introLabel;

@end



@implementation WeiboCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
