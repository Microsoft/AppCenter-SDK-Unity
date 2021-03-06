// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

#import "CustomProperties.h"
#import <AppCenter/AppCenter.h>
#import <Foundation/Foundation.h>

MSACCustomProperties* appcenter_unity_custom_properties_create()
{
  return [[MSACCustomProperties alloc] init];
}

void appcenter_unity_custom_properties_set_string(MSACCustomProperties* properties, char* key, char* val)
{
  [properties setString:[NSString stringWithUTF8String:val] forKey:[NSString stringWithUTF8String:key]];
}

void appcenter_unity_custom_properties_set_number(MSACCustomProperties* properties, char* key, NSNumber* val)
{
  [properties setNumber:val forKey:[NSString stringWithUTF8String:key]];
}

void appcenter_unity_custom_properties_set_bool(MSACCustomProperties* properties, char* key, bool val)
{
  [properties setBool:val forKey:[NSString stringWithUTF8String:key]];
}

void appcenter_unity_custom_properties_set_date(MSACCustomProperties* properties, char* key, NSDate* val)
{
  [properties setDate:val forKey:[NSString stringWithUTF8String:key]];
}

void appcenter_unity_custom_properties_clear(MSACCustomProperties* properties, char* key)
{
  [properties clearPropertyForKey:[NSString stringWithUTF8String:key]];
}
