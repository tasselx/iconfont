//
//  ViewController.m
//  IconfontDemo
//
//  Created by Tassel on 16/9/3.
//  Copyright © 2016年 Tassel. All rights reserved.
//

#import "ViewController.h"
#import "FontImageList.h"
#import "HQFontImage.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*这种方式需要info.list注册字体*/
    /*文本方式显示*/
    UILabel  *imgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 40)];
    imgLabel.font = [UIFont fontWithName:@"iconfont" size:30];
    imgLabel.textColor = [UIColor redColor];
    imgLabel.textAlignment = NSTextAlignmentCenter;
    NSMutableString *tempStr = [NSMutableString new];
    for (NSString *str in [[FontImageList IconDictionary] allValues]) {
        [tempStr appendFormat:@"%@ ",str];
    }
    imgLabel.text = tempStr;
    [self.view addSubview:imgLabel];
    
    /*绘制成UIimage*/
    //图标编码是&#xe601，需要转成\U0000e601 在线转换网址 http://www.aslibra.com/iconFont/

    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 130, 80, 80)];
    imgView.image = [HQFontImage iconWithName:@"\U0000e600" fontSize:60 color:[UIColor redColor]];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imgView];
    
    UIImageView *imgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 220, 80, 80)];
    imgView1.image = [FontImageList iconWithName:@"crown" fontSize:60 color:[UIColor redColor] inset:UIEdgeInsetsMake(10, 10, 10, 10)];
    imgView1.contentMode = UIViewContentModeScaleAspectFit;

    [self.view addSubview:imgView1];
    
    UIImageView *imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 310, 80, 80)];
    imgView2.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e604", 40, [UIColor redColor])];
    imgView2.contentMode = UIViewContentModeScaleAspectFit;

    [self.view addSubview:imgView2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
