//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *clearView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clearView.userInteractionEnabled = NO;
}

- (IBAction)segaction:(id)sender {
    
    NSLog(@"Hello");
   
    if (_segview.selectedSegmentIndex == 0){
        self.segview.backgroundColor = [UIColor greenColor];}
    
    else
        
        if (_segview.selectedSegmentIndex == 1){
            self.segview.backgroundColor = [UIColor redColor];}
    
        else
        
        if (_segview.selectedSegmentIndex == 2){
            self.segview.backgroundColor = [UIColor yellowColor];}
    }

@end
