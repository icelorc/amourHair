//
//  fontechProjectDetailViewController.m
//  amourHair
//
//  Created by Robert Huang on 11/28/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechProjectDetailViewController.h"

@interface fontechProjectDetailViewController ()

@end

@implementation fontechProjectDetailViewController

@synthesize scrollView = _scrollView;
@synthesize pageControl = _pageControl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init {
    if (self) {
        self = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"fontechProjectDetailViewController"];
        self.title = @"長髮";

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *viewArray = [[NSArray alloc] initWithObjects:@"example1.png", @"example2.png", nil];
    
    for (int i = 0; i < [viewArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        fontechDetailProject *detailProject= [[fontechDetailProject alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) viewMode:viewModeVertical];
        detailProject.imageView.image = [UIImage imageNamed:[viewArray objectAtIndex:i]];
 
        [self.scrollView addSubview:detailProject];
    }
    //Set the content size of our scrollview according to the total width of our imageView objects.
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [viewArray count], self.scrollView.frame.size.height);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

@end
