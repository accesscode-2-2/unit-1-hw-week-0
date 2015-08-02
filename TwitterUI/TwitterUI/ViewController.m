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
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *profilePic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.profilePic.layer.cornerRadius = 10;
    self.profilePic.layer.masksToBounds = YES;
    
    self.profilePic.layer.borderColor = [UIColor whiteColor].CGColor;
    self.profilePic.layer.borderWidth = 3.0f;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
