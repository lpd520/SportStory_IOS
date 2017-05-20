//
//  AppDelegate.h
//  SportStory
//
//  Created by ai he on 2017/5/20.
//  Copyright © 2017年 ai he. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

// TODO  激光推送  , 七牛云存储
