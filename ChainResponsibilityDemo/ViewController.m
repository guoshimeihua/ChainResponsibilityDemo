//
//  ViewController.m
//  ChainResponsibilityDemo
//
//  Created by Bruce on 15/8/21.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ViewController.h"
#import "Attack.h"
#import "WaterAttack.h"
#import "FireAttack.h"
#import "SoliderAttack.h"
#import "AttackHandler.h"
#import "WaterAttackHandler.h"
#import "FireAttackHandler.h"
#import "Avatar.h"
@interface ViewController ()

@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建一个游戏人物
    AttackHandler *avatar = [[Avatar alloc] init];
    
    // 给其穿上防水的铠甲
    AttackHandler *waterAramedAvatar = [[WaterAttackHandler alloc] init];
    [waterAramedAvatar setNextAttackHandler:avatar];
    
    // 然后在穿上防火的铠甲
    AttackHandler *fireAramedAvatar = [[FireAttackHandler alloc] init];
    [fireAramedAvatar setNextAttackHandler:waterAramedAvatar];
    
    // ....以后还可以加其他行动
    
    // 用用水攻击游戏人物
    Attack *waterAttack = [[WaterAttack alloc] init];
    [fireAramedAvatar handleAttack:waterAttack];
    
    // 用火攻击游戏人物
    Attack *fireAttack = [[FireAttack alloc] init];
    [fireAramedAvatar handleAttack:fireAttack];
    
    // 用土攻击游戏人物
    Attack *soliderAttack = [[SoliderAttack alloc] init];
    [fireAramedAvatar handleAttack:soliderAttack];
    
    // ....以后可以加其他的攻击
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
