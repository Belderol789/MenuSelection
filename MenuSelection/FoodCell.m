//
//  FoodCell.m
//  MenuSelection
//
//  Created by Kemuel Clyde Belderol on 22/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.image1 addGestureRecognizer:tapGesture1];
     UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.image2 addGestureRecognizer:tapGesture2];
     UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.image3 addGestureRecognizer:tapGesture3];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:self.image1, self.image2, self.image3, nil];
    
   
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];


   
}


-(void)imageTapped: (UIGestureRecognizer *)sender {
    UIImageView *tappedView = (UIImageView *)sender.view;
    UIImage *tappedImage = tappedView.image;
    
    //3. Call the delegate
    
    if(self.delegate) {
        [self.delegate didSelectImage:tappedImage];
        
        
    }
    
}
    
    


@end
