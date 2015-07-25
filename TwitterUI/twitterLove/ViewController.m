
//
//  ViewController.m
//  twitterLove
//
//  Created by Justine Gartner on 7/19/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topPhotoView;

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


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //rounded corners for the profile pic
    [self setupProfilePicture];
    
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
    
    //original top image
    self.topPhotoView.image = [self imageFromURLString:@"http://i.imgur.com/h420SYI.jpg"];
    //original profile pic
    self.profilePic.image = [self imageFromURLString:@"https://pbs.twimg.com/profile_images/607610361433300992/OKxM0eFW_400x400.jpg"];
    
//    //change top image for testing
//    self.topPhotoView.image = [self imageFromURLString:@"http://uppermerionfarmersmarket.org/umfm/wp-content/uploads/2014/06/strawberry1.jpg"];
//    //change profile pic for testing
//    self.profilePic.image = [self imageFromURLString:@"http://ihatemygout.com/wp-content/uploads/2009/05/bananas-curved-yellow-fruit-300x212.jpg"];
}

- (void)setupProfilePicture {
    self.profilePicFrame.layer.cornerRadius = 5.0;
    self.profilePic.layer.cornerRadius = 5.0;
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
        self.notLoadingText.text = @"Tweets aren't loading right now";
        
    } else if (self.tweetsMediaFavorites.selectedSegmentIndex == 1) {
        
        NSLog(@" media button tapped");
        self.notLoadingText.text = @"Media isn't loading right now";
        
    }else if (self.tweetsMediaFavorites.selectedSegmentIndex == 2) {
        
        NSLog(@" favorites button tapped");
        self.notLoadingText.text = @"Favorites aren't loading right now";
        
    }
    
}

- (IBAction)followButtonTapped:(UIButton *)sender {
    
    NSInteger followersInt = [self.numberOfFollowersField.text intValue];
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


//The following buttons will change the images but are not working to change the images back...
- (IBAction)topBackgroundImageButtonTapped:(UIButton *)sender {
    
    NSLog(@"top background image button tapped");
    
    UIImage *strawberries = [self imageFromURLString:@"http://uppermerionfarmersmarket.org/umfm/wp-content/uploads/2014/06/strawberry1.jpg"];
    UIImage *costaRica = [self imageFromURLString:@"http://i.imgur.com/h420SYI.jpg"];
    
    if (self.topPhotoView.image == strawberries) {
        
        self.topPhotoView.image = costaRica;
        
    }else {
        NSLog(@"reached else");
        self.topPhotoView.image = strawberries;
    }
    
}

- (IBAction)profilePicButtonTapped:(UIButton *)sender {
    
    NSLog(@"profile pic button tapped");
    
    UIImage *curvedYellowFruit = [self imageFromURLString:@"http://ihatemygout.com/wp-content/uploads/2009/05/bananas-curved-yellow-fruit-300x212.jpg"];
    UIImage *underThePalms = [self imageFromURLString:@"https://pbs.twimg.com/profile_images/607610361433300992/OKxM0eFW_400x400.jpg"];
    
    if (self.profilePic.image == curvedYellowFruit){
        
        self.profilePic.image = underThePalms;
    
    }else {
        NSLog(@"reached else");
        self.profilePic.image = curvedYellowFruit;
        
    }
}


@end
