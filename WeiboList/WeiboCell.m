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

/* 声明 */
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


/* 实现 */
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
        // 1.创建头像
        UIImageView *iconView = [[UIImageView alloc]init];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        
        // 2.创建昵称
        UILabel *nameLabel = [[UILabel alloc]init];
        nameLabel.font = NameFont;
        //nameLabel.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:nameLabel];
        self.nameLabel = nameLabel;
        
        // 3.创建vip
        UIImageView *vipView = [[UIImageView alloc]init];
        vipView.image = [UIImage imageNamed:@"vip"];
        [self.contentView addSubview:vipView];
        self.vipView = vipView;
        
        // 4.创建正文
        UILabel *introLabel = [[UILabel alloc]init];
        introLabel.font = TextFont;
        introLabel.numberOfLines = 0;
        //introLabel.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:introLabel];
        self.introLabel = introLabel;
        
        // 5.创建配图
        UIImageView *pictureView = [[UIImageView alloc]init];
        [self.contentView addSubview:pictureView];
        self.pictureView = pictureView;
    }
    return self;
}


- (void)setWeiboFrame:(WeiboFrame *)weiboFrame{
    _weiboFrame = weiboFrame;
    // 1.给子控件赋值数据
    [self settingData];
    // 2.设置frame
    [self settingFrame];
}

/**
 *  设置子控件的数据
 */
- (void)settingData{
    Weibo *weibo = self.weiboFrame.weibo;
    
    //设置头像
    
    
}


/**
 *  设置子控件的frame
 */
- (void)settingFrame{
    
}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
