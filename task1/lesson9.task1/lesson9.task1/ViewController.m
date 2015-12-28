//
//  ViewController.m
//  lesson9.task1
//
//  Created by Anton Lookin on 12/24/15.
//  Copyright © 2015 geekub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *OneTapView;
@property (weak, nonatomic) IBOutlet UIView *TwoTapView;
@property (weak, nonatomic) IBOutlet UIView *SwipeUp;
@property (weak, nonatomic) IBOutlet UIView *SwipeDown;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *twoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(twoTapCustom:)];
    twoTap.numberOfTapsRequired = 2;
    [self.TwoTapView addGestureRecognizer:twoTap];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUpCustom:)];
    [swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.SwipeUp addGestureRecognizer:swipeUp];

    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDownCustom:)];
    [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.SwipeDown addGestureRecognizer:swipeDown];

    
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)OneTapGuestureAction:(UITapGestureRecognizer *)sender {
    self.statusLabel.text = @"One Tap";
}

-(void)twoTapCustom:(UITapGestureRecognizer *)sender{
    
    self.statusLabel.text = @"Two Tap";
}

-(void)swipeUpCustom:(UISwipeGestureRecognizer *)sender{
    
    self.statusLabel.text = @"Swipe UP";
}

-(void)swipeDownCustom:(UISwipeGestureRecognizer *)sender{
    
    self.statusLabel.text = @"Swipe DOWN";
}

@end
