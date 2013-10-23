//
//  MyView.m
//  TestApp
//
//  Created by Shuvo on 10/23/13.
//  Copyright (c) 2013 Masud Shuvo. All rights reserved.
//

#import "MyView.h"

@interface MyView ()

@end

@implementation MyView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)blueButtonPresssed
{
    myLabel.text = @"blue color view";
    subView.backgroundColor = [UIColor blueColor];
}

- (void)blackButtonPresssed
{
    myLabel.text = @"black color view";
    subView.backgroundColor = [UIColor blackColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    subView.backgroundColor = [UIColor blackColor];
    myLabel.backgroundColor = [UIColor yellowColor];
    [blueButton addTarget:self action:@selector(blueButtonPresssed) forControlEvents:UIControlEventTouchUpInside];
    [blackButton addTarget:self action:@selector(blackButtonPresssed) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
