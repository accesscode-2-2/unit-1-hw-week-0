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
@property (weak, nonatomic) IBOutlet UIView *roundedCorners;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.roundedCorners.layer.cornerRadius = 5;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
