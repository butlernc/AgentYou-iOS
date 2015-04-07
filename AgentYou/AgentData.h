//
//  AgentData.h
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/7/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#ifndef AgentYou_AgentData_h
#define AgentYou_AgentData_h

@interface AgentData : NSObject

@property int score;
@property NSString* name;

-(int) getAgentScore;
-(NSString*) getAgentName;

@end


#endif
