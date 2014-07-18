//
//  ViewController.m
//  eta
//
//  Created by Ankith Konda on 7/18/14.
//  Copyright (c) 2014 Ankith Konda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

@synthesize testArray;

@synthesize listTableView;
            
- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testArray = [[NSMutableArray alloc] init];
    
    
    NSMutableDictionary *testDict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *testDict2 = [[NSMutableDictionary alloc] init];

    
    [testDict setObject:@"ankith" forKey:@"name"];
    [testDict setObject:@"2" forKey:@"time"];
    
    [testDict2 setObject:@"craig" forKey:@"name"];
    [testDict2 setObject:@"10" forKey:@"time"];

    
    
    [self.testArray addObject:testDict];
    [self.testArray addObject:testDict2];
    
    NSLog(@"Hello world");
    
}

-(void)viewDidAppear:(BOOL)animated{



    [self.listTableView reloadData];


}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.testArray count];    //count number of row from counting array hear cataGorry is An Array
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    return 100;
    

}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    
    NSLog(@"I selected");
    

}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"myCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:MyIdentifier];
    }
    
    
    NSMutableDictionary *currentPerson = [self.testArray objectAtIndex:[indexPath row]];
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:1];
    UILabel *timeLabel = (UILabel *)[cell viewWithTag:2];
    
    NSLog(@"im trying");
    
    [nameLabel setText:[currentPerson objectForKey:@"name"]];
    [timeLabel setText:[currentPerson objectForKey:@"time"]];
    
    
    
    
    return cell;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
