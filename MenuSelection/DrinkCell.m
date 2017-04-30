//
//  DrinkCell.m
//  MenuSelection
//
//  Created by Kemuel Clyde Belderol on 23/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import "DrinkCell.h"

@implementation DrinkCell

- (void)awakeFromNib {
    [super awakeFromNib];
    


  
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


- (IBAction)drink1Tapped:(id)sender {
    UIImage *showImage = self.drink1.currentBackgroundImage;
    
    if(self.delegate) {
        [self.delegate didSelectImage2:showImage];
    }
}

    
- (IBAction)drink2Tapped:(id)sender {
    UIImage *showImage = self.drink2.currentBackgroundImage;
    
    if(self.delegate)
    {
        [self.delegate didSelectImage2:showImage];
    }
}



    
    
    
    





@end
