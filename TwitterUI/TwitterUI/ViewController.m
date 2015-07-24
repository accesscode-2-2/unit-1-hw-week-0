//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "UIImage+remote.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profile;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;


@end

@implementation ViewController
- (IBAction)settingsButton:(UIButton *)sender {
    NSLog(@"Settings Button tapped");
}

- (IBAction)messageButton:(UIButton *)sender {
    NSLog(@"Message Button tapped");
}

- (IBAction)followButton:(UIButton *)sender {
    NSLog(@"Folow Button tapped");
}

- (IBAction)userButton:(UIButton *)sender {
    NSLog(@"User Button tapped");
}

- (IBAction)notificationButton:(UIButton *)sender {
    NSLog(@"Notification Button tapped");
}

- (IBAction)homeButton:(UIButton *)sender {
    NSLog(@"Home Button tapped");
}

- (IBAction)messageButton2:(UIButton *)sender {
        NSLog(@"Message Button 2 tapped");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.profile.layer.masksToBounds = YES;
    
    self.profile.layer.cornerRadius = 10.0;
    
    [self.profile.layer setBorderWidth:2.0f];
    [self.profile.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    
//    if(self.segmentedControl.selectedSegmentIndex == 0){
//        self.segmentedControl.backgroundColor = [UIColor colorWithRed:0 green:172 blue:237.292 alpha:1];
//    }

    
    self.profile.image = [UIImage imageFromURLString:@"https://pbs.twimg.com/profile_images/607607468856770561/lkMPz-Lu_400x400.jpg"];
    
}



@end
