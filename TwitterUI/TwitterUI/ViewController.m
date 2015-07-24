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
//@property (weak, nonatomic) IBOutlet UIImageView *photoBox;

@property (weak, nonatomic) IBOutlet UIView *photoBox;
@property (weak, nonatomic) IBOutlet UIImageView *photoImage;
@property (weak, nonatomic) IBOutlet UIView *accountsIcon;
@property (weak, nonatomic) IBOutlet UIView *editProfile;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//Chris Picture
    self.photoBox.layer.cornerRadius = 10.0;
    self.photoImage.layer.cornerRadius = 10.0;
    self.photoImage.layer.masksToBounds = YES;
    
    //iconbox
    self.accountsIcon.layer.cornerRadius = 5.0;
    self.accountsIcon.layer.masksToBounds = YES;
    self.accountsIcon.layer.borderWidth = 1.0;
    self.accountsIcon.layer.borderColor =  [[UIColor grayColor] CGColor];
    
    //Edit Profile Box
    self.editProfile.layer.cornerRadius = 5.0;
    self.editProfile.layer.masksToBounds = YES;
    self.editProfile.layer.borderWidth = 1.0;
    self.editProfile.layer.borderColor =  [[UIColor grayColor] CGColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
