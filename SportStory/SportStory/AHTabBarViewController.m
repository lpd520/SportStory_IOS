//
//  AHTabBarViewController.m
//  SportStory
//
//  Created by ai he on 2017/6/3.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import "AHTabBarViewController.h"
#import "PDMyViewController.h"
#import "AHMessageViewController.h"

@interface AHTabBarViewController () <UITabBarControllerDelegate>

@end

@implementation AHTabBarViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    PDMyViewController *my = [[PDMyViewController alloc] init];
    my.tabBarItem.title = @"我的";
    my.tabBarItem.selectedImage = [UIImage imageNamed:@"my"];
    my.tabBarItem.image = [UIImage imageNamed:@"my"];
    
    AHMessageViewController *message = [[AHMessageViewController alloc] init];
    message.tabBarItem.title = @"消息";
    message.tabBarItem.selectedImage = [UIImage imageNamed:@"message"];
    message.tabBarItem.image = [UIImage imageNamed:@"message"];
    
    self.viewControllers = @[
                             message,
                             my
                             ];
    self.title = message.tabBarItem.title;
    self.delegate = self;
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    self.title = item.title;
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
