//
//  DownloadProgress.m
//  20160321003-Quartz2D-DownloadProgress
//
//  Created by Rainer on 16/3/21.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "DownloadProgress.h"

@implementation DownloadProgress


/**
 *  在这里绘制下载进度
 */
- (void)drawRect:(CGRect)rect {
    // 1.获取半径 ＝ 本视图高度的一半
    CGFloat radius = rect.size.height * 0.5;
    
    // 2.获取画圆弧的要素
    // 2.1.原点
    CGPoint arcCenter = CGPointMake(radius, radius);
    // 2.2.起始角度
    CGFloat startAngle = -M_PI_2;
    // 2.3.结束角度
    CGFloat endAngle = -M_PI_2 + M_PI * 2 * self.progressValue;
    
    // 3.创建一个贝赛尔路径对象
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:radius - 4 startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    // 4.设置贝赛尔路径属性
    [bezierPath setLineWidth:2.0];
    [[UIColor blueColor] set];
    
    // 5.描边画线
    [bezierPath stroke];
}

/**
 *  复写进度值的set方法，在这里掉用需要重新绘制的方法
 */
- (void)setProgressValue:(CGFloat)progressValue {
    _progressValue = progressValue;
    
    // 如果想要执行drawRect方法来重新绘图需要调用这个方法
    [self setNeedsDisplay];
}

@end
