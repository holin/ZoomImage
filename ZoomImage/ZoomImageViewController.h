//
//  ZoomImageViewController.h
//  ZoomImage
//
//  Created by holin on 2/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIScrollView.h"


@interface ZoomImageViewController : UIViewController<UIScrollViewDelegate> {
 	
   
}

@property (nonatomic, retain) IBOutlet CustomUIScrollView *scrollView;	
@property (nonatomic, retain) UIImageView *imageView;

@end
