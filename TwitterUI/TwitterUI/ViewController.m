//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *messagesContainerRoundBorders;
@property (weak, nonatomic) IBOutlet UIView *followContainerRoundBorders;
@property (weak, nonatomic) IBOutlet UIView *avatarContainerRoundBorders;
@property (weak, nonatomic) IBOutlet UIImageView *userImageFollowContainer;
@property (weak, nonatomic) IBOutlet UIImageView *messagesImage2ndBar;
@property (weak, nonatomic) IBOutlet UIImageView *homeImageBottomBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.messagesContainerRoundBorders.layer.cornerRadius = 8.0;
    self.messagesContainerRoundBorders.clipsToBounds = YES;
    
    self.messagesContainerRoundBorders.layer.borderColor = [UIColor cyanColor].CGColor;
    
    self.messagesContainerRoundBorders.layer.borderWidth = 1.0;
    
    
    self.followContainerRoundBorders.layer.cornerRadius = 8.0;
    self.followContainerRoundBorders.clipsToBounds = YES;
    
    self.followContainerRoundBorders.layer.borderColor = [UIColor cyanColor].CGColor;
    
    self.followContainerRoundBorders.layer.borderWidth = 1.0;
    
    self.avatarContainerRoundBorders.layer.cornerRadius = 8.0;
    self.avatarContainerRoundBorders.clipsToBounds = YES;
    
    self.avatarContainerRoundBorders.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.avatarContainerRoundBorders.layer.borderWidth = 3.0;
    
    self.userImageFollowContainer.image = [self.userImageFollowContainer.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self.userImageFollowContainer setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    
    self.messagesImage2ndBar.image = [self.messagesImage2ndBar.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self.messagesImage2ndBar setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    
    self.homeImageBottomBar.image = [self.homeImageBottomBar.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    [self.homeImageBottomBar setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
