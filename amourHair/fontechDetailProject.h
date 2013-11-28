//
//  fontechDetailProject.h
//  amourHair
//
//  Created by Robert Huang on 11/28/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

enum viewMode {
    viewModeVertical,
    viewModeHorizontal
};

@interface fontechDetailProject : UIView

@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UILabel *label;

- (id)initWithFrame:(CGRect)frame viewMode:(enum viewMode)viewMode;

@end
