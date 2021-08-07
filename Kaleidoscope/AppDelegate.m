//
//  AppDelegate.m
//  Kaleidoscope
//
//  Created by 晨风 on 2021/8/7.
//

#import "AppDelegate.h"
#import "KEBaseViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    KEBaseViewController *baseVC = [[KEBaseViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:baseVC];
    [nav setNavigationBarHidden:YES];
    [self.window setRootViewController:nav];
    [self.window makeKeyAndVisible];

    return YES;
}


@end
