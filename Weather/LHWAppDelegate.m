//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"
#import "DetailedViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    City *vancouver = [[City alloc]init];
    City *toronto = [[City alloc]init];
    City *chicago = [[City alloc]init];
    City *vegas = [[City alloc]init];
    City *scarborough = [[City alloc]init];
    
    CityViewController *vancouverViewController = [[CityViewController alloc]init];
    CityViewController *torontoViewController = [[CityViewController alloc]init];
    CityViewController *chicagoViewController = [[CityViewController alloc]init];
    CityViewController *vegasViewController = [[CityViewController alloc]init];
    CityViewController *scarboroughViewController = [[CityViewController alloc]init];
    
    
    
    //create a tab bar controller on the bottom of your page.
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    //set it as root view controller
    [self.window setRootViewController:tabBarController];

//add the controller
    UINavigationController *vancouverUiViewController = [[UINavigationController alloc]initWithRootViewController:vancouverViewController];
    UINavigationController *torontoUiViewController = [[UINavigationController alloc]initWithRootViewController:torontoViewController];
    UINavigationController *chicagoUiViewController = [[UINavigationController alloc]initWithRootViewController:chicagoViewController];
    UINavigationController *vegasUiViewController = [[UINavigationController alloc]initWithRootViewController:vegasViewController];
    UINavigationController *scarboroughUiViewController = [[UINavigationController alloc]initWithRootViewController:scarboroughViewController];
    
    
    NSArray* tabViewController = @[vancouverUiViewController, torontoUiViewController, chicagoUiViewController, vegasUiViewController, scarboroughUiViewController];
    
    
    tabBarController.viewControllers = tabViewController;
    
    
    
    
    [self.window makeKeyAndVisible];
    return YES;
}








@end
