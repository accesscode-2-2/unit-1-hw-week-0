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

@property (weak, nonatomic) IBOutlet UIImageView *charlesProfilePic;
@property (weak, nonatomic) IBOutlet UIView *followRounded;
@property (weak, nonatomic) IBOutlet UIView *messagesRounded;
@property (weak, nonatomic) IBOutlet UILabel *tweetsNotLoading;
@property (weak, nonatomic) IBOutlet UILabel *tapToRetry;
@property (weak, nonatomic) IBOutlet UIButton *settingButton;
@property (weak, nonatomic) IBOutlet UIButton *messagesButton;
@property (weak, nonatomic) IBOutlet UIButton *followButton;


@end

@implementation ViewController

- (IBAction)messagesTapped:(id)sender {
    NSLog(@"MESSAGES MESSAGES");
}

- (IBAction)SettingsTapped:(id)sender {
    NSLog(@"SETTINGS SETTINGS");
}

- (IBAction)followTapped:(id)sender {
    NSLog(@"FOLLOWING FOLLOWING");
}

- (IBAction)segmentedControlAction:(UISegmentedControl *) sender {
    
    if(sender.selectedSegmentIndex == 0) {
        self.tweetsNotLoading.text = @"Your tweets aren't loading right now";
        self.tapToRetry.text = @"Tap to see your tweets";
    }
    
    else
        
        if(sender.selectedSegmentIndex == 1) {
            self.tweetsNotLoading.text = @"Media isn't loading right now";
            self.tapToRetry.text = @"Tap to load media";
        }
    
        else
            
            if(sender.selectedSegmentIndex == 2) {
                self.tweetsNotLoading.text = @"Favorites aren't loading right now";
                self.tapToRetry.text = @"Tap to see your favorites";
                
            }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.charlesProfilePic.layer.cornerRadius = 8.0;
    self.charlesProfilePic.layer.masksToBounds = YES;
    self.charlesProfilePic.layer.borderWidth = 3.0f;
    self.charlesProfilePic.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.followRounded.layer.cornerRadius = 6.0;
    self.followRounded.layer.borderWidth = 2.0f;
    self.followRounded.layer.borderColor = [UIColor colorWithRed:85/255.0 green:172/255.0 blue:238/255.0 alpha: 1].CGColor;
    
    self.messagesRounded.layer.cornerRadius = 6.0;
    self.messagesRounded.layer.borderWidth =2.0f;
    self.messagesRounded.layer.borderColor = [UIColor colorWithRed:85/255.0 green:172/255.0 blue:238/255.0 alpha: 1].CGColor;
    
    
}

@end


