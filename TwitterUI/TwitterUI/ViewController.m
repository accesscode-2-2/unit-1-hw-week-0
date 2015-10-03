//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Edited by Kaisha Jones on 7/23/15/.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h> // QuartzCore - added to round corners


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topPhotoView;
@property (weak, nonatomic) IBOutlet UIView *profilePicFrame;

@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UIView *followButton;

@property (weak, nonatomic) IBOutlet UIView *messageButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tweetsMediaFavorites;

@property (weak, nonatomic) IBOutlet UILabel *notLoadingTextLabel;
@property (weak, nonatomic) IBOutlet UIButton *followButtonText;

@property (weak, nonatomic) IBOutlet UILabel *followTextFieldLabel;
@property (weak, nonatomic) IBOutlet UIImageView *followImageView;

@property (weak, nonatomic) IBOutlet UIImageView *followingImageView;
@property (weak, nonatomic) IBOutlet UIView *followBackgroundField;

@property (weak, nonatomic) IBOutlet UILabel *numberOfFollowersLabel;

@end

@implementation ViewController

#pragma mark - (main) view controller



- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //rounded corners for the profile pic
    [self setupProfilePicture];
    
    //a border and rounded corners to the follow/following button
    self.followButton.layer.borderWidth = 1.5;
    self.followButton.layer.borderColor =[UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1].CGColor;
    self.followButton.layer.cornerRadius = 5.0;
    
    //a border and rounded corners to the message me button
    self.messageButton.layer.borderWidth = 1.5;
    self.messageButton.layer.borderColor =[UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1].CGColor;
    self.messageButton.layer.cornerRadius = 5.0;
    
    //color of follow button text
    self.followTextFieldLabel.textColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
    
//    //original top image
//    self.topPhotoView.image = [self imageFromURLString:@"http://i.imgur.com/spJpxB0.jpg"];
//    //original profile pic
//    self.profilePicture.image = [self imageFromURLString:@"https://pbs.twimg.com/profile_images/2720135430/944811d3ff46f0da908c92758ccb7d8f.jpeg"];
//
}

- (void)setupProfilePicture {
    self.profilePicFrame.layer.cornerRadius = 5.0;
    self.profilePicture.layer.cornerRadius = 5.0;
}

-(UIImage *)imageFromURLString:(NSString *)string{
    NSURL *url = [NSURL URLWithString:string];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    return image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//make the "Tweets aren't loading right now" text change when button is pushed
- (IBAction)tweetsMediaFavsAction:(UISegmentedControl *)sender {
    
    if (self.tweetsMediaFavorites.selectedSegmentIndex == 0) {
        
        NSLog(@"tweets button tapped");
        self.notLoadingTextLabel.text = @"Tweets aren't loading right now";
        
    } else if (self.tweetsMediaFavorites.selectedSegmentIndex == 1) {
        
        NSLog(@" media button tapped");
        self.notLoadingTextLabel.text = @"Media isn't loading right now";
        
    }else if (self.tweetsMediaFavorites.selectedSegmentIndex == 2) {
        
        NSLog(@" favorites button tapped");
        self.notLoadingTextLabel.text = @"Favorites aren't loading right now";
        
    }
    
}

- (IBAction)followButtonTapped:(UIButton *)sender {
    
    NSInteger followersInt = [self.numberOfFollowersLabel.text intValue];
    NSLog(@"%ld", (long)followersInt);
    
    if ([self.followTextFieldLabel.text isEqual:@"Following"]) {
        self.followTextFieldLabel.textColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
        self.followBackgroundField.backgroundColor = [UIColor whiteColor];
        self.followTextFieldLabel.text = @"Follow";
        self.followImageView.hidden = NO;
        self.followingImageView.hidden = YES;
        
        followersInt = followersInt - 1;
        
        NSString *newFollowers = [[NSNumber numberWithInteger:followersInt] stringValue];
        NSLog(@"%@", newFollowers);
        
        self.numberOfFollowersLabel.text = newFollowers;
        
    }else {
        
        self.followBackgroundField.backgroundColor = [UIColor colorWithRed:0.424 green:0.710 blue:1 alpha:1];
        self.followTextFieldLabel.textColor = [UIColor whiteColor];
        self.followTextFieldLabel.text = @"Following";
        self.followImageView.hidden = YES;
        self.followingImageView.hidden = NO;
        
        followersInt = followersInt + 1;
        
        NSString *newFollowers = [[NSNumber numberWithInteger:followersInt] stringValue];
        NSLog(@"%@", newFollowers);
        
        self.numberOfFollowersLabel.text = newFollowers;
        
        
        
        
    }
}






@end
