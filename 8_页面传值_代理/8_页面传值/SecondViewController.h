//
//  SecondViewController.h
//  8_页面传值
//
//  Created by  on 14-12-9.
//  Copyright (c) 2014年 . All rights reserved.
//

#import <UIKit/UIKit.h>

//1， 声明代理需要的协议
@protocol SecondViewControllerDelegate <NSObject>

@optional

- (void)sendValue:(NSString *)value;

@end


@interface SecondViewController : UIViewController


//2，《声明》
@property(nonatomic,assign)id<SecondViewControllerDelegate> delegate;



@property(nonatomic,retain)NSString *value;


@end
