//
//  AppDelegate.m
//  MusicShare
//
//  Created by Ipalibo Whyte on 18/05/2014.
//  Copyright (c) 2014 SweetKeyNotes. All rights reserved.
//

#import "AppDelegate.h"
#import "RecievedViewController.h"
#import "FeedViewController.h"
#import "ShowFriendViewController.h"
#import "ListeningSessionViewController.h"
#import "ProfileViewController.h"
#import "HomePageView.h"



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Initialize window
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    // Set background colors for both NavBar and TabBar
    // [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.157 green:0.718 blue:0.553 alpha:1]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.906 green:0.298 blue:0.235 alpha:1]];
    
    
    // Initialize your five tab controllers.  with each tab has its own navigation controller
    HomePageView *homePageView = [[HomePageView alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:homePageView];
    [nav1.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];

    // Set nav Bar to be completely transparent
    [nav1.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    nav1.navigationBar.shadowImage = [UIImage new];
    nav1.navigationBar.translucent = YES;
    
    //Set Title
    nav1.tabBarItem.title = @"Home";
    
    ProfileViewController *profileViewController=[[ProfileViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:profileViewController];
    
    // Set Title
    nav2.tabBarItem.title = @"Profile";
    
    // Set nav Bar to be completely transparent
    [nav2.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    nav2.navigationBar.shadowImage = [UIImage new];
    nav2.navigationBar.translucent = YES;
    
    FeedViewController *feedViewController=[[FeedViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:feedViewController];
    
    // Set nav Bar to be completely transparent
    [nav3.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    nav3.navigationBar.shadowImage = [UIImage new];
    nav3.navigationBar.translucent = YES;
    
    // Set Title
    nav3.tabBarItem.title = @"Feeds";
    
    ListeningSessionViewController *listeningSessionViewController= [[ListeningSessionViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:listeningSessionViewController];
    
    // Set nav Bar to be completely transparent
    [nav4.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    nav4.navigationBar.shadowImage = [UIImage new];
    nav4.navigationBar.translucent = YES;
    
    // set Title
    nav4.tabBarItem.title = @"Mussion";
    
    RecievedViewController *recievedViewController =[[RecievedViewController alloc]init];
    UINavigationController *nav5 = [[UINavigationController alloc]initWithRootViewController:recievedViewController];
    
    // Set nav Bar to be completely transparent
    [nav5.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    nav5.navigationBar.shadowImage = [UIImage new];
    nav5.navigationBar.translucent = YES;
    
    // Set Title
    nav5.tabBarItem.title = @"Recieved";
    
    // Set selected tab bar background
    UIImage *whiteBackground = [UIImage imageNamed:@"whiteBackground"];
    [[UITabBar appearance] setSelectionIndicatorImage:whiteBackground];

    self.tabC.tabBar.translucent = YES;
    
    // initialize tabbarcontroller,set your viewcontrollers and change its color.
    self.tabC = [[UITabBarController alloc]init];
    NSArray* controllers = [NSArray arrayWithObjects: nav1,nav2,nav3,nav4,nav5, nil];
    [self.tabC setViewControllers: controllers animated:NO];
    [_window addSubview:self.tabC.view];
    
    // Show window
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
