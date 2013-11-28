//
//  fontechDetailProject.m
//  amourHair
//
//  Created by Robert Huang on 11/28/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechDetailProject.h"

@implementation fontechDetailProject

@synthesize imageView = _imageView;
@synthesize label = _label;

- (id)initWithFrame:(CGRect)frame viewMode:(enum viewMode)viewMode
{
    self = [super initWithFrame:frame];
    if (self) {
        if (viewMode == viewModeVertical) {
            self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 43, 280, 398)];
            [self addSubview:self.imageView];
        } else {
            self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 43, 300, 210)];
            [self addSubview:self.imageView];
        }
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
