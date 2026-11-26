# Homebrew tap for my toolbox

## Quick start

```sh
brew tap gregavrbancic/toolbox
brew install --cask proxsign
```

## Packages

| Cask | Description |
| --- | --- |
| [proxsign](https://proxsign.setcce.si/proXSignCustomerPages/index2.html) | SETCCE proXSign, digital signing component for Slovenian e-government services |

To update proXSign, bump `version` and `sha256` in `Casks/proxsign.rb`
(`shasum -a 256 SETCCE_proXSign_<version>.pkg`).

## Disclaimer

I am not the author of the software available via this tap. The upstream
installer package is not code-signed by its vendor.
