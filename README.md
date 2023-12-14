<p align="center">
  <img src="https://github.com/sergpryimachuk/MilitarySymbologyKit/blob/bbcc9f42ae96827fe833dbd224e03dad6530b7aa/Media/Icon.svg" width="100"/>
</p>
<h1 align="center">MilitarySymbologyKit</h1>

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://vshymanskyy.github.io/StandWithUkraine/)

> [!IMPORTANT]
>
> This library is in active development, some changes may apply.

## About 

MilitarySymbologyKit helps you create military symbols, generate their SIDC codes and display them in SwiftUI.

It encapsulates [Joint Military Symbology Markup Language (JMSML)](https://github.com/Esri/joint-military-symbology-xml) in native Swift enums and structs. This enables type safety and easier transaction via Xcode String Catalog.

## Installation

MilitarySymbologyKit can be installed with the Swift Package Manager:

```
https://github.com/sergpryimachuk/MilitarySymbologyKit.git
```

## Usage

There are several ways to create in instance of `Military Symbol`

1. To create a military symbol with default parameters, just create a `MilitarySymbol` instance:

```swift
let symbol = MilitarySymbol()
```



2. Customise your military symbol using one of the initialisers:

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

3. Initialise one with a valid SIDC code:

```swift
let symbol = try? MilitarySymbol(sidc: "10031004121211000000")
```

For each initialisation method, you can specify two additional options:

- `isCivilian` to use civilian frames.
- `isAlternateStatusAmplifiers` to use alternate status amplifiers.

### Symbols rendering

All source files for rendering symbols are in another dependency, [MilitarySymbologyAssets](https://github.com/sergpryimachuk/MilitarySymbologyAssets), which holds all the needed `svg` files. 

> [!WARNING]  
> Since we're using Asset Catalog with **3790** `svg` single scale images with preserving vector data, initial Xcode build might take some time [^1]. Ones all files have been cached the builds will be as usual.
>
> This is the main reason we keep MilitarySymbologyAssets separate - changes in MilitarySymbologyKit won't trigger re-compiling the Asset Catalog.

To display a symbol, just call the `makeView()` method, like so: 

```swift
struct ContentView: View {

    let symbol = MilitarySymbol()
    
    var body: some View {
        symbol.makeView()
    }
}
```

You can customise the size of the icon in `CGFloat` by providing the `CGFloat` size in `makeView(size: 200)`.

## Examples

You check how we use this package in the UI implementation - [MilitarySymbologyUI](https://github.com/sergpryimachuk/MilitarySymbologyUI.git).

[^1]:  On MacBook Pro 14, M1 Pro, with 16 GB RAM, it takes ~6 min.
