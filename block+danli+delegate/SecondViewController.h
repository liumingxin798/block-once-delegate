//
//  SecondViewController.h
//  block+danli+delegate
//
//  Created by 刘明鑫 on 2017/1/12.
//  Copyright © 2017年 刘明鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

//------@param delegate练习
@protocol SecondViewControllerDetegate <NSObject>

- (void)changeColor;
@end
@interface SecondViewController : UIViewController

//------@param block 练习
typedef void(^changeColor)(id);
@property (nonatomic , copy)changeColor backgroundColor;

//------@param delegate练习
@property(nonatomic , assign)id<SecondViewControllerDetegate>detegate;
@end
