//
//  ZoomImageAppDelegate.h
//  ZoomImage
//
//  Created by holin on 2/16/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZoomImageViewController;

@interface ZoomImageAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ZoomImageViewController *viewController;

@end
