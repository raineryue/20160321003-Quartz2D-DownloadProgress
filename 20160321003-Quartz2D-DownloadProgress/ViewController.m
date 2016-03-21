//
//  ViewController.m
//  20160321003-Quartz2D-DownloadProgress
//
//  Created by Rainer on 16/3/21.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"
#import "DownloadProgress.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet DownloadProgress *progressView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  滑块控件值改变事件监听处理
 */
- (IBAction)sliderValueChangedAction:(UISlider *)sender {
    // 1.设置下载进度视图的进度值
    self.progressView.progressValue = sender.value;
    
    // 2.将进度值转为百分比显示在视图上
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%", sender.value * 100];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
