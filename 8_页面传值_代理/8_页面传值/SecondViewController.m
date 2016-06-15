//
//  SecondViewController.m
//  8_页面传值
//
//  Created by  on 14-12-9.
//  Copyright (c) 2014年 . All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"第二页";
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
    [button setTitle:@"上一页" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    NSLog(@"%@",_value);
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    label.text = _value;
    [self.view addSubview:label];
    
    
    // Do any additional setup after loading the view.
}


- (void)buttonAction:(UIButton *)sender
{
    //让代理执行协议中的方法,将要传递的值传回去
    if (_delegate != nil && [_delegate respondsToSelector:@selector(sendValue:)])
    {
      //3， 《调用》
      [_delegate  sendValue:@"ffff"];
      NSLog(@"传出类：  //4， 《调用》  ");
        
    }
    
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_delegate release];
    [_value release];
    [super dealloc];
}




@end
