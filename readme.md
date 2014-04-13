# Lightweight javascript table filter

Made for an internal tool, I didn't try to make it crossbrowser.

You don't need any library to use it. It's just javascript.

Here is a simple implementation [demo](http://roparz.me/play/light-javascript-table-filter/) and here is a [playground](http://cssdeck.com/labs/light-javascript-table-filter).

## How to use it?

Installation is very simple. Just add the script at the end of your html (just before `</body>`) and then call the `init` function:
```html
<body>
...
<script src="light-table-filter.min.js"></script>
<script> LightTableFilter.init() </script>
</body>
```

Your filtering input need to have the class `light-table-filter` and a data attribute with the class tables that you want to filter.

In the following example my input will filter all tables that have the class `order-table`.

```html
<input type="search" class="light-table-filter" data-table="order-table" />
<table class="order-table">...</table>
```

**That's all folks!**
