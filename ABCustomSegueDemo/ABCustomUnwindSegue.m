//
//  ABCustomUnwindSegue.m
//  ABCustomSegueDemo
//
//  Created by Alex Bencz on 2014-02-04.
//  Copyright (c) 2014 Alex Bencz. All rights reserved.
//

#import "ABCustomUnwindSegue.h"

@implementation ABCustomUnwindSegue

- (void)perform
{
    UIView *sourceView = ((UIViewController *)self.sourceViewController).view;
    UIView *destinationView = ((UIViewController *)self.destinationViewController).view;
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    destinationView.center = CGPointMake(sourceView.center.x - sourceView.frame.size.width, destinationView.center.y);
    [window insertSubview:destinationView belowSubview:sourceView];
    
    [UIView animateWithDuration:0.4
                     animations:^{
                         destinationView.center = CGPointMake(sourceView.center.x, destinationView.center.y);
                         sourceView.center = CGPointMake(sourceView.center.x + sourceView.frame.size.width, destinationView.center.y);
                     }
                     completion:^(BOOL finished){
                         [[self destinationViewController] dismissViewControllerAnimated:NO completion:nil];
                     }];
}

@end
