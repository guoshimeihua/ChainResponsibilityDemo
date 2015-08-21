//
//  WaterAttackHandler.m
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "WaterAttackHandler.h"
#import "WaterAttack.h"
@implementation WaterAttackHandler

- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[WaterAttack class]]) {
        NSLog(@"我挡下了水的攻击");
    }else {
        NSLog(@"我处理不了来自%@的攻击", [attack class]);
        [super handleAttack:attack];
    }
}

@end
