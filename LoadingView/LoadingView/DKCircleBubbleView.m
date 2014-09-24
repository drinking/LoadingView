//
//  ZNMPlaceBubbleView.m
//  Route
//
//  Created by zhinanmaoForMac on 14-9-19.
//  Copyright (c) 2014年 zhinanmaoForMac. All rights reserved.
//

#import "DKCircleBubbleView.h"
#import "StyleKitName.h"

#define RGBCOLOR(_R_, _G_, _B_) [UIColor colorWithRed:(_R_)/255.0 green: (_G_)/255.0 blue: (_B_)/255.0 alpha: 1.0]
@implementation DKCircleBubbleView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        
        colors= @[RGBCOLOR(2,208,173),RGBCOLOR(255,208,61),RGBCOLOR(0,200,251),RGBCOLOR(0,222,157),RGBCOLOR(255,62,143),RGBCOLOR(255,148,46)];
        places = @[@"北京",@"上海",@"广州",@"深圳",@"香港",@"成都",@"杭州",@"武汉",@"西安",
                   @"重庆",@"青岛",@"长沙",@"南京",@"厦门",@"昆明",@"大连",@"天津",@"郑州",
                   @"三亚",@"济南",@"福州",@"澳门",@"台北",@"香港",@"首尔",@"澳门",@"东京",
                   @"新加坡",@"台北",@"曼谷",@"大阪",@"胡志明市",@"马尼拉",@"名古屋",@"伦敦",
                   @"吉隆坡",@"釜山",@"悉尼",@"法兰克福",@"温哥华",@"巴黎",@"纽约",@"洛杉矶",
                   @"夏威夷",@"慕尼黑",@"罗马"];
    }
    return self;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [StyleKitName drawPlaceBubble:places[rand()%places.count] color:colors[rand()%colors.count]];
    
}


@end
