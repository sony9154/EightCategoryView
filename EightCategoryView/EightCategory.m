//
//  ChannelsController.m
//  NewGttv
//
//  Created by JoJo Lin on 2017/2/10.
//  Copyright © 2017年 VASCreative. All rights reserved.
//

#import "EightCategory.h"
//#import "ChannelCell.h"
//#import "CommonDefs.h"
//#import "LivePlayerVC.h"
#import "EightCategoryCell.h"

@interface EightCategory()
{
    UIViewController *_presentingVC;
}
@end

@implementation EightCategory

- (id)init:(UIViewController *)viewController withView:(UIView *)superView yOffset:(CGFloat)offset {
    self = [super init];
    if ( self ) {
        _presentingVC = viewController;
        CGRect rect = CGRectMake(0, offset, superView.frame.size.width, superView.frame.size.height);
        _collectionView = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:[UICollectionViewFlowLayout new]];
        [superView addSubview:_collectionView];
        [_collectionView registerNib:[UINib nibWithNibName:@"EightCategoryCell" bundle:NULL] forCellWithReuseIdentifier:@"EightCategoryCell"];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
    }
    
    return self;
}

#pragma mark - Collection view data source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    EightCategoryCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:@"EightCategoryCell" forIndexPath:indexPath];
//    cell.favoriteButton.hidden = self.hideFavorite;
    cell.backgroundColor = [UIColor darkGrayColor];
//    [cell.playButton addTarget:self action:@selector(playBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
//    [cell.programMenuButton addTarget:self action:@selector(showProgramMenu:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

#pragma mark - Collection view flow layout delegate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = (self.collectionView.frame.size.width - 3 * 15) / 2;
    return CGSizeMake(width, width * 0.28);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(15,15,15,15);
}

#pragma mark - Event handlers

//- (void)playBtnPressed:(UIButton *)sender {
//    LivePlayerVC *livePlayerVC = [[LivePlayerVC alloc] initWithNibName:@"LivePlayerVC" bundle:[NSBundle mainBundle]];
//    [_presentingVC presentViewController:livePlayerVC animated:NO completion:nil];
//}

- (void)showProgramMenu:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"ProgramMenu" bundle:NULL];
    UIViewController *vc = [sb instantiateInitialViewController];
    [_presentingVC presentViewController:vc animated:YES completion:NULL];
}

@end
