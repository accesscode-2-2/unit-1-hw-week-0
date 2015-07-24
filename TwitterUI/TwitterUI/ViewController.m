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

@property BOOL following;

@property (weak, nonatomic) IBOutlet UIImageView *composeImage;
@property (weak, nonatomic) IBOutlet UIImageView *magnifyingGlass;
@property (weak, nonatomic) IBOutlet UIView *profilePicture;

@property (weak, nonatomic) IBOutlet UIView *followButton;
@property (weak, nonatomic) IBOutlet UILabel *followText;
@property (weak, nonatomic) IBOutlet UIImageView *homeImage;
@property (weak, nonatomic) IBOutlet UILabel *decriptionTest;
@property (weak, nonatomic) IBOutlet UIImageView *followImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

- (IBAction)segmentedControlAction:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *textToChange;

@property (weak, nonatomic) IBOutlet UIView *messagesButton;
- (UIImage *)invertImage:(UIImage *)originalImage;
@end

@implementation ViewController
//@synthesize segmentedControl;
- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    self.following = NO;
    self.followImage.image = [self.followImage.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self.followImage setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    self.homeImage.image = [self.homeImage.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self.homeImage setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.decriptionTest.adjustsFontSizeToFitWidth = YES;
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
    

    
   // [self setImage:self.homeImage.image];
    
    
}

//- (IBAction)TweetsTapped:(UISegmentedControl *)sender {
//    if(segmentedControl.selectedSegmentIndex == 0)            // Checking which segment is selected using the segment index value
//        
//    {
//        
//        self.textToChange.text = @"Tweets aren't loading right now";
//        
//    }
//    
//    else
//        
//        if(segmentedControl.selectedSegmentIndex == 1)
//            
//        {
//            
//            self.textToChange.text = @"Media isn't loading right now";
//            
//        }
//    
//        else
//            
//            if(segmentedControl.selectedSegmentIndex == 2)
//                
//            {
//                
//                self.textToChange.text = @"Favorites aren't loading right now";
//                
//            }
//    
//}


//- (IBAction)tweetsTapped:(UIButton *)sender {
//    self.textToChange.text = @"Tweets aren't loading right now";
//    [self.leftRoundbtn setBackgroundColor: [UIColor lightGrayColor]];
//    [self.leftRoundbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.rightRoundBtn setBackgroundColor: [UIColor whiteColor]];
//    [self.rightRoundBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    [self.rightroundybutton setBackgroundColor: [UIColor whiteColor]];
//    [self.rightroundybutton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//}
//
//- (IBAction)mediaTapped:(UIButton *)sender {
//    self.textToChange.text = @"Media isn't loading right now";
//    [self.leftRoundbtn setBackgroundColor: [UIColor whiteColor]];
//    [self.leftRoundbtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    [self.rightRoundBtn setBackgroundColor: [UIColor lightGrayColor]];
//    [self.rightRoundBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [self.rightroundybutton setBackgroundColor: [UIColor whiteColor]];
//    [self.rightroundybutton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//}
//- (IBAction)favoritesTapped:(UIButton *)sender {
//    
//    self.textToChange.text = @"Favorites aren't loading right now";
//    [self.leftRoundbtn setBackgroundColor: [UIColor whiteColor]];
//    [self.leftRoundbtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    [self.rightRoundBtn setBackgroundColor: [UIColor whiteColor]];
//    [self.rightRoundBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    [self.rightroundybutton setBackgroundColor: [UIColor lightGrayColor]];
//    [self.rightroundybutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//}
- (IBAction)followTapped:(UIButton *)sender {
    
    //change color of background of view
//    NSLog(@"button tapped");
    if (self.following) {
        self.followButton.backgroundColor = [UIColor whiteColor];
        self.followText.textColor = [UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1];
        
        self.followImage.image = [self.followImage.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        [self.followImage setTintColor:[UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1]];
        self.followText.text=@"Follow";
        
        self.following = NO;
        
    }
    else {
    self.followButton.backgroundColor = [UIColor colorWithRed:85.0/255.0 green:172.0/255.0 blue:238.0/255.0 alpha:1];
    self.followText.textColor = [UIColor whiteColor];
        self.followText.text=@"Following";
        self.followImage.image = [self.followImage.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        [self.followImage setTintColor:[UIColor whiteColor]];
        
        
        
        self.following = YES;
    }
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

- (IBAction)segmentedControlAction:(id)sender {
    if(self.segmentedControl.selectedSegmentIndex == 0)            // Checking which segment is selected using the segment index value
        
    {
        
        self.textToChange.text = @"Tweets aren't loading right now";
        
    }
    
    else
        
        if(self.segmentedControl.selectedSegmentIndex == 1)
            
        {
            
            self.textToChange.text = @"Media isn't loading right now";
            
        }
    
        else
            
            if(self.segmentedControl.selectedSegmentIndex == 2)
                
            {
                
                self.textToChange.text = @"Favorites aren't loading right now";
                
            }
}
@end
