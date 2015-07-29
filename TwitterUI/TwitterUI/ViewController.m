//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profile;

@property (weak, nonatomic) IBOutlet UIImageView *viewsphoto;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (nonatomic) BOOL following;

@property (weak, nonatomic) IBOutlet UILabel *followNo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.following = NO;
    
    // Do any additional setup after loading the view, typically from a nib.
    self.profile.clipsToBounds = YES;
    self.profile.layer.cornerRadius = 10.0;
    self.profile.layer.borderColor = [UIColor whiteColor].CGColor;
    self.profile.layer.borderWidth = 2.0;

}

- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"tweets1"]];
    }
    else if(sender.selectedSegmentIndex == 1) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"media"]];
    }
    else if(sender.selectedSegmentIndex == 2) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"favorites"]];
    }
    
}

- (IBAction)buttonImageChanged:(UIButton *)button {
    
    if (self.following) {
        // show the unfollow button
        [button setBackgroundImage:[UIImage imageNamed: @"follow1"] forState:UIControlStateNormal];
        self.followNo.text = @"100";
    } else {
        // show the follow button
        [button setBackgroundImage:[UIImage imageNamed: @"following"]forState:UIControlStateNormal];
        self.followNo.text = @"101";
    }
    
    self.following = !self.following;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
