//
//  ViewController.m
//  LabelDemo
//
//  Created by zhuchenglong on 16/7/22.
//  Copyright © 2016年 zhuchenglong. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+size.h"
//应用程序的屏幕宽、高
#define kHeight [UIScreen mainScreen].bounds.size.height
#define kWidth  [UIScreen mainScreen].bounds.size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //Label的宽度自适应
    UILabel *textLabel1 = [[UILabel alloc]init];
    textLabel1.backgroundColor = [UIColor yellowColor];
    textLabel1.font = [UIFont systemFontOfSize:13];
    textLabel1.text = @"我是宽度自适应哈哈哈哈哈哈哈66-->";
    CGRect frame1 = [textLabel1 getFrameWithFreeWidth:CGPointMake(10, 100) maxHight:30];
    textLabel1.frame = frame1;
    [self.view addSubview:textLabel1];
    
    
    //Label的高度自适应
    UILabel *textLabel2 = [[UILabel alloc]init];
    textLabel2.backgroundColor = [UIColor redColor];
    textLabel2.text = @"我是高度自适应哈哈哈嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘻嘻嘻嘻-->";
    CGRect frame2 = [textLabel2 getFrameWithFreeHight:CGPointMake(10, 150) maxWidth:250];
    textLabel2.frame = frame2;
    [self.view addSubview:textLabel2];
    
   
    //Label的宽度自适应----->带字间距
    UILabel *textLabel3 = [[UILabel alloc]init];
    textLabel3.backgroundColor = [UIColor blueColor];
    textLabel3.text = @"我是宽度自适应哈哈哈哈66-->";
    CGRect frame3 = [textLabel3 getFrameWithFreeWidth:CGPointMake(10, 250) maxHight:30 textSpace:5];
    textLabel3.frame = frame3;
    [self.view addSubview:textLabel3];

    
    //Label的高度自适应----->带行间距
    UILabel *textLabel4 = [[UILabel alloc]init];
    textLabel4.backgroundColor = [UIColor greenColor];
    textLabel4.text = @"我是高度自适应哈哈哈嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘻嘻嘻嘻啦啦啦啦啦啦啦啦啦啦啦啦啦啦-->";
    CGRect frame4 = [textLabel4 getFrameWithFreeHight:CGPointMake(10, 350) maxWidth:250 textSpace:3 lineSpace:15];
    textLabel4.frame = frame4;
    [self.view addSubview:textLabel4];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    NSString *title = @"啦啦啦啦---我是Button---啦啦啦啦";
    [button setTitle:title forState:UIControlStateNormal];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.frame = [button getFrameWithFreeWidth:CGPointMake(10, 500) maxHight:35];
    [self.view addSubview:button];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
