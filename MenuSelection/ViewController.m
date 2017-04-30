//
//  ViewController.m
//  MenuSelection
//
//  Created by Kemuel Clyde Belderol on 22/03/2017.
//  Copyright © 2017 Burst. All rights reserved.
//

#import "ViewController.h"
#import "FoodCell.h"
#import "DrinkCell.h"
//@import module

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, FoodCellDelegate, DrinkCellDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImage;
@property (weak, nonatomic) IBOutlet UITableView *tableView;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareTableView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


-(void)prepareTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

#pragma mark - UITableView DataSource


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier1 = @"foodCell";
    static NSString *CellIdentifier2 = @"drinkCell";
    
  
    if((indexPath.row %2) == 0 ) {
    FoodCell *cell = (FoodCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier1 forIndexPath:indexPath];
    
    //set the delegate
    cell.delegate = self;

        return cell;
    } else {
    
    DrinkCell *cell = (DrinkCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier2 forIndexPath:indexPath];
       
        cell.delegate = self;
        
         return cell;

    }
}

    
//implement
-(void)didSelectImage:(UIImage *)image {
    
    self.foodImage.image = image;
   
    
}

-(void)didSelectImage2:(UIImage *)image2 {
    
    self.drinkImage.image = image2;
}





@end
