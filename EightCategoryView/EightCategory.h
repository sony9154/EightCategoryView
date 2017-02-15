//
//  EightCategory.h
//  NewGttv
//
//  Created by JoJo Lin on 2017/2/10.
//  Copyright © 2017年 VASCreative. All rights reserved.
//
//  This is the controller class for ChannelsCollectionView class
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EightCategory : NSObject <UICollectionViewDataSource, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) UICollectionView *collectionView;
@property BOOL hideFavorite;
// 頻道類別（新聞/電影戲劇...）
@property NSInteger categoryType;

/*
 * viewController: The view controller to present Program Menu View Controller
 * superView: The view to add collection view
 */
- (id)init:(UIViewController *)viewController withView:(UIView *)superView yOffset:(CGFloat)offset;

@end
