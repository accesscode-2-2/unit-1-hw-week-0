//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTweets;
@property (weak, nonatomic) IBOutlet UILabel *labelMedia;
@property (weak, nonatomic) IBOutlet UILabel *labelFavorites;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    
//    self.followBar.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
    
    [super viewDidLoad];
}
- (IBAction)segmentedControlAction:(UISegmentedControl *)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0){
        [self.labelTweets setHidden:NO];
        [self.labelMedia setHidden:YES];
        [self.labelFavorites setHidden:YES];
    } else if (selectedSegment == 1){
        [self.labelTweets setHidden:YES];
        [self.labelMedia setHidden:NO];
        [self.labelFavorites setHidden:YES];
    } else if (selectedSegment == 2){
        [self.labelTweets setHidden:YES];
        [self.labelMedia setHidden:YES];
        [self.labelFavorites setHidden:NO];
    }
}
//- (IBAction)followButton:(UIButton *)sender {
    
//    self.followButton.class = [self.followButtonBar setHidden:NO];
//    }
//    self.followingBar.hidden = FALSE;
//    self.followBar.hidden = TRUE;



@end
