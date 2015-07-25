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


@property (weak, nonatomic) IBOutlet UIView *pictureBackground;
@property (weak, nonatomic) IBOutlet UIView *pictureHolder;
@property (weak, nonatomic) IBOutlet UIImageView *cutPicture;
@property (weak, nonatomic) IBOutlet UIImageView *coverPhoto;
@property (weak, nonatomic) IBOutlet UIButton *clickForNSURL;
@property (weak, nonatomic) IBOutlet UITextField *clickForImage;



@property (weak, nonatomic) IBOutlet UIView *followView;
@property (weak, nonatomic) IBOutlet UIButton *followButton;
@property (weak, nonatomic) IBOutlet UILabel *FollowFollowing;
@property (weak, nonatomic) IBOutlet UILabel *NumberOfFollowers;

@property (weak, nonatomic) IBOutlet UIView *msgView;
@property (weak, nonatomic) IBOutlet UIView *wall;

@property (weak, nonatomic) IBOutlet UISegmentedControl *TweetsMediaFavorites;
@property (weak, nonatomic) IBOutlet UILabel *notLoading;
@property (weak, nonatomic) IBOutlet UILabel *PleaseTapToRetry;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *ActivityIndicator;
@property (weak, nonatomic) IBOutlet UIImageView *FollowingScreen;





@end

@implementation ViewController
@synthesize TweetsMediaFavorites;



- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    //hide tweets while you are not following yet
    self.FollowingScreen.hidden = TRUE;
    
    // Profile picture settings
    self.pictureBackground.layer.cornerRadius = 20.0;
    self.pictureHolder.layer.cornerRadius = 20.0;
    self.cutPicture.layer.cornerRadius = 20.0;
    
    // Follow button settings
    self.followView.layer.borderWidth = 1.5;
    self.followView.layer.borderColor =[UIColor colorWithRed:0.10 green:0.64 blue:0.91 alpha:1.0].CGColor;
    self.followView.layer.cornerRadius = 5.0;
    
    // Message settings
    self.msgView.layer.borderWidth = 1.5;
    self.msgView.layer.borderColor =[UIColor colorWithRed:0.10 green:0.64 blue:0.91 alpha:1.0].CGColor;
    self.msgView.layer.cornerRadius = 5.0;
    
    // Wall settings
    self.wall.layer.borderWidth = 1.5;
    self.wall.layer.borderColor =[UIColor colorWithRed:0.33 green:0.49 blue:0.52 alpha:1.0].CGColor;
    
}


- (IBAction)clickForNSURL:(id)sender {
    
    
    
    //get cover url
    NSURL *coverImageLink = [NSURL URLWithString:@"http://www.entertainmentcruises.com/website/images/media/spirit_newjersey_statue.jpg"];
    NSData *coverData = [NSData dataWithContentsOfURL:coverImageLink];
    self.coverPhoto.image = [UIImage imageWithData:coverData] ;
    
    //get profile picture url
    NSURL *profilePictureLink = [NSURL URLWithString:@"https://s-media-cache-ak0.pinimg.com/236x/73/20/9c/73209c21dec8e08ea18d41a5cc144c0d.jpg"];
    NSData *profileData = [NSData dataWithContentsOfURL:profilePictureLink];
    self.cutPicture.image = [UIImage imageWithData:profileData] ;
    
    self.clickForImage.hidden = YES;
    
    
    
    
    
}







- (IBAction)FollowButtonTapped:(id)sender {
    
    //check if you are following me
    if ([self.FollowFollowing.text isEqualToString :@"Follow"]) {
        
        self.FollowFollowing.text = @"Following";
        self.NumberOfFollowers.text = @"192";
        self.notLoading.hidden = TRUE;
        self.PleaseTapToRetry.hidden = TRUE;
        self.ActivityIndicator.hidden = TRUE;
        self.FollowingScreen.hidden = false;
        
        //change wall color to white
        self.wall.layer.backgroundColor =[UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.0].CGColor;
        
    }
    
    else if ([self.FollowFollowing.text isEqualToString :@"Following"]) {
        
        self.FollowFollowing.text = @"Follow";
        self.NumberOfFollowers.text = @"191";
        self.notLoading.hidden = false;
        self.PleaseTapToRetry.hidden = false;
        self.ActivityIndicator.hidden = false;
        self.FollowingScreen.hidden = TRUE;
        
        self.wall.layer.backgroundColor =[UIColor colorWithRed:0.84 green:0.93 blue:0.95 alpha:1.0].CGColor;
        
    }
    
    
}






    // TweetsMediaFavorites

- (IBAction)TweetsMediaFavoritesAction:(id)sender {
    
    if (TweetsMediaFavorites.selectedSegmentIndex == 0) {
        
        self.notLoading.text = @"Tweets aren't loading right now";
        
    } else if (TweetsMediaFavorites.selectedSegmentIndex == 1) {
        
        self.notLoading.text = @"Media isn't loading right now";
        
    }else if (TweetsMediaFavorites.selectedSegmentIndex == 2) {
        
        self.notLoading.text = @"Favorites aren't loading right now";
        
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
