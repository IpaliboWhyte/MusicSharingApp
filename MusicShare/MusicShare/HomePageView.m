//
//  HomePageView.m
//  MusicShare
//
//  Created by Ipalibo Whyte on 13/06/2014.
//  Copyright (c) 2014 SweetKeyNotes. All rights reserved.
//

#import "HomePageView.h"
#import "JCRBlurView.h"
#import "FXBlurView.h"

@interface HomePageView ()

@end

@implementation HomePageView

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //Screen size width and height
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    
    //Sets Title
    self.title = @"Songs";
    
    //Background for the screen
    UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background_Image.jpg"]];
    [backgroundView setFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [self.view addSubview:backgroundView];
    
    UITextField *songSearch_textField = [[UITextField alloc] initWithFrame:CGRectMake((screenWidth/2) - 125, screenHeight/2.2, 250, 45)];
    [songSearch_textField setBackgroundColor:[UIColor blackColor]];
    [songSearch_textField setTextAlignment:NSTextAlignmentCenter];
    songSearch_textField.autocorrectionType = UITextAutocorrectionTypeNo;
     songSearch_textField.placeholder = @"Search for a song";
    [songSearch_textField setValue:[UIColor darkGrayColor] forKeyPath:@"_placeholderLabel.textColor"];
    songSearch_textField.textColor = [UIColor whiteColor];
    [songSearch_textField setAlpha:0.4];
    [self.view addSubview: songSearch_textField];
}

@end
