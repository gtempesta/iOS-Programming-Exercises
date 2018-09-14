//
//  ViewController.m
//  RectView
//
//  Created by Giorgio Tempesta on 21/03/17.
//  Copyright © 2017 Giorgio Tempesta. All rights reserved.
//

#import "ViewController.h"
#import "BNRHypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // CGRect firstFrame = self.view.bounds;
    // BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
    // firstView.backgroundColor = [UIColor whiteColor];
    // [self.view addSubview:firstView];
    
    // Create CGRects for frames
    CGRect screenRect = self.view.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    // bigRect.size.height *= 2.0;
    
    // Create a screen-sized scroll view and add it to the window
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: screenRect];
    scrollView.pagingEnabled = YES; // pagingEnabled rende meno sensibile al tocco (capisce che sto scrollando)
    [self.view addSubview:scrollView];
    
    // Create a super-sized hypnosis view and add it to the scroll view
    // BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame: bigRect];
    
    // Create a screen-sized scroll view and add it to the window
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame: screenRect];
    [scrollView addSubview:hypnosisView];
    
    // Add a second screen-sized hypnosis view just off screen to the right
    screenRect.origin.x += screenRect.size.width;
    BNRHypnosisView *secondHypnoView = [[BNRHypnosisView alloc] initWithFrame: screenRect];
    [scrollView addSubview:secondHypnoView];
    
    // Tell the scroll view how big its content area is
    scrollView.contentSize = bigRect.size;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
