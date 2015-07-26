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
    
    self.followButton.layer.cornerRadius = self.profile.frame.size.width/10;
    self.followButton.clipsToBounds = YES;
    self.followButton.layer.borderWidth = 1.5f;
    self.followButton.layer.borderColor=[[UIColor colorWithRed:27.0f/255.0f green:177.0f/255.0f blue:243.0f/255.0f alpha:1.0] CGColor];
    

        
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
