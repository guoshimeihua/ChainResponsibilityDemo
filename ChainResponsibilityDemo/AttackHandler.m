//
//  AttackHandler.m
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler

- (void)handleAttack:(Attack *)attack {
    // 默认调用nextAttackHandler进行处理。
    [_nextAttackHandler handleAttack:attack];
}

@end
