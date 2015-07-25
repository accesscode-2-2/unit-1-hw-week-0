//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *proContainer;
@property (weak, nonatomic) IBOutlet UIImageView *pic;
@property (weak, nonatomic) IBOutlet UIButton *peeps;
@property (weak, nonatomic) IBOutlet UIButton *editProfile;
@property (weak, nonatomic) IBOutlet UIButton *tweets;
@property (weak, nonatomic) IBOutlet UIButton *media;
@property (weak, nonatomic) IBOutlet UIButton *favs;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *comp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Profile container
    self.proContainer.layer.cornerRadius = self.proContainer.frame.size.width / 7.5;
    self.proContainer.clipsToBounds = YES;
    
    // Profile picture
    self.pic.layer.cornerRadius = self.pic.frame.size.width / 7.5;
    self.pic.clipsToBounds = YES;
    
    // Edit profile button
    _editProfile.layer.borderWidth =.5f;
    _editProfile.layer.cornerRadius = 5;
    
    // Peeps button
    _peeps.layer.borderWidth =.5f;
    _peeps.layer.cornerRadius = 5;
    
    _favs.layer.borderWidth =.5f;
    _favs.layer.cornerRadius = 5;
    
    _media.layer.borderWidth =.5f;
    
    _tweets.layer.borderWidth =.5f;
    _tweets.layer.cornerRadius = 5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
