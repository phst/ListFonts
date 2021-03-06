// Copyright (c) 2011, Philipp Stephani <st_philipp@yahoo.de>
//
// This work may be freely reproduced, distributed, transmitted, used,
// modified, built upon, or otherwise exploited by anyone for any
// purpose, commercial or non-commercial, and in any way, including by
// methods that have not yet been invented or conceived.
//
// THE WORK IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE WORK
// OR THE USE OR OTHER DEALINGS IN THE WORK.

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
