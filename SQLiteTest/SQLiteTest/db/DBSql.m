//
//  DBSql.m
//  SQLiteTest
//
//  Created by Tongling on 14/11/5.
//  Copyright (c) 2014年 hanker. All rights reserved.
//

#import "DBSql.h"

@implementation DBSql

- (instancetype)dbSql{
    NSString *dirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *databasePath = [[NSString alloc] initWithString:[dirPath stringByAppendingPathComponent:@"info.db"]];
    
    NSFileManager *filemanager = [NSFileManager defaultManager];
    
    if ([filemanager fileExistsAtPath:databasePath] == NO) {
        const char *dbpath = [databasePath UTF8String];
        
    }
    return self;
}

@end
