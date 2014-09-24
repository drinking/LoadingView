//
//  ZNMProgressView.m
//  Route
//
//  Created by zhinanmaoForMac on 14-9-19.
//  Copyright (c) 2014年 zhinanmaoForMac. All rights reserved.
//

#import "DKProgressView.h"
#import "DKCircleBubbleView.h"
#import "StyleKitName.h"
@implementation DKProgressView

- (instancetype)init{
    if (self = [super init]) {
        self.frame = CGRectMake(0, 0, 200, 200);
        
        self.backgroundColor = [UIColor clearColor];
        
        self.train = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 90, 68)];
        [self.train setImage:[UIImage imageNamed:@"t1@2x.jpg"]];
        self.train.center = self.center;
        [self addSubview:self.train];
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animating) userInfo:nil repeats:YES];

    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        
        self.train = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 90, 68)];
        [self.train setImage:[UIImage imageNamed:@"t1@2x.jpg"]];
        self.train.center = self.center;
        [self addSubview:self.train];
        
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animating) userInfo:nil repeats:YES];
    }
    return self;
}

- (void)showPlaceBubble{
    
    
    NSInteger inset = 50;
    NSInteger screenWidth = (int)CGRectGetWidth(self.frame)-inset;
    NSInteger screenHeight = (int)CGRectGetHeight(self.frame)-inset;
    CGFloat randX = rand()%screenWidth;
    CGFloat randY = rand()%screenHeight;
    if (randX<inset) {
        randX+=inset;
    }
    if (randY<inset) {
        randY+=inset;
    }
    DKCircleBubbleView *iv = [[DKCircleBubbleView alloc] initWithFrame:CGRectMake(randX,randY, 40, 40)];
    [self addSubview:iv];
    iv.alpha = 0;
    
    [UIView animateWithDuration:3 animations:^{
        iv.alpha = 1;
    }completion:^(BOOL bo){
        [UIView animateWithDuration:2 animations:^{
            iv.alpha = 0;
        }completion:^(BOOL bo){
            [iv removeFromSuperview];
        }];
    }];
}

- (void)animating{
    
    static NSInteger index = 1;

    NSString *imagename = [NSString stringWithFormat:@"t%d@2x.jpg",++index];
    [self.train setImage:[UIImage imageNamed:imagename]];
    
    if (index == 19) {
        index = 1;
        [self showPlaceBubble];
    }
}

- (void)drawRect:(CGRect)rect {
    CGFloat trainStartX = (rect.origin.x + (rect.size.width/2)) - 100;
    CGFloat trainStartY = (rect.origin.x + (rect.size.height/2)) - 100;
    [StyleKitName drawRedBubbleWithFrame:CGRectMake(trainStartX, trainStartY, 200, 200)];
}

- (void)hide{
    [self removeFromSuperview];
    [self.timer invalidate];
}

- (void)dealloc{
    [self.timer invalidate];
}

+ showAtView:(UIView *)view{
    DKProgressView *pv = [[DKProgressView alloc] initWithFrame:view.frame];
//    pv.center = view.center;
    [view addSubview:pv];
    return pv;
}
@end
