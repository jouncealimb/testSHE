//
//  ViewController.m
//  Classes
//
//  Created by Diego M. Urquiza on 10/5/14.
//  Copyright (c) 2014 Diego. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Hello;

@end

@implementation ViewController

- (void)setItemName:(NSString *)str{
    
    _itemName = str;
}

- (NSString *)itemName{
    
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str{
    
    _serialNumber =str;
}

- (NSString *)serialNumber{
    
    return _serialNumber;
}

- (void)setValueInDollars:(int)v{
    
    _valueInDollars = v;
}

-(int)valueInDollars{
    
    return _valueInDollars;
}

-(NSDate *)dateCreated{
    
    return _dateCreated;
}






- (IBAction)clickMe:(id)sender {
    self.Hello.text = @"Hello World";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
