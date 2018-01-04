//
//  ViewController.m
//  Stream-Video
//
//  Created by Tanjim Hossain on 1/4/18.
//  Copyright © 2018 Tanjim Hossain. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Action
- (IBAction)onButtonStream:(id)sender {
    
    NSString *urlString = self.urlTextField.text;
    
    if(!urlString || urlString.length<=0) {
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Please insert a video URL at the URL field" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:okAction];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alert animated:YES completion:nil];
        });
    }
    else {
        [self playVideoFromURL:urlString];
    }
}

#pragma mark - Private methods

-(void) playVideoFromURL: (NSString *) urlString {
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    AVPlayer *avPlayer = [AVPlayer playerWithURL:url];
    AVPlayerViewController *avPlayerVC = [AVPlayerViewController new];
    avPlayerVC.player = avPlayer;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewController:avPlayerVC animated:YES completion:nil];
    });
}
@end
