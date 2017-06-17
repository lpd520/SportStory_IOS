//
//  AppDelegate.h
//  SportStory
//
//  Created by ai he on 2017/5/20.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AHRootViewController.h"
#import "AHTabBarViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

//@property (nonatomic, strong) SCNavigationController *navigationController;
@property (nonatomic, strong) AHRootViewController *rootViewController;
@property (nonatomic,strong) AHTabBarViewController *tabBarVC;

@property (nonatomic, assign) UINavigationController *currentNavigationController;


@end

// TODO  激光推送  , 七牛云存储
