//
//  SAppView.m
//  MVP
//
//  Created by Sun on 2020/2/17.
//  Copyright © 2020 sun. All rights reserved.
//

#import "SAppView.h"

@interface SAppView()
@property (nonatomic, weak) UIImageView *iconView;
@property (nonatomic, weak) UILabel *nameLabel;
@end

@implementation SAppView

// 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // 创建UIImageView
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;
        
        // 创建Label
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 100, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    return self;
}

// 设置数据给子控件
- (void)setName:(NSString *)name andImage:(NSString *)image {
    _iconView.image = [UIImage imageNamed:image];
    _nameLabel.text = name;
}

/**
 触摸视图的时候，代理执行方法
 实现 View 到 Presenter的通信
 */
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(appViewDidClick:)]) {
        [self.delegate appViewDidClick:self];
    }
}


@end
