//
//  viewNS.m
//  block+danli+delegate
//
//  Created by 刘明鑫 on 2017/1/13.
//  Copyright © 2017年 刘明鑫. All rights reserved.
//

#import "viewNS.h"
//------@param 单利练习
@implementation viewNS
+(instancetype)viewNsType{
    //------@param 已该文件创建的单利创建一个指针
    static viewNS *view = nil;
    //------@param GCD的单利方法
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //------@param 将单利初始化
        view = [[viewNS alloc]init];
    });
    return view;
}
@end
