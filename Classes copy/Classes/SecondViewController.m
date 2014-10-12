//
//  SecondViewController.m
//  Classes
//
//  Created by Diego M. Urquiza on 10/5/14.
//  Copyright (c) 2014 Diego. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"


@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Items;

@end

@implementation SecondViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Create a mutable array object, store its address in items variable
    
    NSMutableArray *items = [[NSMutableArray alloc]init];
    
    //Send the message addObject: to theNSMutable Array pointed to by he variable items, passing a string each time
    
    [items addObject:@"One"];
    [items addObject:@"Two"];
    [items addObject:@"Three"];
    
    //Send another message, insertObject:atIndex:, to that same array object
    
    [items insertObject:@"Zero" atIndex:0];
    
    //For every item in the items array...
    
    for (NSString *item in items){
        NSLog(@"%@",item);
    }
    
    ViewController *item = [[ViewController alloc]init];
    
    [item setItemName:@"Red Sofa"];
    [item setSerialNumber:@"A1B2C"];
    [item setValueInDollars:100];
    
    
    NSLog(@"%@ %@ %@ %d",[item itemName],[item dateCreated],[item serialNumber],[item valueInDollars]);
    
    NSString *label = [NSString stringWithFormat:@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]];
    
    self.Items.text = label;
    
    NSLog(@"This is the item description %@",item);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
