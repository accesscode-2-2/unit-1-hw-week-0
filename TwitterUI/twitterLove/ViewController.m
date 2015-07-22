
//
//  ViewController.m
//  twitterLove
//
//  Created by Justine Gartner on 7/19/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *profilePicFrame;
@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UIView *followFollowingButton;
@property (weak, nonatomic) IBOutlet UIView *messageMeButton;


@property (weak, nonatomic) IBOutlet UISegmentedControl *tweetsMediaFavorites;
@property (weak, nonatomic) IBOutlet UILabel *notLoadingText;
@property (weak, nonatomic) IBOutlet UIButton *followButtonText;


@property (weak, nonatomic) IBOutlet UILabel *followTextField;
@property (weak, nonatomic) IBOutlet UIImageView *followImage;
@property (weak, nonatomic) IBOutlet UIImageView *followingImage;
@property (weak, nonatomic) IBOutlet UIView *followBackgroundField;

@property (weak, nonatomic) IBOutlet UILabel *numberOfFollowersField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //rounded corners for the profile pic
    self.profilePicFrame.layer.cornerRadius = 5.0;
    self.profilePic.layer.cornerRadius = 5.0;
    
    //a border and rounded corners to the follow/following button
    self.followFollowingButton.layer.borderWidth = 1.5;
    self.followFollowingButton.layer.borderColor =[UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1].CGColor;
    self.followFollowingButton.layer.cornerRadius = 5.0;
    
    //a border and rounded corners to the message me button
    self.messageMeButton.layer.borderWidth = 1.5;
    self.messageMeButton.layer.borderColor =[UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1].CGColor;
    self.messageMeButton.layer.cornerRadius = 5.0;
    
    //color of follow button text
    self.followTextField.textColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//make the "Tweets aren't loading right now" text change when button is pushed
- (IBAction)tweetsMediaFavsAction:(UISegmentedControl *)sender {
    
    //NSLog(@"button tapped");
}

- (IBAction)followButtonTapped:(UIButton *)sender {
    
    NSString *currentFollowers = _numberOfFollowersField.text;
    NSLog(@"%@", currentFollowers);
    
    NSInteger followersInt = [currentFollowers intValue];
    NSLog(@"%ld", (long)followersInt);
    
    if ([self.followTextField.text isEqual:@"Following"]) {
        self.followTextField.textColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
        self.followBackgroundField.backgroundColor = [UIColor whiteColor];
        self.followTextField.text = @"Follow";
        self.followImage.hidden = NO;
        self.followingImage.hidden = YES;
        
        followersInt = followersInt - 1;
        
        NSString *newFollowers = [[NSNumber numberWithInteger:followersInt] stringValue];
        NSLog(@"%@", newFollowers);
        
        self.numberOfFollowersField.text = newFollowers;
        
    }else {
        
        self.followBackgroundField.backgroundColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
        self.followTextField.textColor = [UIColor whiteColor];
        self.followTextField.text = @"Following";
        self.followImage.hidden = YES;
        self.followingImage.hidden = NO;
        
        followersInt = followersInt + 1;
        
        NSString *newFollowers = [[NSNumber numberWithInteger:followersInt] stringValue];
        NSLog(@"%@", newFollowers);
        
        self.numberOfFollowersField.text = newFollowers;
        
        
        
        
    }
}



@end
