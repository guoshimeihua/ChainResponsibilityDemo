//
//  FireAttackHandler.h
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AttackHandler.h"

@interface FireAttackHandler : AttackHandler

// 重写处理攻击的方法
- (void)handleAttack:(Attack *)attack;

@end
