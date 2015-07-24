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
@property (weak, nonatomic) IBOutlet UIView *followBar;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *labelTweets;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    self.followBar.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
    
    [super viewDidLoad];
}
- (IBAction)segmentControlValueDidChange:(UISegmentedControl *)sender {
    

}

@end
