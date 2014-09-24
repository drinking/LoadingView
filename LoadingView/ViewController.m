//
//  ViewController.m
//  LoadingView
//
//  Created by zhinanmaoForMac on 14-9-24.
//  Copyright (c) 2014年 drinking. All rights reserved.
//

#import "ViewController.h"
#import "LoadingView/DKProgressView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [DKProgressView showAtView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
