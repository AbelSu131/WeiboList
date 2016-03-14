//
//  WeiboCell.h
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class WeiboFrame;

@interface WeiboCell : UITableViewCell

/** 接受外界传入的模型 */
@property (strong,nonatomic) WeiboFrame *weiboFrame;

//类方法，通过类名直接调用这个方法
+(instancetype) cellWithTableView:(UITableView *)tableView;

@end
