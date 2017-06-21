//
//  FastEnumeration.h
//  SwiftyOC
//
//  Created by kemchenj on 21/06/2017.
//  Copyright © 2017 kemchenj. All rights reserved.
//

#ifndef FastEnumeration_h
#define FastEnumeration_h

@protocol PSPDFFastEnumeration <NSFastEnumeration>
- (id)pspdf_enumeratedType;
@end

@interface NSArray <ElementType> (PSPDFFastEnumeration) <PSPDFFastEnumeration>
- (ElementType)pspdf_enumeratedType;
@end

@interface NSSet <ElementType> (PSPDFFastEnumeration) <PSPDFFastEnumeration>
- (ElementType)pspdf_enumeratedType;
@end

@interface NSDictionary <KeyType, ValueType> (PSPDFFastEnumeration) <PSPDFFastEnumeration>
- (KeyType)pspdf_enumeratedType;
@end

#endif /* FastEnumeration_h */
