//
//  ViewController.m
//  UISlider
//
//  Created by Phu Huynh on 8/24/15.
//  Copyright (c) 2015 Plato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize labelCounter, labelMessage, mySlider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSlider:(id)sender{
    labelCounter.text = [NSString stringWithFormat:@"%.1f",mySlider.value ];
    
    if (mySlider.value > 0.5f){
        labelMessage.text = @"Danger";
        // Change text color to red
        labelMessage.textColor = [UIColor redColor];
    }else{
        labelMessage.text = @"";
        labelMessage.textColor = [UIColor clearColor];
    }
}

@end
