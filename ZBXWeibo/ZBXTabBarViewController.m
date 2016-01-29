//
//  ZBXTabBarViewController.m
//  MyWeibo
//
//  Created by Architect_ZBX on 16/1/27.
//  Copyright © 2016年 zhaobingxu. All rights reserved.
//

#import "ZBXTabBarViewController.h"

@interface ZBXTabBarViewController ()

@end

@implementation ZBXTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController* home = [[UIViewController alloc] init];
    [self addOneChild:home title:@"首页" imageName:@"tabbar_home"];
    
    UIViewController* message = [[UIViewController alloc] init];
    [self addOneChild:message title:@"消息" imageName:@"tabbar_message_center"];
    
    UIViewController* discover = [[UIViewController alloc] init];
    [self addOneChild:discover title:@"发现" imageName:@"tabbar_discover"];
    
    UIViewController* me = [[UIViewController alloc] init];
    [self addOneChild:me title:@"我" imageName:@"tabbar_profile"];
}

-(void) addOneChild:(UIViewController*)childVc title:(NSString*)title imageName:(NSString*)imageName {
    childVc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    [self addChildViewController:childVc];
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
