//
//  ViewController.h
//  Stream-Video
//
//  Created by Tanjim Hossain on 1/4/18.
//  Copyright © 2018 Tanjim Hossain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIButton *streamButton;

- (IBAction)onButtonStream:(id)sender;

@end

