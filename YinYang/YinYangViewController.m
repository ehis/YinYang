//
//  YinYangViewController.m
//  YinYang
//
//  Created by Ehidiamen Ojielu on 9/5/14.
//  Copyright (c) 2014 Mobi. All rights reserved.
//

#import "YinYangViewController.h"

@interface YinYangViewController ()
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;

@end

@implementation YinYangViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    // perform initialization
    [self customizeButtons: _firstButton];
    [self customizeButtons: _secondButton];
}

- (IBAction)buttonPressed:(id)sender {
    
    if ([(UIButton *)sender isEqual:_firstButton]) {
        NSLog(@"first button clicked");
        [self toggle: sender];
        [self toggle: _secondButton];
    }
    else {
        NSLog(@"second button clicked");
        [self toggle: sender];
        [self toggle: _firstButton];
    }
    
    
}


-(void)toggle:(UIButton *)button {
    if ([[button currentTitle]  isEqual: @"Yang"]) {
        [self toggleYang: button];
    }
    else if ([[button currentTitle] isEqual: @"Yin"]) {
        [self toggleYin: button];
    }

}


- (void)toggleYang:(id)sender {
    UIButton *btn = (UIButton *)sender;
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"Yin" forState:UIControlStateNormal];
}


- (void)toggleYin:(id)sender {
    UIButton *btn = (UIButton *)sender;
    [btn setBackgroundColor:[UIColor whiteColor]];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"Yang" forState:UIControlStateNormal];
}

-(void)customizeButtons: (UIButton *)button {
    button.layer.borderWidth = 1.0;
    button.layer.cornerRadius = 5.0;
    button.layer.borderColor = [[UIColor blackColor] CGColor];

}

@end
