//
//  HostNameModel.m
//  mdserver
//
//  Created by midoks on 15/2/2.
//  Copyright (c) 2015年 midoks.cachecha.com. All rights reserved.
//

#import "HostNameModel.h"

@implementation HostNameModel


-(id)init
{
    if (self = [super init]) {
        _hostname = @"localhost";
        _port = @"8888";
        _path = @"";
        _php = @"56";
    }
    return self;
}

#pragma mark 初始化值
-(id)initWithHost:(NSString *)host port:(NSString *)port path:(NSString *)path php:(NSString *)php
{
    
    //    NSMutableDictionary *serverinfo = [[NSMutableDictionary alloc] init];
    //    [serverinfo setObject:host forKey:@"hostname"];
    //    [serverinfo setObject:port forKey:@"port"];
    //    [serverinfo setObject:path forKey:@"path"];
    
    _hostname = host;
    _port = port;
    _path = path;
    _php = php;
    return self;
}

-(NSMutableDictionary *)setWithHost:(NSString *)host port:(NSString *)port path:(NSString *)path php:(NSString *)php
{
    NSMutableDictionary *serverinfo = [[NSMutableDictionary alloc] init];
    [serverinfo setObject:host forKey:@"hostname"];
    [serverinfo setObject:port forKey:@"port"];
    [serverinfo setObject:path forKey:@"path"];
    [serverinfo setObject:php forKey:@"php"];
    return serverinfo;
}



@end
