//
//  SXAppDelegate.h
//  game2048
//
//  Created by Sun Xi on 3/19/14.
//  Copyright (c) 2014 Sun Xi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JPush/JPUSHService.h>
#ifdef NSFoundationVersionNumber_iOS_9_x_Max
#import <UserNotifications/UserNotifications.h>
#endif


@interface SXAppDelegate : UIResponder <UIApplicationDelegate,JPUSHRegisterDelegate,UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
