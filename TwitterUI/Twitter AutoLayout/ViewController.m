//
//  ViewController.m
//  Twitter AutoLayout
//
//  Created by Eric Sze on 7/22/15.
//  Copyright (c) 2015 Eric Sze. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *followContainer;
@property (weak, nonatomic) IBOutlet UIView *textPlusContainer;
@property (weak, nonatomic) IBOutlet UIView *profilePic;
@property (weak, nonatomic) IBOutlet UIView *tweetField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _followContainer.layer.cornerRadius = 5;
    _followContainer.layer.masksToBounds = YES;
    [_followContainer.layer setBorderWidth:1.5f];
    self.followContainer.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
    
    _textPlusContainer.layer.cornerRadius = 5;
    _textPlusContainer.layer.masksToBounds = YES;
    [_textPlusContainer.layer setBorderWidth:1.5f];
    self.textPlusContainer.layer.borderColor = [UIColor colorWithRed: 0.34f green: 0.67f blue: 0.92f alpha: 1.0f].CGColor;
    
    _profilePic.layer.cornerRadius = 5;
    _profilePic.layer.masksToBounds = YES;
    [_profilePic.layer setBorderWidth:4.0f];
    [_profilePic.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    
    UIFont *font = [UIFont systemFontOfSize:16.3f];
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font
                                                           forKey:NSFontAttributeName];
    [_segmentedControl setTitleTextAttributes:attributes
                                    forState:UIControlStateNormal];
//    CGSize mainViewSize = self.tweetField.bounds.size;
//    CGFloat borderWidth = 5;
//    UIColor *borderColor = [UIColor lightGrayColor];
//    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(mainViewSize.width - borderWidth, 5, borderWidth, mainViewSize.height)];
//    //[bottomView setOpaque:YES];
//    [bottomView setBackgroundColor:borderColor];
//    [bottomView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin];
//    [self.tweetField addSubview:bottomView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
