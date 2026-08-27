<p align="center">
  <img src="https://github.com/sergpryimachuk/MilitarySymbologyKit/blob/bbcc9f42ae96827fe833dbd224e03dad6530b7aa/Media/Icon.svg" width="100"/>
</p>
<h1 align="center">MilitarySymbologyKit</h1>

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine/)

> [!IMPORTANT]
>
> This library is in active development, and API changes may happen.

## About

MilitarySymbologyKit is a Swift package for creating military symbols, generating 20-character SIDC codes, parsing SIDC codes back into typed symbols, and displaying symbols in SwiftUI.

The project is inspired by [Joint Military Symbology Explorer](https://explorer.milsymb.net/#/home). It maps [Joint Military Symbology Markup Language (JMSML)](https://github.com/Esri/joint-military-symbology-xml) data into native Swift enums and structs, with localized display names backed by an Xcode String Catalog.

## Current Scope

Implemented:

- Type-safe models for `Context`, `StandardIdentity`, `Dimension`, `Status`, `HQTFD`, `Amplifier`, amplifier descriptors, entities, entity types, and entity subtypes.
- SIDC generation with `MilitarySymbol.sidc`.
- SIDC parsing with `MilitarySymbol(sidc:)`.
- SwiftUI rendering with `MilitarySymbol.makeView(size:)`, backed by SVG assets from [MilitarySymbologyAssets](https://github.com/sergpryimachuk/MilitarySymbologyAssets).
- Search helpers for `[MilitarySymbol]`, including `allEntityCases(initialValue:)` and `filtered(searchText:)`.

Supported dimensions are `air`, `airMissile`, `space`, `spaceMissile`, `landUnits`, `landCivilian`, `landEquipment`, `landInstallation`, `controlMeasure`, `seaSurface`, `seaSubsurface`, `mineWarfare`, `activities`, and `cyberspace`.

Not implemented yet:

- Sector one and sector two modifiers. Generated SIDCs currently end with `0000`.
- Active `Dimension` cases for meteorological and signals intelligence symbols. Some source files for those areas exist, but the dimensions are not currently enabled in `Dimension.allCases`.

## Installation

MilitarySymbologyKit can be installed with Swift Package Manager:

```
https://github.com/sergpryimachuk/MilitarySymbologyKit.git
```

The package currently supports iOS 17, macOS 14, and visionOS 1 or later.

## Usage

Import the package:

```swift
import MilitarySymbologyKit
```

There are several ways to create a `MilitarySymbol`.

Create a symbol with default values:

```swift
let symbol = MilitarySymbol()
```

Customize a symbol with typed values:

```swift
let symbol = MilitarySymbol(
    context: .reality,
    standardIdentity: .friend,
    dimension: .landUnits,
    status: .present,
    hqtfd: .taskForce,
    amplifier: .echelonBrigadeBelow,
    descriptor: AnyDescriptor(EchelonBrigadeBelowDescriptor.squad),
    entity: AnyEntity(LandUnitEntity.movementAndManeuver),
    entityType: AnyEntityType(LandUnitEntity.MovementAndManeuverEntityType.infantry),
    entitySubtype: AnyEntitySubtype(InfantryEntitySubtype.motorized)
)
```

Create a symbol from a valid 20-character SIDC code:

```swift
let symbol = try MilitarySymbol(sidc: "10031004121211040000")
```

Read the generated SIDC from any symbol:

```swift
let sidc = symbol.sidc
```

For custom initialization and SIDC parsing, you can also pass:

- `isCivilian` to use civilian frames.
- `isAlternateStatusAmplifiers` to use alternate operational condition amplifiers.

### Symbol Rendering

Rendering composes SwiftUI `Image` views from frame, amplifier, HQTFD, main icon, full-frame icon, and operational condition amplifier assets. The SVG files live in the separate [MilitarySymbologyAssets](https://github.com/sergpryimachuk/MilitarySymbologyAssets) package, which is included as a dependency.

> [!WARNING]
> Because the asset package uses an Asset Catalog with **3790** single-scale SVG images that preserve vector data, the initial Xcode build can take some time.[^1] After the files have been cached, builds should return to their normal speed.
>
> This is the main reason `MilitarySymbologyAssets` is separate: changes in `MilitarySymbologyKit` do not trigger recompilation of the Asset Catalog.

Display a symbol by calling `makeView()`:

```swift
import SwiftUI

struct ContentView: View {
    let symbol = MilitarySymbol()

    var body: some View {
        symbol.makeView()
    }
}
```

Provide a `CGFloat` size to constrain the rendered icon:

```swift
symbol.makeView(size: 200)
```

[^1]: On a 14-inch MacBook Pro with M1 Pro and 16 GB RAM, the initial asset build takes about 6 minutes.
