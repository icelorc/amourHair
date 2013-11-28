//
//  fontechProjectDetailViewController.h
//  amourHair
//
//  Created by Robert Huang on 11/28/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "fontechDetailProject.h"

@interface fontechProjectDetailViewController : UIViewController <UIScrollViewDelegate, UIPageViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end
