# Linear Partition [![Build Status](https://travis-ci.org/jonathanong/linear-partition.png)](https://travis-ci.org/jonathanong/linear-partition)

This is just a component and vanilla Javascript version of the original repo at https://github.com/crispymtn/linear-partition.

Further reading:

- https://news.ycombinator.com/item?id=6198400
- http://www.crispymtn.com/stories/the-algorithm-for-a-perfectly-balanced-photo-gallery

## Changes

- Remove underscore.js dependency
- Export to `module.exports`
- Use `->` vs. `=>` for definition to avoid `var _this = this`
- Fixed an issue with the original algorithm.
  When partitioning too many times, there's a chance the original algorithm returns an empty partition.
  In the CoffeeScript version, it throws.
  Thus, this version simply lowers the number of partitions until it doesn't throw.
  For practical purposes, this doesn't break anything.

## API

```js
var part = require('linear-partition')
var parts = part([9,2,6,3,8,5,8,1,7,3,4], 3)

// parts === [[9,2,6,3],[8,5,8],[1,7,3,4]]
```

## License

The MIT License (MIT)

Copyright (c) 2013 Jonathan Ong me@jongleberry.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.