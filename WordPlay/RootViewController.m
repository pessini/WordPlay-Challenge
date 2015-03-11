//
//  RootViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "RootViewController.h"
#import "EnterAdjectiveViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    EnterAdjectiveViewController *vc = segue.destinationViewController;
    vc.title = @"Enter name";

}

-(IBAction)unwindForResults:(UIStoryboardSegue *)sender
{
    
}
@end
