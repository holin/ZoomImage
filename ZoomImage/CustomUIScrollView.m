//
//  CustomUIScrollView.m
//  ZoomImage
//
//  Created by holin on 2/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomUIScrollView.h"


@implementation CustomUIScrollView

@synthesize tileContainerView;

- (void)dealloc {
    self.tileContainerView = nil;
    [super dealloc];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // center the image as it becomes smaller than the size of the screen
    CGSize boundsSize = self.bounds.size;
    CGRect frameToCenter = tileContainerView.frame;
    
    // center horizontally
    if (frameToCenter.size.width < boundsSize.width)
        frameToCenter.origin.x = (boundsSize.width - frameToCenter.size.width) / 2;
    else
        frameToCenter.origin.x = 0;
    
    // center vertically
    if (frameToCenter.size.height < boundsSize.height)
        frameToCenter.origin.y = (boundsSize.height - frameToCenter.size.height) / 2;
    else
        frameToCenter.origin.y = 0;
    
    tileContainerView.frame = frameToCenter;
}

@end
