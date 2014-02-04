//
//  SecondViewController.m
//  ABCustomSegueDemo
//
//  Created by Alex Bencz on 2014-02-04.
//  Copyright (c) 2014 Alex Bencz. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnToFirst:(id)sender {
    [self performSegueWithIdentifier:@"UnwindFromSecondView" sender:self];
}

@end
