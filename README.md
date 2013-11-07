Generate locale
===============

This is a wercker step that generates and install locale you specified.

## Options

- `locale`: (required) The name of locale to generate. Example: en_US or hu_HU.UTF-8.
- `charset`: (required) The locale's charset. Example: UTF-8 or ISO-8859-1.

## Example

    - add-locale:
        locale: en_US
        charset: ISO-8859-1
