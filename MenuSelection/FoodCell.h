//
//  FoodCell.h
//  MenuSelection
//
//  Created by Kemuel Clyde Belderol on 22/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import <UIKit/UIKit.h>

//Create delegate
//1. Declare
@protocol FoodCellDelegate <NSObject>

- (void)didSelectImage:(UIImage *)image;

@end


@interface FoodCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;

//2. Set
@property (weak, nonatomic) id<FoodCellDelegate> delegate;

@end
