/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#202a31", /* black   */
  [1] = "#c17b8d", /* red     */
  [2] = "#7d9761", /* green   */
  [3] = "#b28761", /* yellow  */
  [4] = "#5496bd", /* blue    */
  [5] = "#9b85bb", /* magenta */
  [6] = "#459d90", /* cyan    */
  [7] = "#abb0c0", /* white   */

  /* 8 bright colors */
  [8]  = "#898f9e", /* black   */
  [9]  = "#c17b8d", /* red     */
  [10] = "#7d9761", /* green   */
  [11] = "#b28761", /* yellow  */
  [12] = "#5496bd", /* blue    */
  [13] = "#9b85bb", /* magenta */
  [14] = "#459d90", /* cyan    */
  [15] = "#c5cbdb", /* white   */

  /* special colors */
  [256] = "#202a31", /* background */
  [257] = "#abb0c0", /* foreground */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor
 */
static unsigned int defaultfg = 257;
static unsigned int defaultbg = 256;
static unsigned int defaultcs = 257;

/*
 * Colors used, when the specific fg == defaultfg. So in reverse mode this
 * will reverse too. Another logic would only make the simple feature too
 * complex.
 */
static unsigned int defaultitalic = 7;
static unsigned int defaultunderline = 7;
