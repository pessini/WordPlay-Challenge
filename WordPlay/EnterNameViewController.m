//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIButton *)sender
{

//    NSLog(@"%@", identifier);
    if ([self.nameTextField.text isEqualToString:@""]) {
        // it shows a warning

        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please, enter a name!"
                              message:nil
                              delegate:self
                              cancelButtonTitle:nil
                              otherButtonTitles:@"OK", nil];
        [alert show];
        return NO;

    } else {
        return YES;
    }


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    EnterAdjectiveViewController *nameVC = segue.destinationViewController;
    nameVC.name = self.nameTextField.text;
    nameVC.title = @"Enter an adjetive";
}

@end
