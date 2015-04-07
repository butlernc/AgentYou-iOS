//
//  DashBoardViewController.m
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "DashBoardViewController.h"
#include "AgentData.h"

@interface DashBoardViewController()



@end

@implementation DashBoardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set this view controller object as the delegate and data source for the table view
    self.agentListView.delegate = self;
    self.agentListView.dataSource = self;
    
    // Create array object and assign it to _feedItems variable
    self.agentsList = [[NSMutableArray alloc] init];
    
    // Create new HomeModel object and assign it to _homeModel variable
    self.databaseConnection = [[DBModel alloc] init];
    
    // Set this view controller object as the delegate for the home model object
    self.databaseConnection.delegate = self;
    
    // Call the download items method of the home model object
    [self.databaseConnection downloadItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)itemsDownloaded:(NSMutableArray *)items
{
    // This delegate method will get called when the items are finished downloading
    
    // Set the downloaded items to the array
    self.agentsList = items;
    
    // Reload the table view
    [self.agentListView reloadData];
}

#pragma mark Table View Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of feed items (initially 0)
    return self.agentsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Retrieve cell
    NSString *cellIdentifier = @"BasicCell";
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // Get the location to be shown
    AgentData *agentData = self.agentsList[indexPath.row];
    
    // Get references to labels of cell
    myCell.textLabel.text = agentData.name;
    
    return myCell;
}


@end
