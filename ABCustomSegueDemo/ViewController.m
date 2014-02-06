//
//  ViewController.m
//  ABCustomSegueDemo
//
//  Created by Alex Bencz on 2014-02-04.
//  Copyright (c) 2014 Alex Bencz. All rights reserved.
//

#import "ViewController.h"
#import "ABCustomUnwindSegue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnedFromSegue:(UIStoryboardSegue *)segue {
    NSLog(@"Returned from second view");
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    
    if ([identifier isEqualToString:@"UnwindFromSecondView"]) {
        ABCustomUnwindSegue *segue = [[ABCustomUnwindSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
        return segue;
    }

    return [super segueForUnwindingToViewController:toViewController fromViewController:fromViewController identifier:identifier];
}

@end
