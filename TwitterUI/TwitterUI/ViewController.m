//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Edited by Shena Yoshida 🙋🏻on 7/23/15/.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h> // added this to round corners!!


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *avatarPic;
@property (weak, nonatomic) IBOutlet UIView *avatarView;
@property (weak, nonatomic) IBOutlet UIView *followView;
@property (weak, nonatomic) IBOutlet UIView *bubbleView;
@property (weak, nonatomic) IBOutlet UIView *innerFollowView;
@property (weak, nonatomic) IBOutlet UIView *innerBubbleView;
@property (weak, nonatomic) IBOutlet UIImageView *imageBubble;
@property (weak, nonatomic) IBOutlet UIImageView *imageFollow;



@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Here we round corners:
    
    self.avatarPic.layer.cornerRadius = 20.0;
    self.avatarView.layer.cornerRadius = 20.0;
    self.avatarPic.clipsToBounds = YES; // this sticks the view to the image
    
    // Alternately, I could have added a border with code, like this:
    
    //    self.avatarPic.layer.borderColor = [UIColor whiteColor].CGColor;
    //    self.avatarPic.layer.borderWidth = 5.0;
    
    self.followView.layer.cornerRadius = 5.0;
    self.innerFollowView.layer.cornerRadius = 5.0;
    
    self.bubbleView.layer.cornerRadius = 5.0;
    self.innerBubbleView.layer.cornerRadius = 5.0;
    
    
    // I change the image color from black to blue with this code:
    
    self.imageFollow.image = [self.imageFollow.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self.imageFollow setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    
    self.imageBubble.image = [self.imageBubble.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self.imageBubble setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
