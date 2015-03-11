//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;
@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIButton *)sender
{

    //    NSLog(@"%@", identifier);
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        // it shows a warning

        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please, enter an adjective!"
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{

    EnterAdverbViewController *adverbVC = segue.destinationViewController;
    adverbVC.name = self.name;
    adverbVC.adjective = self.adjectiveTextField.text;
    adverbVC.title = @"Enter an adverb";
}

@end
