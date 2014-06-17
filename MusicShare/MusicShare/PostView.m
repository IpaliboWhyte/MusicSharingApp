//
//  PostView.m
//  MusicShare
//
//  Created by Ipalibo Whyte on 13/06/2014.
//  Copyright (c) 2014 SweetKeyNotes. All rights reserved.
//

#import "PostView.h"
// height 200

@implementation PostView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews
{
    
    UIImageView *albumArtwork = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kidink2.jpg"]];
    [albumArtwork setFrame:CGRectMake(10, 0, 200, 200)];
    albumArtwork.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"kidink2.jpg"]];
    [self addSubview:albumArtwork];

}


@end
