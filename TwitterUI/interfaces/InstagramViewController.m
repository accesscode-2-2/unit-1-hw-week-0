//
//  InstagramViewController.m
//  interfaces
//
//  Created by Sonya Khan on 7/19/15.
//  Copyright (c) 2015 Sonya Khan. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "InstagramViewController.h"

@interface InstagramViewController ()

@property (weak, nonatomic) IBOutlet UIView *followButtonView;
@property (weak, nonatomic) IBOutlet UITextField *loadingTextField;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;

@end

@implementation InstagramViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.followButtonView.layer.cornerRadius = 5.0;
    self.profilePicture.layer.cornerRadius = 5.0;
    self.profilePicture.clipsToBounds = YES;
}

- (IBAction)postsButtonTapped:(id)sender {
    //NSLog(@"post button tapped!");
    self.loadingTextField.text = @"Rendering User Posts";
    self.spinner.hidden = NO;
}
- (IBAction)followersButtonTapped:(id)sender {
    self.loadingTextField.text = @"Rendering Followers";
    self.spinner.hidden = NO;
}

- (IBAction)followingButtonTapped:(id)sender {
    self.loadingTextField.text = @"Rendering Following";
    self.spinner.hidden = NO;
}
- (IBAction)favoritesButtonTapped:(id)sender {
    self.loadingTextField.text = @"Rendering Favorites";
    self.spinner.hidden = NO;
}
- (IBAction)followUserButtonTapped:(id)sender {
    self.loadingTextField.text = @"Followed!";
    self.spinner.hidden = YES;
}

@end
