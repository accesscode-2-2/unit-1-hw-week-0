//
//  TwitterViewController.m
//  interfaces
//
//  Created by Sonya Khan on 7/21/15.
//  Copyright (c) 2015 Sonya Khan. All rights reserved.
//

#import "TwitterViewController.h"

@interface TwitterViewController ()
@property (weak, nonatomic) IBOutlet UIView *profileBorder;
@property (weak, nonatomic) IBOutlet UIImageView *profilePic;
@property (weak, nonatomic) IBOutlet UIView *buttonBar;
@property (weak, nonatomic) IBOutlet UIView *follow;
@property (weak, nonatomic) IBOutlet UIView *message;
@property (weak, nonatomic) IBOutlet UIView *chat;

@end

@implementation TwitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.profileBorder.layer.cornerRadius = 5.0;
    self.profileBorder.clipsToBounds = YES;
    self.profilePic.layer.cornerRadius = 5.0;
    self.profilePic.clipsToBounds = YES;
    self.buttonBar.layer.cornerRadius = 5.0;
    self.buttonBar.clipsToBounds = YES;
    self.follow.layer.cornerRadius = 5.0;
    self.follow.clipsToBounds = YES;
    self.message.layer.cornerRadius = 5.0;
    self.message.clipsToBounds = YES;
    self.buttonBar.layer.borderColor = [[UIColor darkGrayColor]CGColor];
    self.buttonBar.layer.borderWidth = 1.0;
    //self.follow.layer.borderColor = [[UIColor colorWithRed: 0.5f green: 0.5f blue:0.5f alpha: 1.0f].CGColor];
    self.follow.layer.borderWidth = 1.5;
    self.chat.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
    self.chat.layer.borderWidth = 1.5;
    self.follow.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
