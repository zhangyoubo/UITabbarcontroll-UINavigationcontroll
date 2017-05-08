//
//  SixthViewController.m
//  MyTableBarVC
//
//  Created by Apple on 15/10/14.
//  Copyright (c) 2015年 zf. All rights reserved.
//

#import "SixthViewController.h"

@interface SixthViewController ()

@end

@implementation SixthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor magentaColor];
    self.title=@"第六个视图";
    UIBarButtonItem *Item1=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(clickright:)];
    self.navigationItem.leftBarButtonItem=Item1;
     UIBarButtonItem *Item2=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(clickleft:)];
    //self.navigationItem.rightBarButtonItem=Item2;
    
    UIBarButtonItem *Item3=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    Item3.width=30;
    UIBarButtonItem *Item4=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:nil];
  ;
    NSArray *Items=@[Item2,Item3,Item4];
    [self.navigationItem setRightBarButtonItems:Items animated:YES];
    
    self.navigationController.delegate=self;
}

-(void)clickright:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)clickleft:(UIBarButtonItem *)sender
{
    
}


-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //将要显示viewController时，要做的处理
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
