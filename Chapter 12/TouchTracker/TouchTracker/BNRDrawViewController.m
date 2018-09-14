//
//  BNRDrawViewController.m
//  TouchTracker
//
//  Created by Giorgio Tempesta on 17/11/17.
//  Copyright © 2017 Giorgio Tempesta. All rights reserved.
//

#import "BNRDrawViewController.h"
#import "BNRDrawView.h"

@interface BNRDrawViewController ()

@end

@implementation BNRDrawViewController

- (void)loadView
{
    self.view = [[BNRDrawView alloc] initWithFrame:CGRectZero];
}

@end
