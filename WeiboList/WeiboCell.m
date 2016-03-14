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
    static NSString *identifier = @"status";
    //1.缓存中取
    WeiboCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //2.创建
    if (cell == nil) {
        cell = [[WeiboCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}

/**
 * 构造方法(在初始化对象的时候会调用)
 * 一般在这个方法中添加需要显示的子控件
 */

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // 让自定义Cell和系统的cell一样，一创建出来就拥有一些子控件提供给我们使用
        // 1.创建
    }
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
