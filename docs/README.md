# About the encoding

## Vertical text

The sample data was modified in order to display correctly the vertical/sideways text. The original sample files did not take into consideration that:
- Vertical text could be written from top to bottom or from bottom to top
- Vertical text could appear in the left margin or in the right margin

### Changes that need to be applied to all transcriptions:

- Instead of using the value `@type="vertical"` for `<lg>` elements that contained vertical text, use `vertical` only when the text is written from top to bottom and `sideways` when is written from bottom to top.

- The `lg` element needs to appear according to the order of the contents in the layout. This means that if we have lines written vertically to the left of the main text, these lines need to be encoded BEFORE the main body; if the lines appear to the right of the main text, these need to be encoded AFTER the main `<lg>`.

- The same criterion of having one `<l>` for each line of text should be applied also for vertical text.