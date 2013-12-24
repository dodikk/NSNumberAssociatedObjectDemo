//
//  AppDelegate.m
//  NSNumberAssociatedObjectDemo
//
//  Created by Oleksandr Dodatko on 12/24/13.
//  Copyright (c) 2013 dodikk. All rights reserved.
//

#import "AppDelegate.h"

static const char associationKey = 0;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSNumber* num = @( 1 );
    NSMutableArray* attachArray = [ NSMutableArray new ];
    
    objc_setAssociatedObject( num, &associationKey, attachArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC );
    
    
    // Override point for customization after application launch.
    return YES;
}

@end
