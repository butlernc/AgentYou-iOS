//
//  DBModel.m
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/7/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DBModel.h"
#import "AgentData.h"

@interface DBModel()
{
    NSMutableData *_downloadedData;
}
@end

@implementation DBModel

- (void)downloadItems
{
    // Download the json file
    NSURL *jsonFileUrl = [NSURL URLWithString:@"http://schastac.com/home3/schastac/agentyou/service.php"];
    
    // Create the request
    NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:jsonFileUrl];
    
    // Create the NSURLConnection
    [NSURLConnection connectionWithRequest:urlRequest delegate:self];
}

#pragma mark NSURLConnectionDataProtocol Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    // Initialize the data object
    _downloadedData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // Append the newly downloaded data
    [_downloadedData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    // Parse the JSON that came in
    NSError *error;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:_downloadedData options:NSJSONReadingAllowFragments error:&error];
    
    // Loop through Json objects, create question objects and add them to our questions array
    for (int i = 0; i < jsonArray.count; i++)
    {
        NSDictionary *jsonElement = jsonArray[i];
        
        // Create a new location object and set its props to JsonElement properties
        AgentData *newAgent = [[AgentData alloc] init];
        newAgent.name = jsonElement[@"Name"];
        newAgent.score = (int)jsonElement[@"Score"];
        
        // Add this question to the locations array
        [_currentAgentList addObject:newAgent];
    }
    
    // Ready to notify delegate that data is ready and pass back items
    if (self.delegate)
    {
        [self.delegate itemsDownloaded:_currentAgentList];
    }
}

-(NSMutableArray*) getCurrentAgentList {
    return self.currentAgentList;
}

@end
