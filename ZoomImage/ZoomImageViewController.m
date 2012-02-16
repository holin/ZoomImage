//
//  ZoomImageViewController.m
//  ZoomImage
//
//  Created by holin on 2/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ZoomImageViewController.h"

@implementation ZoomImageViewController

@synthesize scrollView, imageView;

- (void)dealloc {		
    [super dealloc];		
    [imageView release];		
    [scrollView release];	
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{		
    return imageView;	
}


#pragma mark - View lifecycle

- (void)viewDidLoad {	    
    [super viewDidLoad];		
    UIImageView *tempImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];		
    self.imageView = tempImageView;		
    [tempImageView release];
    
    scrollView.contentSize = CGSizeMake(imageView.frame.size.width, imageView.frame.size.height);	
    scrollView.maximumZoomScale = 4.0;		
    scrollView.minimumZoomScale = 0.25;		
    scrollView.clipsToBounds = YES;		
    scrollView.delegate = self;		
    [scrollView addSubview:imageView];
    scrollView.tileContainerView = imageView;     


    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
} 

@end
