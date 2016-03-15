//
//  ViewController.m
//  WeiboList
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import "ViewController.h"
#import "Weibo.h"
#import "WeiboCell.h"
#import "WeiboFrame.h"

@interface ViewController ()

@property (strong,nonatomic) NSArray *statusFrames;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma maark - 数据源
//返回组数的代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
//返回行数的代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.statusFrames.count;
}

//返回每一行cell的代理方法
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WeiboCell *cell = [WeiboCell cellWithTableView:tableView];
    
    //设置数据
    cell.weiboFrame = self.statusFrames[indexPath.row];
    //返回
    return cell;

}

#pragma mark - 懒加载
- (NSArray *)statusFrames{
    if (_statusFrames == nil) {
        NSString *fullPath = [[NSBundle mainBundle]pathForResource:@"status.plist" ofType:nil];
        NSArray *dicArray = [NSArray arrayWithContentsOfFile:fullPath];
        NSMutableArray *models = [NSMutableArray arrayWithCapacity:dicArray.count];
        for (NSDictionary *dict in dicArray) {
            // 创建模型
            Weibo *weibo = [Weibo weiboWithDict:dict];
            // 根据模型数据创建frame模型
            WeiboFrame *wbF = [[WeiboFrame alloc]init];
            wbF.weibo = weibo;
            [models addObject:wbF];
        }
        self.statusFrames = [models copy];
    }
    return _statusFrames;
    
}

#pragma mark - 代理方法
// 这个方法比cellForRowAtIndexPath先调用，即创建cell的时候得先知道它的高度，所以高度必须先计算
// 所以在懒加载的时候获取微博的数据立即去计算行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //取出相应行的frame模型
    WeiboFrame *wbf = self.statusFrames[indexPath.row];
    NSLog(@"height = %f",wbf.cellHeight);
    return wbf.cellHeight;
}

//隐藏状态栏
-(BOOL)prefersStatusBarHidden
{
    return YES;
}



@end
