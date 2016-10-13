//
//  LocationCpp.cpp
//  Swift-C-GPS
//
//  Created by Ricard Romeo Murgo on 14/10/16.
//  Copyright © 2016 Ricard. All rights reserved.
//

#include "LocationCpp.h"
#include <stdio.h>
#include <stdlib.h>

LocationCpp::LocationCpp() {}
LocationCpp::~LocationCpp() {}

void LocationCpp::setCoordinates(const double longitude, const double latitude) {
    fprintf(stderr, "longitude: %f    latitude: %f",longitude, latitude);
}