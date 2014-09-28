//
//  UIButton+PCategory.h
//  AssistiveTouch
//
//  Created by crazypoo on 14/9/26.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (PCategory)

@property(nonatomic,assign,getter = isDragEnable)   BOOL dragEnable;
@property(nonatomic,assign,getter = isAdsorbEnable) BOOL adsorbEnable;

@end

