//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *artur;
@property (weak, nonatomic) IBOutlet UILabel *tweets;
@property (weak, nonatomic) IBOutlet UIView *Bottom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.artur.layer.cornerRadius = 2.0;
    self.artur.layer.borderColor = [UIColor whiteColor].CGColor;
    self.artur.layer.borderWidth = 5.0;
    
    self.Bottom.layer.borderWidth = 3.0;
    self.Bottom.layer.borderColor = [UIColor grayColor].CGColor;
    

}
- (IBAction)follow:(UIButton *)sender {
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
