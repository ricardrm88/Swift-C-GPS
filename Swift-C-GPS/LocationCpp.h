//
//  LocationCpp.h
//  Swift-C-GPS
//
//  Created by Ricard Romeo Murgo on 14/10/16.
//  Copyright © 2016 Ricard. All rights reserved.
//

#ifndef LocationCpp_h
#define LocationCpp_h

class LocationCpp {
    public:
    LocationCpp();
    ~LocationCpp();

    public:
    void setCoordinates(const double longitude, const double latitude);
};
#endif /* LocationCpp_h */
