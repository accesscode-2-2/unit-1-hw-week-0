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
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;
@property (weak, nonatomic) IBOutlet UIButton *following;
@property (weak, nonatomic) IBOutlet UIImageView *feedImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *link = [NSURL URLWithString:@"https://pbs.twimg.com/profile_images/1990249248/image.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:link];
 
    self.profilePicture.image = [UIImage imageWithData:data] ;
    
    NSURL *rl = [NSURL URLWithString:@"http://cdn.themetapicture.com/media/funny-Will-Ferrell-Twitter-quote-alarm.jpg"];
    NSData *dataFeed = [NSData dataWithContentsOfURL:rl];
    self.feedImage.image = [UIImage imageWithData:dataFeed];

}
- (IBAction)followingButton:(UIButton *)sender {
    if ([[sender currentTitle] isEqualToString:@"Follow"]) {
        [sender setTitle:@"Following" forState:normal];
    }
    else{
        [sender setTitle:@"Follow" forState:normal];
    }
}
- (IBAction)segmentedController:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        NSURL *rl = [NSURL URLWithString:@"http://cdn.themetapicture.com/media/funny-Will-Ferrell-Twitter-quote-alarm.jpg"];
        NSData *data = [NSData dataWithContentsOfURL:rl];
        self.feedImage.image = [UIImage imageWithData:data];
    }
    
    if (sender.selectedSegmentIndex == 1) {
        NSURL *rl = [NSURL URLWithString:@"http://jokideo.com/wp-content/uploads/2012/05/551579_373616419352221_199098633470668_963131_777962716_n.jpg"];
        NSData *data = [NSData dataWithContentsOfURL:rl];
        self.feedImage.image = [UIImage imageWithData:data];
    }
    if (sender.selectedSegmentIndex == 2) {
        NSURL *rl = [NSURL URLWithString:@"http://www.dumpaday.com/wp-content/uploads/2013/01/funny-twitter-quotes-about-love.jpg"];
        NSData *data = [NSData dataWithContentsOfURL:rl];
        self.feedImage.image = [UIImage imageWithData:data];
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
