//
//  AHTabBarViewController.m
//  SportStory
//
//  Created by ai he on 2017/6/3.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import "AHTabBarViewController.h"
#import "PDMyViewController.h"

@interface AHTabBarViewController ()

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
    
    self.viewControllers = @[
                             my
                             ];
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
