//
//  DashBoardViewController.h
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#ifndef AgentYou_DashBoardViewController_h
#define AgentYou_DashBoardViewController_h

#import <UIKit/UIKit.h>
#import "DBModel.h"

@interface DashBoardViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, DBModelProtocol>
@property NSMutableArray* agentsList;
@property DBModel* databaseConnection;
@property (strong, nonatomic) IBOutlet UITableView *agentListView;

@end


#endif
