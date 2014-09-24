//
//  ZNMProgressView.h
//  Route
//
//  Created by zhinanmaoForMac on 14-9-19.
//  Copyright (c) 2014年 zhinanmaoForMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKProgressView : UIView

@property (nonatomic,strong) UIImageView *train;
@property (nonatomic,strong) UIImageView *placeBubble;
@property (nonatomic,strong) NSTimer *timer;
- (instancetype)init;
- (instancetype)initWithFrame:(CGRect)frame;
- (void)hide;
+ showAtView:(UIView *)view;
@end
