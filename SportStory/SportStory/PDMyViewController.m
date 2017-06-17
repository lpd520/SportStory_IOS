//
//  PDMyViewController.m
//  SportStory
//
//  Created by pd on 2017/6/17.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import "PDMyViewController.h"
#import "PDButton.h"
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
    
    PDButton *Fans = [[PDButton alloc] init];
    [Fans setText:@"432" text:@"粉丝"];
    
    PDButton *Focus = [[PDButton alloc] init];
    [Focus setText:@"41" text:@"关注"];

    PDButton *Video = [[PDButton alloc] init];
    [Video setText:@"13" text:@"视频"];
    
    [self.view addSubview:Fans];
    [self.view addSubview:Focus];
    [self.view addSubview:Video];
    
    UILabel *line = [[UILabel alloc] init];
    line.backgroundColor = [UIColor grayColor];
    [self.view addSubview:line];
    
    
    
    //-----------------------------------------------------------
    
    [imageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(64, 64));
        
        make.top.mas_equalTo(self.view.mas_top).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(20);

    }];
    
    [idBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(20);
        make.left.mas_equalTo(imageBtn.mas_right).offset(10);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        
        make.height.mas_equalTo(imageBtn.mas_height);
        
    }];
    
    
    [Fans mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(self.view.frame.size.width/3);
        make.height.mas_equalTo(40);
        make.width.equalTo(Focus.mas_width);
        
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.left.equalTo(self.view.mas_left);
//        make.right.equalTo(Focus.mas_left);
//        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-300);

    }];
    
    [Focus mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(self.view.frame.size.width/3);
        make.top.equalTo(Fans.mas_top);
        make.bottom.equalTo(Fans.mas_bottom);
        make.width.equalTo(Video.mas_width);
        
//        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.left.equalTo(Fans.mas_right);
        make.right.equalTo(Video.mas_left);
//        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-300);

    }];
    
    [Video mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(self.view.frame.size.width/3);
        make.top.equalTo(Fans.mas_top);
        make.bottom.equalTo(Fans.mas_bottom);
        make.width.equalTo(Focus.mas_width);
        
        make.left.equalTo(Focus.mas_right);
        make.right.equalTo(self.view.mas_right);
//        make.top.mas_equalTo(self.view.mas_top).offset(100);
//        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-300);

    }];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(10);
        make.top.mas_equalTo(Video.mas_bottom).offset(7);
        make.left.mas_equalTo(self.view.mas_left);
        make.right.mas_equalTo(self.view.mas_right);
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
