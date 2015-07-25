//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profile;

@property (weak, nonatomic) IBOutlet UIImageView *viewsphoto;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.profile.clipsToBounds = YES;
    self.profile.layer.cornerRadius = 10.0;
    self.profile.layer.borderColor = [UIColor whiteColor].CGColor;
    self.profile.layer.borderWidth = 2.0;

}

- (IBAction)segmentedControlValueChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"tweets1"]];
    }
    else if(sender.selectedSegmentIndex == 1) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"media"]];
    }
    else if(sender.selectedSegmentIndex == 2) {
        [self.viewsphoto setImage:[UIImage imageNamed:@"favorites"]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
