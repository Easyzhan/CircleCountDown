//
//  CircleView.h
//  CircleCountDown
//
//  Created by Zin_戦 on 16/6/26.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

@property (nonatomic, assign) NSInteger count;
@property (nonatomic,strong) NSTimer *timer;

@property (nonatomic,strong) UILabel *timeLabel;
@end
