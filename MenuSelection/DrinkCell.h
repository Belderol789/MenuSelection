//
//  DrinkCell.h
//  MenuSelection
//
//  Created by Kemuel Clyde Belderol on 23/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DrinkCellDelegate <NSObject>

- (void)didSelectImage2:(UIImage *)image2;

@end

@interface DrinkCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *drink1;
@property (weak, nonatomic) IBOutlet UIButton *drink2;


@property (weak, nonatomic) id<DrinkCellDelegate> delegate;


@end
