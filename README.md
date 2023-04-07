# android_signature

Android signature provider for Flutter.

## Install Started

1. Add this to your **pubspec.yaml** file:

```yaml
dependencies:
  android_signature: ^0.0.2
```

2. Install it

```bash
$ flutter packages get
```

## Normal usage

```dart
final signature = await AndroidSignature.signature();
// signature = '33:F2:99:92:58:3A:B6:EB:AB:F0:99:A3:27:E3:98:FA:C2:10:82:30'

```

## Feature
- [x] android signature