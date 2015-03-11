//
//  EnterConjunctionViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "EnterConjunctionViewController.h"
#import "ResultsViewController.h"

@interface EnterConjunctionViewController ()

@property (weak, nonatomic) IBOutlet UITextField *conjunctionTextField;


@end

@implementation EnterConjunctionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(UIButton *)sender
{

    //    NSLog(@"%@", identifier);
    if ([self.conjunctionTextField.text isEqualToString:@""]) {
        // it shows a warning

        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Please, enter a conjunction!"
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

    ResultsViewController *resultsVC = segue.destinationViewController;
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.adverb = self.adverb;
    resultsVC.conjunction = self.conjunctionTextField.text;
    resultsVC.title = @"Result";
}

@end
