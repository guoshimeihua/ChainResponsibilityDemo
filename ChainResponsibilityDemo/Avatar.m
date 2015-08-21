//
//  Avatar.m
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar

- (void)handleAttack:(Attack *)attack {
    NSLog(@"我被%@攻击到了", [attack class]);
}

@end
