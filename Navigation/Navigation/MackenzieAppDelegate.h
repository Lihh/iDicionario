//
//  MackenzieAppDelegate.h
//  Navigation
//
//  Created by Vinicius Miana on 2/21/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InitialViewController.h"
#import "DictionaryTableViewController.h"

@interface MackenzieAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) UITableViewController *tableView;


@end
