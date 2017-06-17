//
//  PDsecondButton.m
//  SportStory
//
//  Created by pd on 2017/6/17.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import "PDsecondButton.h"

@interface PDsecondButton()

@property(nonatomic,strong)UILabel *textLabel;

@property(nonatomic,strong)UIImageView *imageView;


@end



@implementation PDsecondButton

- (instancetype)init{
    if(self = [super init]){
//        self.titleLabel.textAlignment = NSTextAlignmentCenter;
//        self.imageView.contentMode = UIViewContentModeCenter;
        self.textLabel = [[UILabel alloc] init];
        self.imageView = [[UIImageView alloc] init];
        
    }
    return self;
}

//- (CGRect)titleRectForContentRect:(CGRect)contentRect{
//    return CGRectMake(0, 30, 30, 20);
//}
//
//- (CGRect)imageRectForContentRect:(CGRect)contentRect{
//    return CGRectMake(0, 0, 30, 30);
//}

@end
