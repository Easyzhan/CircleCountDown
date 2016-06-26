//
//  ViewController.m
//  CircleCountDown
//
//  Created by Zin_戦 on 16/6/26.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CircleView *view = [[CircleView alloc] initWithFrame:CGRectMake(100, 100, 60, 60)];

    [self.view addSubview:view];
}

@end
