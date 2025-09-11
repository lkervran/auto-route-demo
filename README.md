# Routing Package Migration Study

## Executive Summary

This document outlines the proposal to migrate from `go_router` to `auto_route` for improved routing architecture and reduced code duplication across our poker applications.

## Current State Analysis

### Limitations of `go_router`

Our current implementation using [`go_router`](https://pub.dev/packages/go_router) presents several challenges:

- **Feature Freeze**: The package is now in a "feature-complete" state and will only receive bug fixes
- **Fragmented Route Structure**: Route definitions are scattered across files without a global hierarchy view
- **Complex Parameter Handling**: Issues with non-primitive parameter types
- **Excessive Boilerplate**: Significant boilerplate code, especially when used with [`go_router_builder`](https://pub.dev/packages/go_router_builder)
- **Code Duplication**: Each app defines its own routes, leading to duplicated implementations

### Architectural Issues

Currently, each poker application must define its own routes independently. This approach results in:

- ✗ Duplicated route definitions across apps
- ✗ Duplicated navigator implementations  
- ✗ Increased maintenance overhead
- ✗ Higher risk of inconsistencies and bugs
- ✗ Difficulty maintaining feature parity

## Proposed Solution

### Migration to `auto_route`

I propose adopting [`auto_route`](https://pub.dev/packages/auto_route) as our routing solution, which provides:

#### **Key Benefits**
- **Centralized Route Definitions**: Complete route tree defined in a single location
- **Code Generation**: Automatic route generation significantly reduces boilerplate
- **Strong Type Safety**: Compile-time safety prevents navigation errors
- **Advanced Features**: Built-in support for shell routing, route guards, observers, and custom transitions
- **Enhanced Tab Navigation**: Dedicated [`AutoTabsRouter`](https://pub.dev/packages/auto_route#tab-navigation) with lazy-loading and custom transitions as well as nested shell routes
- **Widget-Native Routes**: Routes are standard Flutter widgets that can leverage full widget lifecycle features and be easily composed with Riverpod `ConsumerWidget`, `ConsumerStatefulWidget`, or any other widget type

#### **Technical Advantages**
- Clear, hierarchical route structure
- Excellent typed parameter passing
- Annotation-based configuration
- Reduced manual setup requirements

### Navigator Override Architecture

#### **Current Implementation Issues**
In our current `go_router` implementation, navigator providers are overridden individually on each route, leading to:

```dart
// Current approach - repeated on every route
@override
Widget build(BuildContext context, GoRouterState state) {
  return ProviderScope(
    overrides: [
      loginNavigatorProvider.overrideWithValue(DefaultLoginNavigator.defaultNavigator(context)),
      footerNavigatorProvider.overrideWithValue(DefaultFooterNavigator.defaultNavigator(context)),
      // ... more navigator overrides
    ],
    child: SomeScreen(),
  );
}
```

**Problems with this approach:**
- ✗ **Code Duplication**: Same override logic repeated across multiple routes
- ✗ **Maintenance Overhead**: Changes require updates in multiple locations  
- ✗ **Performance Impact**: Navigator instances recreated on every route
- ✗ **Inconsistency Risk**: Easy to forget overrides on new routes

#### **Proposed Root-Level Override**
With `auto_route`, navigator overrides will be configured once at the application root level:

```dart
// New approach - configured once at app root
loginNavigatorProvider.overrideWith(DefaultLoginNavigator),
footerNavigatorProvider.overrideWithValue(DefaultFooterNavigator),
// ... more navigator overrides
}
```

**Benefits of root-level configuration:**
- ✓ **Single Source of Truth**: All navigator configurations in one place
- ✓ **Improved Performance**: Navigator instances created once and reused
- ✓ **Reduced Boilerplate**: No need to repeat overrides on each route
- ✓ **Easier Maintenance**: Changes made in one central location
- ✓ **Consistency Guaranteed**: All routes automatically use the same navigators

Since, by design, providers are declared inside each feature, we won't be able to call an other feature navigator provider within an other feature package, so there would be no risk and have the same behaviour.

### Architectural Restructure

#### **Shared Components Strategy**

Move all **common route definitions** to the `base_router` package, including:
- Route definitions
- Navigator implementations
- Common guards and observers

#### **App-Specific Implementation**

- **Common Routes**: Imported from `base_router`
- **App-Specific Routes**: Implement directly within each app
- **Custom Navigators**: Override common navigators when app-specific behavior is required

This approach ensures:
- ✓ Single source of truth for common functionality
- ✓ Full encapsulation of app-specific features
- ✓ Flexibility for customization when needed

## Implementation Plan

### Current Structure
```
apps/
├── flutter_poker/
│   └── lib/
│       └── presentation/
│           └── router/
│               ├── route_1.dart          # Duplicated
│               ├── route_2.dart          # Duplicated
│               ├── route_3.dart          # Duplicated
│               ├── route_4.dart          # Duplicated
│               ├── route_5.dart          # Duplicated
│               └── router.dart
└── poker_framework/
    └── lib/
        └── presentation/
            └── router/
                ├── route_1.dart          # Duplicated
                ├── route_2.dart          # Duplicated
                ├── route_3.dart          # Duplicated
                ├── route_4.dart          # Duplicated
                ├── route_5.dart          # Duplicated
                └── router.dart
```

### Proposed Structure
```
apps/
├── flutter_poker/
│   └── lib/
│       └── presentation/
│           └── router/
│               ├── desktop_specific_route.dart    # App-specific only
│               └── router.dart                    # Imports common + specific
└── poker_framework/
    └── lib/
        └── presentation/
            └── router/
                ├── framework_specific_route.dart  # App-specific only
                └── router.dart                    # Imports common + specific

packages/
└── composition/
    └── base_router/
        └── lib/
            └── src/
                └── presentation/
                    ├── router/
                    │   ├── common_route_1.dart    # Shared across apps
                    │   ├── common_route_2.dart
                    │   ├── common_route_3.dart
                    │   ├── common_route_4.dart
                    │   └── common_route_5.dart
                    ├── guards/
                    │   ├── auth_guard.dart         # Common guards
                    │   └── common_guard.dart
                    └── navigators/
                        ├── common_navigator_1.dart # Reusable navigators
                        ├── common_navigator_2.dart
                        ├── common_navigator_3.dart
                        ├── common_navigator_4.dart
                        └── common_navigator_5.dart
```

## Expected Outcomes

### **Code Quality Improvements**
- Reduced codebase size through elimination of duplication
- Improved maintainability with centralized routing logic
- Enhanced type safety and compile-time error detection

### **Development Efficiency**
- Faster feature development with shared components
- Reduced testing overhead for common functionality
- Simplified onboarding for new team members

### **Technical Benefits**
- Better performance through optimized route generation
- Improved debugging with clearer route hierarchy
- Enhanced scalability for future feature additions

---

*This migration will establish a robust, maintainable routing architecture that supports our current needs while providing flexibility for future growth.*
