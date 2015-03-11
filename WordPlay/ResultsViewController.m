//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Leandro Pessini on 3/10/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.resultsTextView.text = [NSString stringWithFormat:@"One day, %@ was walking into Mobile Makers when he noticed how %@ his students were. 1 - %@ 2 - %@", self.name, self.adjective, self.adverb, self.conjunction];

    NSString *infoString = [NSString stringWithFormat:@"This is a name: %@ \n This is an adjective: %@ \n This is an adverb: %@ \n This is a conjunction: %@", self.name, self.adjective, self.adverb, self.conjunction];

    NSMutableAttributedString *attString=[[NSMutableAttributedString alloc] initWithString:infoString];

    NSRange rangeName = [infoString rangeOfString:self.name];
    NSRange rangeAdjective = [infoString rangeOfString:self.adjective];
    NSRange rangeAdverb = [infoString rangeOfString:self.adverb];
    NSRange rangeConjunction = [infoString rangeOfString:self.conjunction];

    UIFont *font_bold=[UIFont boldSystemFontOfSize:20.0];

    [attString addAttribute:NSFontAttributeName value:font_bold range:rangeName];
    [attString addAttribute:NSFontAttributeName value:font_bold range:rangeAdjective];
    [attString addAttribute:NSFontAttributeName value:font_bold range:rangeAdverb];
    [attString addAttribute:NSFontAttributeName value:font_bold range:rangeConjunction];

    [self.resultsTextView setAttributedText:attString];

//    NSLog(@"Name: %@", self.name);
//    NSLog(@"Adjective: %@", self.adjective);

}



@end
