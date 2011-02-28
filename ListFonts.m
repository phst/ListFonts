#include <stdio.h>

#import <Foundation/Foundation.h>
#import <ApplicationServices/ApplicationServices.h>

int main(void) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSArray *fontURLs = (NSArray *)(CTFontManagerCopyAvailableFontURLs());
  for (NSURL *fontURL in fontURLs) {
    puts([[fontURL absoluteString] UTF8String]);
  }
  [fontURLs release];
  [pool drain];
  return 0;
}
