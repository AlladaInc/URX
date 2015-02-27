//
//  URXCardView.h
//  URXWidgets
//
//  Created by David Lee on 12/8/14.
//  Copyright (c) 2014 URX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <URXSearch/URXSearchResult.h>
#import "URXKeywordContext.h"

IB_DESIGNABLE
@interface URXCardView : UIView

@property (strong, nonatomic) NSArray *searchResults;
@property (strong,nonatomic) URXSearchResult *searchResult;

@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UIImageView *resultImageView;
@property (strong, nonatomic) IBOutlet UILabel *resultName;
@property (strong, nonatomic) IBOutlet UILabel *callToAction;
@property (strong, nonatomic) IBOutlet UILabel *resultDescription;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

// Customizable Properties:
@property (nonatomic, strong) IBInspectable NSString *initialQuery;
@property (nonatomic, strong) IBInspectable UIColor *resultNameTextColor;
@property (nonatomic, strong) IBInspectable UIColor *callToActionTextColor;
@property (nonatomic, strong) IBInspectable UIColor *resultDescriptionTextColor;

-(void)runQuery:(NSString *)keywords;

@property (nonatomic, strong) IBOutlet id<URXKeywordContext>keywordContext;

@end
