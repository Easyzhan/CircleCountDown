//
//  CircleView.m
//  CircleCountDown
//
//  Created by Zin_戦 on 16/6/26.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

#import "CircleView.h"


@implementation CircleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self time];
        
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15 , 30, 30)];
        _timeLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_timeLabel];
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    //获得上下文对象，只要是用CoreGraphics就必须要
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 5);//设置线宽
    CGContextSetRGBStrokeColor(context, 1, 0, 1, 1);

    /*
     CGContextAddArc(上下文对象    ,     圆心x,     圆心y,     曲线开始点,    曲线结束点,     半径);
     */
    CGContextAddArc(context, self.frame.size.width/2.0, self.frame.size.height/2.0, self.bounds.size.width/2.0 - 5, 0 , self.count/500.0 * 2* M_PI, 0 );
   
    CGContextStrokePath(context);
}

- (void)time{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(action) userInfo:nil repeats:YES];
    //这个应该就不用解释了
}
- (void)action{
    self.count++;//时间累加
    
    if (self.count == 500) {
        //到达时间以后取消定时器
        [self.timer invalidate];
        self.timer = nil;
    }
    if (self.count%100 == 0) {
        self.timeLabel.text = [NSString stringWithFormat:@"%ld",5 - self.count/100];
        NSLog(@"---%@",[NSString stringWithFormat:@"%ld",5 - self.count/100]);
        
    }
    [self setNeedsDisplay];
}
@end
