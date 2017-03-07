//
//  SecondViewController.m
//  block+danli+delegate
//
//  Created by 刘明鑫 on 2017/1/12.
//  Copyright © 2017年 刘明鑫. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)viewDidAppear:(BOOL)animated{
    //------@param 代理练习
//    if (self.detegate) {
//        [self.detegate changeColor];
//    }
    //------@param block 赋值
    _backgroundColor([UIColor redColor]);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
