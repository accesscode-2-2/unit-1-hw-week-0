//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
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
@property (weak, nonatomic) IBOutlet UIImageView *bubbleImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.avatarPic.layer.cornerRadius = 20.0;
    self.avatarView.layer.cornerRadius = 20.0;
    self.avatarPic.clipsToBounds = YES; // this sticks the view to the image
    
    self.followView.layer.cornerRadius = 5.0;
    self.innerFollowView.layer.cornerRadius = 5.0;
    
    self.bubbleView.layer.cornerRadius = 5.0;
    
    self.innerBubbleView.layer.cornerRadius = 5.0;
    self.bubbleImage.layer.cornerRadius = 5.0;
    self.bubbleImage.clipsToBounds = YES;
    
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
