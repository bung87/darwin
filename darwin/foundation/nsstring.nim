import ../objc/runtime

export NSString


type NSStringEncoding* = enum
    NSASCIIStringEncoding = 1
    NSNEXTSTEPStringEncoding = 2
    NSJapaneseEUCStringEncoding = 3
    NSUTF8StringEncoding = 4
    NSISOLatin1StringEncoding = 5
    NSSymbolStringEncoding = 6
    NSNonLossyASCIIStringEncoding = 7
    NSShiftJISStringEncoding = 8
    NSISOLatin2StringEncoding = 9
    NSUnicodeStringEncoding = 10
    NSWindowsCP1251StringEncoding = 11
    NSWindowsCP1252StringEncoding = 12
    NSWindowsCP1253StringEncoding = 13
    NSWindowsCP1254StringEncoding = 14
    NSWindowsCP1250StringEncoding = 15
    NSISO2022JPStringEncoding = 21
    NSMacOSRomanStringEncoding = 30
    NSUTF32StringEncoding = 0x8c000100
    NSUTF16BigEndianStringEncoding = 0x90000100
    NSUTF16LittleEndianStringEncoding = 0x94000100
    NSUTF32BigEndianStringEncoding = 0x98000100
    NSUTF32LittleEndianStringEncoding = 0x9c000100
const NSUTF16StringEncoding* = NSStringEncoding.NSUnicodeStringEncoding

proc UTF8String*(s: NSString): cstring {.objc: "UTF8String".}

proc isEqualToString*(s1, s2: NSString): bool {.objc: "isEqualToString:".}

template `==`*(s1, s2: NSString): bool = s1.isEqualToString(s2)

proc withUTF8String*(n: typedesc[NSString], s: cstring): NSString {.objc: "stringWithUTF8String:".}
proc stringWithNSString*(n: NSString): string = $n.UTF8String
proc stringByAppendingString*(s: NSString, a: NSString): NSString {.objc: "stringByAppendingString:".}
proc hasSuffix*(s: NSString, a: NSString): BOOL {.objc: "hasSuffix:".}

converter toNSString*(s: string): NSString = NSString.withUTF8String(s)
converter nsstringtostring*(s: NSString): string = stringWithNSString(s)
template `$`*(s: NSString): string = nsstringtostring(s)


proc description*(o: NSObject): NSString {.objc.}
template `$`*(o: NSObject): string = stringWithNSString(o.description)
proc `@`*(s: string): NSString = NSString(s)
