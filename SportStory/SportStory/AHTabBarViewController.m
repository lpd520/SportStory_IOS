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
#import "AHNearByViewController.h"
#import "AHDynamicViewController.h"
#import "AHAddViewController.h"

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
    
    
    AHNearByViewController *nearBy = [[AHNearByViewController alloc] init];
    
    nearBy.tabBarItem.title = @"附近";
    nearBy.tabBarItem.selectedImage = [UIImage imageNamed:@"nearby"];
    nearBy.tabBarItem.image = [UIImage imageNamed:@"nearby"];


    AHDynamicViewController *dynamic = [[AHDynamicViewController alloc] init];
    dynamic.tabBarItem.title = @"动态";
    dynamic.tabBarItem.selectedImage = [UIImage imageNamed:@"dynamic"];
    dynamic.tabBarItem.image = [UIImage imageNamed:@"dynamic"];
    
    AHAddViewController *add = [[AHAddViewController alloc] init];
    add.tabBarItem.title = @"添加";
    add.tabBarItem.selectedImage = [UIImage imageNamed:@"activity"];
    add.tabBarItem.image = [UIImage imageNamed:@"activity"];

    
    
    AHMessageViewController *message = [[AHMessageViewController alloc] init];
    message.tabBarItem.title = @"消息";
    message.tabBarItem.selectedImage = [UIImage imageNamed:@"message"];
    message.tabBarItem.image = [UIImage imageNamed:@"message"];
    
    PDMyViewController *my = [[PDMyViewController alloc] init];
    my.tabBarItem.title = @"我的";
    my.tabBarItem.selectedImage = [UIImage imageNamed:@"my"];
    my.tabBarItem.image = [UIImage imageNamed:@"my"];
    
    
    
    self.viewControllers = @[nearBy,
                             dynamic,
                             add,
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
