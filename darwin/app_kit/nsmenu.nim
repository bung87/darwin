import ../objc/runtime
import ./nsevent

type
    NSMenu* = ptr object of NSObject
    NSMenuItem* = ptr object of NSObject

proc initWithTitle*(self: NSMenu, str: NSString): NSMenu {.objc: "initWithTitle:", discardable.}

proc initWithTitle*(self: NSMenuItem, str: NSString, action: SEL, key: NSString): NSMenuItem {.objc: "initWithTitle:action:keyEquivalent:", discardable.}

proc setSubmenu*(self: NSMenuItem, menu: NSMenu)  {.objc: "setSubmenu:".}

proc addItem*(self: NSMenu, item: NSMenuItem)  {.objc: "addItem:".}

proc setKeyEquivalentModifierMask*(self: NSMenuItem, mask: NSEventModifierFlags) {.objc: "setKeyEquivalentModifierMask:".}

proc separatorItem*(self: typedesc[NSMenuItem]): NSMenuItem {.objc.}

proc setTarget*(self: NSMenuItem, target: Id) {.objc: "setTarget:".}

proc setAction*(self: NSMenuItem, action: SEL) {.objc: "setAction:".}

proc setEnabled*(self: NSMenuItem, enabled: BOOL) {.objc: "setEnabled:".}

proc title*(self: NSMenuItem): NSString {.objc: "title".}

proc setTitle*(self: NSMenuItem, title: NSString) {.objc: "setTitle:".}

proc setSeparatorItem*(self: NSMenuItem, b: BOOL): NSMenuItem {.objc: "setSeparatorItem:".}

proc isSeparatorItem*(self: NSMenuItem): BOOL {.objc: "isSeparatorItem".}

proc keyEquivalent*(self: NSMenuItem): NSString {.objc: "keyEquivalent".}

proc hasSubmenu*(self: NSMenuItem): BOOL {.objc: "hasSubmenu".}
