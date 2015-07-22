//
//  ViewController.m
//  twitter
//
//  Created by Fatima Zenine Villanueva on 7/19/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profilePhoto;

@end

@implementation ViewController

- (void)viewDidLoad {
    

    
    self.profilePhoto.layer.cornerRadius = 10.0f;
    self.profilePhoto.clipsToBounds = YES;
    
    self.profilePhoto.layer.borderColor = [UIColor whiteColor].CGColor;
    self.profilePhoto.layer.borderWidth = 5.0f;
    
//    self.profilePhoto.layer.shadowOffset = CGSizeMake(5, -10);
//    
    
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
