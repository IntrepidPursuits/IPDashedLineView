//
//  IPViewController.m
//  IPDashedLine
//
//  Created by Colin Brash on 5/30/14.
//  Copyright (c) 2014 Intrepid Pursuits. All rights reserved.
//

#import "IPViewController.h"
#import "IPDashedLineView.h"


@implementation IPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Forced Horizontal
    IPDashedLineView *dash1 = [[IPDashedLineView alloc] initWithFrame:CGRectMake(20, 60, 200, 1)];
    dash1.direction = IPDashedLineViewDirectionHorizontalFromRight;
    dash1.lengthPattern = @[@1, @1];
    [self.view addSubview:dash1];

    // Vertical
    IPDashedLineView *dash2 = [[IPDashedLineView alloc] initWithFrame:CGRectMake(20, 100, 4, 200)];
    dash2.lengthPattern = @[@4, @4];
    dash2.lineColor = [UIColor orangeColor];
    [self.view addSubview:dash2];
    
    // Horizontal
    IPDashedLineView *dash3 = [[IPDashedLineView alloc] initWithFrame:CGRectMake(40, 100, 200, 4)];
    dash3.lengthPattern = @[@2, @4];
    dash3.lineColor = [UIColor greenColor];
    [self.view addSubview:dash3];

    // Forced Vertical
    IPDashedLineView *dash4 = [[IPDashedLineView alloc] initWithFrame:CGRectMake(40, 300, 6, 200)];
    dash4.lengthPattern = @[@1, @1, @10, @1, @1, @6,];
    dash4.phase = 7;
    dash4.lineColor = [UIColor redColor];
    dash4.backgroundColor = [UIColor blueColor];
    dash4.direction = IPDashedLineViewDirectionVerticalFromBottom;
    [self.view addSubview:dash4];
    
    // Forced Vertical (looks like a bunch of horizontal lines)
    IPDashedLineView *dash5 = [[IPDashedLineView alloc] initWithFrame:CGRectMake(60, 300, 200, 20)];
    dash5.lengthPattern = @[@1, @1];
    dash5.lineColor = [UIColor purpleColor];
    dash5.direction = IPDashedLineViewDirectionVerticalFromTop;
    [self.view addSubview:dash5];
}
@end
