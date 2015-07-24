//
//  ViewController.m
//  Homework
//
//  Created by Jackie Meggesto on 7/23/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ProfileViewContainer;
@property (weak, nonatomic) IBOutlet UIView *IconAndFollowContainer;
@property (weak, nonatomic) IBOutlet UIView *WeirdThingContainer;
@property (weak, nonatomic) IBOutlet UIView *ThreeBarThing;
@property (weak, nonatomic) IBOutlet UIView *Tweets;
@property (weak, nonatomic) IBOutlet UIView *Favorites;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Tweets.layer.cornerRadius = 5.0;
    self.Tweets.layer.borderWidth = 2.0;
    self.Tweets.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.Favorites.layer.cornerRadius = 5.0;
    self.Favorites.layer.borderWidth = 2.0;
    self.Favorites.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.ThreeBarThing.layer.cornerRadius = 5.0;
    self.ThreeBarThing.layer.borderWidth = 2.0;
    self.ThreeBarThing.layer.borderColor = [UIColor lightGrayColor].CGColor;

    self.WeirdThingContainer.layer.cornerRadius = 5.0;
    self.WeirdThingContainer.layer.borderWidth = 2.0;
    self.WeirdThingContainer.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.IconAndFollowContainer.layer.cornerRadius = 5.0;
    self.IconAndFollowContainer.layer.borderWidth = 2.0;
    self.IconAndFollowContainer.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.ProfileViewContainer.layer.cornerRadius = 5.0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
