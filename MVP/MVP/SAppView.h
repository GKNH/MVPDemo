//
//  SAppView.h
//  MVP
//
//  Created by Sun on 2020/2/17.
//  Copyright © 2020 sun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SAppView;

// 声明协议，用于View给Presenter通信
@protocol SAppViewDelegate <NSObject>

@optional
- (void)appViewDidClick:(SAppView *)appView;

@end


@interface SAppView : UIView

// 给View传递数据
- (void)setName:(NSString *)name andImage:(NSString *)image;
// 代理属性
@property (nonatomic, weak) id<SAppViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
