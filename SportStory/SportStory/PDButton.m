//
//  PDButton.m
//  SportStory
//
//  Created by pd on 2017/6/17.
//  Copyright © 2017年 ai he. All rights reserved.
//


#import "PDButton.h"
#import <Masonry.h>

@interface PDButton()

@property(nonatomic,strong)UILabel *label1;

@property(nonatomic,strong)UILabel *label2;



@end


@implementation PDButton

-(instancetype)init{
    if(self = [super init]){
        
        
        self.label1 = [[UILabel alloc] init];
        self.label2 = [[UILabel alloc] init];
        
        self.label1.font = [UIFont systemFontOfSize:14.0];
        self.label2.font = [UIFont systemFontOfSize:10.0];

        self.label1.textAlignment = NSTextAlignmentCenter;
        self.label2.textAlignment = NSTextAlignmentCenter;

        
        [self addSubview:self.label1];
        [self addSubview:self.label2];
        
        [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top);
            make.left.mas_equalTo(self.mas_left);
            make.right.mas_equalTo(self.mas_right);
            
            make.height.equalTo(self.label2.mas_height);
            
        }];
        
        [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.equalTo(self.label1.mas_height);
            
            make.top.equalTo(self.label1.mas_bottom);
            make.left.mas_equalTo(self.mas_left);
            make.bottom.mas_equalTo(self.mas_bottom);
            make.right.mas_equalTo(self.mas_right);
            
        }];

        
    }
    
    return self;
}

-(void)setText:(NSString *)a text:(NSString *)b{
    self.label1.text = a;
    self.label2.text = b;
}



@end
