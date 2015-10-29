//
//  TopMenuViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "TopMenuViewController.h"
#import "ChildCategoryViewController.h"

static NSString *const kEmbbedChildViewControllerSegue = @"embbedChildCategory";


@interface TopMenuViewController ()
@property (weak, nonatomic) IBOutlet UITableView *ParentCategeryTableView;

@end


@implementation TopMenuViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:kEmbbedChildViewControllerSegue]) {
        ChildCategoryViewController *childVC = (ChildCategoryViewController *)segue.destinationViewController;
    }
}


@end
