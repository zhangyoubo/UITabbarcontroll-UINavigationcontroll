//
//  MyTabbarController.m
//  MyTableBarVC
//
//  Created by Apple on 15/10/14.
//  Copyright (c) 2015年 zf. All rights reserved.
//

#import "MyTabbarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"
@interface MyTabbarController ()
{
    ThirdViewController *third;
}
@end

@implementation MyTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController *first=[[FirstViewController alloc] init];
    SecondViewController *second=[[SecondViewController alloc] init];
    third=[[ThirdViewController alloc] init];
    ForthViewController *forth=[[ForthViewController alloc] init];
    FifthViewController *fifth=[[FifthViewController alloc] init];
    
    NSArray *arrayVC=@[first,second,third,forth,fifth];

    UITabBarItem *Item1=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    //UITabBarItem *Item1=[[UITabBarItem alloc] initWithTitle:@"我是" image:nil selectedImage:nil];
    UITabBarItem *Item2=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:2];
    
    UITabBarItem *Item3=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:4];
    UITabBarItem *Item4=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2];
    
    UITabBarItem *Item5=[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:5];
    
    first.tabBarItem=Item1;
    second.tabBarItem=Item2;
    third.tabBarItem=Item3;
    forth.tabBarItem=Item4;
    fifth.tabBarItem=Item5;
   
    
    self.delegate=self;
    
    [self setViewControllers:arrayVC];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if ([viewController isMemberOfClass:[third class]]) {
        UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:[[SixthViewController alloc] init]];
        nav.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:nav animated:YES completion:nil];
        
    }
}


- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
