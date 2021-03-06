#import "_UTF8.h"

// ----------------------------------
// Category source code
// ----------------------------------

@implementation NSString ( UTF8 )

- (NSData *)utf8EncodedData {
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSString *)unicodeString {
    NSString *tempStr1 = [self stringByReplacingOccurrencesOfString:@"\\u"withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\""withString:@"\\\""];
    NSString *tempStr3 = [[@"\""stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString *returnStr = [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListMutableContainersAndLeaves format:NULL error:NULL];
    
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];
}

@end

// ----------------------------------
// Source code
// ----------------------------------

@implementation _UTF8

@end
