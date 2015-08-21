//
//  AttackHandler.h
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
@interface AttackHandler : NSObject

@property (nonatomic, strong) AttackHandler *nextAttackHandler;

- (void)handleAttack:(Attack *)attack;

@end
