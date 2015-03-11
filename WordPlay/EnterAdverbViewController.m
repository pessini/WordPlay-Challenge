//
//  EnterAdverbViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "EnterAdverbViewController.h"
#import "EnterConjunctionViewController.h"

@interface EnterAdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;


@end

@implementation EnterAdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIButton *)sender
{

    //    NSLog(@"%@", identifier);
    if ([self.adverbTextField.text isEqualToString:@""]) {
        // it shows a warning

        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please, enter an adverb!"
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

    EnterConjunctionViewController *conjunctionVC = segue.destinationViewController;
    conjunctionVC.name = self.name;
    conjunctionVC.adjective = self.adjective;
    conjunctionVC.adverb = self.adverbTextField.text;
    conjunctionVC.title = @"Enter a conjunction";
}

@end
