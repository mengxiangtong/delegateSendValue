//
//  FirstViewController.m
//  8_页面传值
//
//  Created by  on 14-12-9.
//  Copyright (c) 2014年 . All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

//遵守后一个页面传值的协议
@interface FirstViewController () <SecondViewControllerDelegate>

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"第一页";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor greenColor];
    button.frame = CGRectMake(100, 100, 200, 30);
    [button setTitle:@"下一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

//4  实现代理  协议方法
- (void)sendValue:(NSString *)value
{
     NSLog(@"传入类： 4  实现 协议方法  ");
    
    NSLog(@"后一个页面传过来的值 %@",value);
    
}



- (void)buttonAction:(UIButton *)sender
{
    //，创建
    SecondViewController *secongVC = [SecondViewController new];
    //，给所传属性
    secongVC.value = @"姓名";
    
    //2  设置代理
    secongVC.delegate = self;
    NSLog(@"传入类： //2  设置代理  ");

    //，推出
    [self.navigationController pushViewController:secongVC animated:YES];
    [secongVC release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
