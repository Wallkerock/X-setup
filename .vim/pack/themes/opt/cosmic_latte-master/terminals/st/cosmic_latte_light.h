/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#fff8e7", /* black   */
  [1] = "#c44756", /* red     */
  [2] = "#1f8332", /* green   */
  [3] = "#916d03", /* yellow  */
  [4] = "#0075c9", /* blue    */
  [5] = "#a154ae", /* magenta */
  [6] = "#007f8a", /* cyan    */
  [7] = "#485a62", /* white   */

  /* 8 bright colors */
  [8]  = "#63757e", /* black   */
  [9]  = "#c44756", /* red     */
  [10] = "#1f8332", /* green   */
  [11] = "#916d03", /* yellow  */
  [12] = "#0075c9", /* blue    */
  [13] = "#a154ae", /* magenta */
  [14] = "#007f8a", /* cyan    */
  [15] = "#364850", /* white   */

  /* special colors */
  [256] = "#fff8e7", /* background */
  [257] = "#485a62", /* foreground */
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
