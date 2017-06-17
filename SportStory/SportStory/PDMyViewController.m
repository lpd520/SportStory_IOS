//
//  PDMyViewController.m
//  SportStory
//
//  Created by pd on 2017/6/17.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import "PDMyViewController.h"
#import <Masonry.h>

@interface PDMyViewController ()

@end

@implementation PDMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *tLabel = [[UILabel alloc] init];
    tLabel.text = @"测试";
    tLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:tLabel];
    
    [tLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(100);
        make.width.equalTo(@300);
        make.height.equalTo(@100);
    }];
    
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
