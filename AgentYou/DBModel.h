//
//  DBModel.h
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/7/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#ifndef AgentYou_DBModel_h
#define AgentYou_DBModel_h

@protocol DBModelProtocol <NSObject>

- (void)itemsDownloaded:(NSMutableArray *)items;

@end

@interface DBModel : NSObject <NSURLConnectionDataDelegate>

@property (nonatomic, weak) id<DBModelProtocol> delegate;
@property NSMutableArray *currentAgentList;

- (void)downloadItems;

- (NSMutableArray*)getCurrentAgentList;

@end


#endif
