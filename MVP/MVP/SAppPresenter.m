//
//  SAppPresenter.m
//  MVP
//
//  Created by Sun on 2020/2/17.
//  Copyright © 2020 sun. All rights reserved.
//

#import "SAppPresenter.h"
#import "SAPPModel.h"
#import "SAppView.h"

@interface SAppPresenter() <SAppViewDelegate>

@property (nonatomic, weak) UIViewController *controller;

@end

@implementation SAppPresenter

- (instancetype)initWithController:(UIViewController *)controller {
    if (self = [super init]) {
        self.controller = controller;
        
        // 创建视图
        SAppView *appView = [[SAppView alloc] init];
        appView.frame = CGRectMake(100, 100, 100, 150);
        appView.delegate = self;
        [controller.view addSubview:appView];
        
        // 初始化模型数据
        SAPPModel *model = [[SAPPModel alloc] init];
        model.name = @"QQ";
        model.image = @"QQ";
        
        // 给视图传递数据
        [appView setName:model.name andImage:model.image];
    }
    return self;
}

- (void)appViewDidClick:(SAppView *)appView {
    NSLog(@"presenter 监听了 appView 的点击");
}
@end
