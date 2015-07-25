//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <QuartzCore/CALayer.h>
#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
  /*
    UIImageView *profile = [[UIImageView alloc]init];
    profile.layer.masksToBounds = YES;
    profile.layer.borderColor = [UIColor redColor].CGColor;
    profile.layer.borderWidth = 10;
   
   */
    
    self.profile.layer.cornerRadius = self.profile.frame.size.width/5;
    self.profile.clipsToBounds = YES;
    self.profile.layer.borderWidth = 5.0f;
    self.profile.layer.borderColor = [UIColor whiteColor].CGColor;
    
    
    //Follow Button
    
    self.followButton.layer.cornerRadius = self.followButton.frame.size.width/10;
    self.followButton.clipsToBounds = YES;
    self.followButton.layer.borderWidth = 1.0f;
    self.followButton.layer.borderColor = [UIColor blueColor].CGColor;
    [_followButton setTitleEdgeInsets:UIEdgeInsetsMake(0.0, 5.0, 0.0, 0.0)];
   
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
