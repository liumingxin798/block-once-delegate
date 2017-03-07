//
//  ViewController.m
//  block+danli+delegate
//
//  Created by 刘明鑫 on 2017/1/12.
//  Copyright © 2017年 刘明鑫. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<SecondViewControllerDetegate>
@property (nonatomic , assign)int num;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _num = 0;
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor blackColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)push{
    //------@param 在这里实现代理和block的方法是因为因为 SecondViewController的指针在这里可以拿到
    SecondViewController *second = [[SecondViewController alloc]init];
   // second.detegate = self;
    //------@param block
    second.backgroundColor = ^(UIColor *color){
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(40, 80, 40, 40)];
        view.backgroundColor = color;
        [self.view addSubview:view];
    };
    [self.navigationController pushViewController:second animated:YES]
    ;
}
//------@param 反向传值的代理方法
- (void)changeColor{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor greenColor];
    button.frame = CGRectMake((arc4random()%300), (arc4random()%600), 30, 20);
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:[NSString stringWithFormat:@"%d",_num] forState:UIControlStateNormal];
    [self.view addSubview:button];
    _num ++;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
