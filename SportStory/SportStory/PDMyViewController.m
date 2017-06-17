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
 
    [self setupBasicUI];
    
    
    
}

- (void) setupBasicUI{
    
    UIButton *imageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imageBtn.backgroundColor = [UIColor blueColor];
//    [imageBtn setImage:[UIImage imageNamed:@"btn6"] forState:UIControlStateNormal];
    [self.view addSubview:imageBtn];
    
    UIButton *idBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    idBtn.backgroundColor = [UIColor grayColor];
    [idBtn setTitle:@"lingpidong" forState:UIControlStateNormal];
    [self.view addSubview:idBtn];
    
    UILabel *FansLabel = [[UILabel alloc] init];
    FansLabel.text = @"粉丝";
    FansLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:FansLabel];
    
    UILabel *FansNumLabel = [[UILabel alloc] init];
    FansNumLabel.text = @"342";
    FansNumLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:FansNumLabel];
    
    UILabel *FocusLabel = [[UILabel alloc] init];
    FocusLabel.text = @"关注";
    FocusLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:FocusLabel];
    
    UILabel *Vidiolabel = [[UILabel alloc] init];
    Vidiolabel.text = @"视频";
    Vidiolabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:Vidiolabel];
    
    UILabel *FoucsNumLabel = [[UILabel alloc] init];
    FoucsNumLabel.text = @"213";
    FoucsNumLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:FoucsNumLabel];
    
    UILabel *VidioNumlabel = [[UILabel alloc] init];
    VidioNumlabel.text = @"43";
    VidioNumlabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:VidioNumlabel];
    
    UILabel *line = [[UILabel alloc] init];
    line.backgroundColor = [UIColor grayColor];
    [self.view addSubview:line];

    
    //-----------------------------------------------------------
    
    [imageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(64, 64));
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.top.mas_equalTo(self.view.mas_top).offset(20);
    }];
    
    [idBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(imageBtn.mas_height);
        make.top.mas_equalTo(imageBtn.mas_top);
        make.left.mas_equalTo(imageBtn.mas_right).offset(10);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        
    }];
    
    [FansLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view.mas_top).offset(150);
    }];
    
    [FansNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(FansLabel.mas_width);
        make.bottom.mas_equalTo(FansLabel.mas_top).offset(-10);
    }];
    
    [FocusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(FansLabel.mas_centerY);
        make.left.mas_equalTo(self.view).offset(40);
    }];
    
    [Vidiolabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(FansLabel.mas_centerY);
        make.right.mas_equalTo(self.view).offset(-40);
    }];
    
    [FoucsNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(FansNumLabel.mas_centerY);
        make.centerX.mas_equalTo(FocusLabel.mas_centerX);
    }];
    
    [VidioNumlabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(FansNumLabel.mas_centerY);
        make.centerX.mas_equalTo(Vidiolabel.mas_centerX);
    }];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(FansLabel.mas_bottom).offset(5);
        make.bottom.mas_equalTo(FansLabel.mas_bottom).offset(100);
        make.left.mas_equalTo(self.view).offset(0);
        make.right.mas_equalTo(self.view).offset(0);
        
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
