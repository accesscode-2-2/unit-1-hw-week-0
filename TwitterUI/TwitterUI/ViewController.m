//
//  ViewController.m
//  TwitterUI
//
//  Created by Michael Kavouras on 7/19/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <CoreImage/CoreImage.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *composeImage;
@property (weak, nonatomic) IBOutlet UIImageView *magnifyingGlass;
@property (weak, nonatomic) IBOutlet UIView *profilePicture;

@property (weak, nonatomic) IBOutlet UIView *followButton;
@property (weak, nonatomic) IBOutlet UILabel *followText;
@property (weak, nonatomic) IBOutlet UIButton *leftRoundbtn;
@property (weak, nonatomic) IBOutlet UIButton *rightRoundBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightroundybutton;

@property (weak, nonatomic) IBOutlet UIView *messagesButton;
- (UIImage *)invertImage:(UIImage *)originalImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.followText.textColor =[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1];
    
    self.messagesButton.layer.cornerRadius = 5.0;
    self.messagesButton.layer.borderWidth = 1.5;
    self.messagesButton.layer.borderColor= [[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]CGColor];
    
    self.profilePicture.layer.cornerRadius = 5;
    //self.profilePicture.layer.borderWidth = 3.0;
    //self.profilePicture.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    self.followButton.layer.cornerRadius = 5.0;
    self.followButton.layer.borderWidth = 1.5;
    self.followButton.layer.borderColor= [[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]CGColor];
    
    [self.composeImage setImage: [self invertImage:[self.composeImage image]]];
    
    [self.magnifyingGlass setImage: [self invertImage:[self.magnifyingGlass image]]];
    
    UIBezierPath *shapePath = [UIBezierPath bezierPathWithRoundedRect:self.leftRoundbtn.bounds
                                                    byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft
                                                          cornerRadii:CGSizeMake(4, 4)];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = self.leftRoundbtn.bounds;
    shapeLayer.path = shapePath.CGPath;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.strokeColor = [UIColor lightGrayColor].CGColor;
    shapeLayer.lineWidth = 0.5;
    [self.leftRoundbtn.layer addSublayer:shapeLayer];
    

    self.rightRoundBtn.layer.borderWidth = 1;
    self.rightRoundBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    UIBezierPath *shapePath2 = [UIBezierPath bezierPathWithRoundedRect:self.rightroundybutton.bounds
                                                    byRoundingCorners:UIRectCornerTopRight | UIRectCornerBottomRight
                                                          cornerRadii:CGSizeMake(4, 4)];
    
    CAShapeLayer *shapeLayer2 = [CAShapeLayer layer];
    shapeLayer2.frame = self.rightroundybutton.bounds;
    shapeLayer2.path = shapePath2.CGPath;
    shapeLayer2.fillColor = [UIColor clearColor].CGColor;
    shapeLayer2.strokeColor = [UIColor lightGrayColor].CGColor;
    shapeLayer2.lineWidth = 0.5;
    [self.rightroundybutton.layer addSublayer:shapeLayer2];


}

- (UIImage *)invertImage:(UIImage *)originalImage
{
    UIGraphicsBeginImageContext(originalImage.size);
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeCopy);
    CGRect imageRect = CGRectMake(0, 0, originalImage.size.width, originalImage.size.height);
    [originalImage drawInRect:imageRect];
    
    
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeDifference);
    // translate/flip the graphics context (for transforming from CG* coords to UI* coords
    CGContextTranslateCTM(UIGraphicsGetCurrentContext(), 0, originalImage.size.height);
    CGContextScaleCTM(UIGraphicsGetCurrentContext(), 1.0, -1.0);
    //mask the image
    CGContextClipToMask(UIGraphicsGetCurrentContext(), imageRect,  originalImage.CGImage);
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(),[UIColor whiteColor].CGColor);
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, originalImage.size.width, originalImage.size.height));
    UIImage *returnImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return returnImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
