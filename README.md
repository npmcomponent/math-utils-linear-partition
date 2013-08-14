# Linear Partition [![Build Status](https://travis-ci.org/jonathanong/linear-partition.png)](https://travis-ci.org/jonathanong/linear-partition)

This is just a component and vanilla Javascript version of the original repo at https://github.com/crispymtn/linear-partition.

Further reading:

- https://news.ycombinator.com/item?id=6198400
- http://www.crispymtn.com/stories/the-algorithm-for-a-perfectly-balanced-photo-gallery

## Changes

- Remove underscore.js dependency
- Export to `module.exports`
- Use `->` vs. `=>` for definition to avoid `var _this = this`

## API

```js
var part = require('linear-partition')
var parts = part([9,2,6,3,8,5,8,1,7,3,4], 3)

# parts === [[9,2,6,3],[8,5,8],[1,7,3,4]]
```

## License

MIT, apparently.