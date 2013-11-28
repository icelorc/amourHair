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

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
