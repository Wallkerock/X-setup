from colormath.color_conversions import convert_color
from colormath.color_objects import LCHabColor,sRGBColor

def tohex(l,c,h):
  rgb = convert_color(LCHabColor(l,c,h),sRGBColor)
  clamp = sRGBColor(rgb.clamped_rgb_r, rgb.clamped_rgb_g, rgb.clamped_rgb_b)
  return clamp.get_rgb_hex()

def phic(e):
  return 0.61803398875**e*100

def print_terminal():
  print 'verbatim'
  print 'if has("nvim")'
  print '  let g:terminal_color_0 = "@guigry0"'
  print '  let g:terminal_color_1 = "@guired_"'
  print '  let g:terminal_color_2 = "@guigren"'
  print '  let g:terminal_color_3 = "@guigold"'
  print '  let g:terminal_color_4 = "@guiblue"'
  print '  let g:terminal_color_5 = "@guimgnt"'
  print '  let g:terminal_color_6 = "@guicyan"'
  print '  let g:terminal_color_7 = "@guigry3"'
  print '  let g:terminal_color_8 = "@guigry2"'
  print '  let g:terminal_color_9 = "@guired_"'
  print '  let g:terminal_color_10 = "@guigren"'
  print '  let g:terminal_color_11 = "@guigold"'
  print '  let g:terminal_color_12 = "@guiblue"'
  print '  let g:terminal_color_13 = "@guimgnt"'
  print '  let g:terminal_color_14 = "@guicyan"'
  print '  let g:terminal_color_15 = "@guigryc"'
  print 'elseif has("terminal")'
  print '  let g:terminal_ansi_colors = ['
  print '      \ "@guigry0",'
  print '      \ "@guired_",'
  print '      \ "@guigren",'
  print '      \ "@guigold",'
  print '      \ "@guiblue",'
  print '      \ "@guimgnt",'
  print '      \ "@guicyan",'
  print '      \ "@guigry3",'
  print '      \ "@guigry2",'
  print '      \ "@guired_",'
  print '      \ "@guigren",'
  print '      \ "@guigold",'
  print '      \ "@guiblue",'
  print '      \ "@guimgnt",'
  print '      \ "@guicyan",'
  print '      \ "@guigryc"'
  print '  \ ]'
  print 'endif'
  print 'endverbatim'

def print_dircolors():
  print 'auxfile shell/dircolors'
  print '                                  # file types displayed in normal text'
  print '                                  # ---------------------------------+----------'
  print 'FIFO                     36       # pipe                             | cyan'
  print 'EXEC                     32       # executable                       | green'
  print 'ORPHAN                   31       # broken symlink                   | red'
  print ''
  print ''
  print '                                  # file types displayed in bold text'
  print '                                  # ---------------------------------+----------'
  print 'DIR                   01          # directory                        | uncolored'
  print 'SOCK                  01;35       # socket                           | magenta'
  print 'DOOR                  01;35       # door                             | magenta'
  print 'BLK                   01;36       # block device driver              | cyan'
  print 'CHR                   01;36       # character device driver          | cyan'
  print ''
  print ''
  print '                                  # file types displayed with highlit background'
  print '                                  # ---------------------------------+----------'
  print 'SETUID                   30;45    # file that is setuid              | magenta'
  print 'SETGID                   30;43    # file that is setgid              | yellow'
  print 'CAPABILITY               30;41    # file with capability             | red'
  print 'OTHER_WRITABLE           30;46    # other-writable, non-sticky dir   | cyan'
  print 'STICKY                   30;44    # sticky, non-other-writable dir   | blue'
  print 'STICKY_OTHER_WRITABLE    30;42    # sticky, other-writable dir       | green'
  print ''
  print '# for symlinks, use text styling of target file'
  print 'LINK target'
  print ''
  print '# yellow archives'
  print '.tar   33'
  print '.tgz   33'
  print '.arc   33'
  print '.arj   33'
  print '.taz   33'
  print '.lha   33'
  print '.lz4   33'
  print '.lzh   33'
  print '.lzma  33'
  print '.tlz   33'
  print '.txz   33'
  print '.tzo   33'
  print '.t7z   33'
  print '.zip   33'
  print '.z     33'
  print '.dz    33'
  print '.gz    33'
  print '.lrz   33'
  print '.lz    33'
  print '.lzo   33'
  print '.xz    33'
  print '.zst   33'
  print '.tzst  33'
  print '.bz2   33'
  print '.bz    33'
  print '.tbz   33'
  print '.tbz2  33'
  print '.tz    33'
  print '.deb   33'
  print '.rpm   33'
  print '.jar   33'
  print '.war   33'
  print '.ear   33'
  print '.sar   33'
  print '.rar   33'
  print '.alz   33'
  print '.ace   33'
  print '.zoo   33'
  print '.cpio  33'
  print '.7z    33'
  print '.rz    33'
  print '.cab   33'
  print '.wim   33'
  print '.swm   33'
  print '.dwm   33'
  print '.esd   33'
  print ''
  print '# blue media files'
  print '.aac   34'
  print '.asf   34'
  print '.au    34'
  print '.avi   34'
  print '.bmp   34'
  print '.cgm   34'
  print '.dl    34'
  print '.emf   34'
  print '.flac  34'
  print '.flc   34'
  print '.fli   34'
  print '.flv   34'
  print '.gif   34'
  print '.gl    34'
  print '.jpeg  34'
  print '.jpg   34'
  print '.m2v   34'
  print '.m4a   34'
  print '.m4v   34'
  print '.mid   34'
  print '.midi  34'
  print '.mjpeg 34'
  print '.mjpg  34'
  print '.mka   34'
  print '.mkv   34'
  print '.mng   34'
  print '.mov   34'
  print '.mp3   34'
  print '.mp4   34'
  print '.mp4v  34'
  print '.mpc   34'
  print '.mpeg  34'
  print '.mpg   34'
  print '.nuv   34'
  print '.oga   34'
  print '.ogg   34'
  print '.ogm   34'
  print '.ogv   34'
  print '.ogx   34'
  print '.opus  34'
  print '.pbm   34'
  print '.pcx   34'
  print '.pgm   34'
  print '.png   34'
  print '.ppm   34'
  print '.qt    34'
  print '.ra    34'
  print '.rm    34'
  print '.rmvb  34'
  print '.spx   34'
  print '.svg   34'
  print '.svgz  34'
  print '.tga   34'
  print '.tif   34'
  print '.tiff  34'
  print '.vob   34'
  print '.wav   34'
  print '.webm  34'
  print '.wmv   34'
  print '.xbm   34'
  print '.xcf   34'
  print '.xpm   34'
  print '.xspf  34'
  print '.xwd   34'
  print '.yuv   34'
  print 'endauxfile'

def print_airline(name,bg):
  print 'auxfile autoload/airline/themes/%s_%s.vim' % (name, bg)
  print 'let g:airline#themes#%s_%s#palette = {}' % (name, bg)
  print ''
  print 'let s:gry0 = [ "@guigry0", @termgry0 ]'
  print 'let s:gry1 = [ "@guigry1", @termgry1 ]'
  print 'let s:gry3 = [ "@guigry3", @termgry3 ]'
  print 'let s:red_ = [ "@guired_", @termred_ ]'
  print 'let s:gren = [ "@guigren", @termgren ]'
  print 'let s:blue = [ "@guiblue", @termblue ]'
  print ''
  print 'let s:nrm1 = [ s:gry0[0] , s:gry3[0] , s:gry0[1] , s:gry3[1] ]'
  print 'let s:nrm2 = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]'
  print 'let s:insr = [ s:gry0[0] , s:gren[0] , s:gry0[1] , s:gren[1] ]'
  print 'let s:visl = [ s:gry0[0] , s:blue[0] , s:gry0[1] , s:blue[1] ]'
  print 'let s:rplc = [ s:gry0[0] , s:red_[0] , s:gry0[1] , s:red_[1] ]'
  print 'let s:inac = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]'
  print ''
  print 'let g:airline#themes#%s_%s#palette.normal =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:nrm1 , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.insert =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:insr , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.visual =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:visl , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.replace =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:rplc , s:nrm2 , s:nrm2 )'
  print ''
  print 'let g:airline#themes#%s_%s#palette.inactive =' % (name, bg)
  print '  \ airline#themes#generate_color_map( s:inac , s:inac , s:inac )'
  print ''
  print 'if !get(g:, "loaded_ctrlp", 0)'
  print '  finish'
  print 'endif'
  print ''
  print 'let g:airline#themes#%s_%s#palette.ctrlp =' % (name, bg)
  print '  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )'
  print 'endauxfile'

def print_lightline(name,bg):
  print 'auxfile autoload/lightline/colorscheme/%s_%s.vim' % (name, bg)
  print 'let s:gry0 = [ "@guigry0", @termgry0 ]'
  print 'let s:gry1 = [ "@guigry1", @termgry1 ]'
  print 'let s:gry3 = [ "@guigry3", @termgry3 ]'
  print 'let s:red_ = [ "@guired_", @termred_ ]'
  print 'let s:mgnt = [ "@guimgnt", @termmgnt ]'
  print 'let s:gren = [ "@guigren", @termgren ]'
  print 'let s:blue = [ "@guiblue", @termblue ]'
  print ''
  print 'let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,'
  print '          \ "replace": {} , "visual"  : {} , "tabline" : {} }'
  print ''
  print 'let s:p.normal.left     = [[ s:gry0, s:gry3 ], [ s:gry3, s:gry1 ]]'
  print 'let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]'
  print 'let s:p.normal.right    = [[ s:gry0, s:gry3 ], [ s:gry0, s:gry3 ]]'
  print ''
  print 'let s:p.inactive.left   = copy(s:p.normal.middle)'
  print 'let s:p.inactive.middle = copy(s:p.normal.middle)'
  print 'let s:p.inactive.right  = copy(s:p.normal.middle)'
  print ''
  print 'let s:p.insert.left     = [[ s:gry0, s:gren ]]'
  print 'let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]'
  print ''
  print 'let s:p.visual.left     = [[ s:gry0, s:blue ]]'
  print 'let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]'
  print ''
  print 'let s:p.replace.left    = [[ s:gry0, s:red_ ]]'
  print 'let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]'
  print ''
  print 'let s:p.tabline.left    = copy(s:p.normal.middle)'
  print 'let s:p.tabline.tabsel  = [[ s:gry0, s:gren ]]'
  print 'let s:p.tabline.right   = copy(s:p.normal.middle)'
  print ''
  print 'let s:p.normal.error    = [[ s:red_, s:gry0 ]]'
  print 'let s:p.normal.warning  = [[ s:mgnt, s:gry0 ]]'
  print ''
  print 'let g:lightline#colorscheme#%s_%s#palette =' % (name, bg)
  print '  \ lightline#colorscheme#flatten(s:p)'
  print 'endauxfile'

def print_shell(name,bg):
  print 'auxfile shell/%s_%s.sh' % (name, bg)
  print '#!/bin/sh'
  print '# base16-shell (https://github.com/chriskempson/base16-shell)'
  print '# Base16 Shell template by Chris Kempson (http://chriskempson.com)'
  print '# %s_%s scheme by nightsense (https://github.com/nightsense/cosmic_latte)' % (name, bg)
  print ''
  print 'color00="@guigry0" # Base 00 - Black'
  print 'color01="@guired_" # Base 08 - Red'
  print 'color02="@guigren" # Base 0B - Green'
  print 'color03="@guigold" # Base 0A - Yellow'
  print 'color04="@guiblue" # Base 0D - Blue'
  print 'color05="@guimgnt" # Base 0E - Magenta'
  print 'color06="@guicyan" # Base 0C - Cyan'
  print 'color07="@guigry3" # Base 05 - White'
  print 'color08="@guigry1" # Base 03 - Bright Black'
  print 'color09=$color01 # Base 08 - Bright Red'
  print 'color10=$color02 # Base 0B - Bright Green'
  print 'color11=$color03 # Base 0A - Bright Yellow'
  print 'color12=$color04 # Base 0D - Bright Blue'
  print 'color13=$color05 # Base 0E - Bright Magenta'
  print 'color14=$color06 # Base 0C - Bright Cyan'
  print 'color15="@guigryc" # Base 07 - Bright White'
  print 'color_foreground="@guigry3" # Base 05'
  print 'color_background="@guigry0" # Base 00'
  print ''
  print 'if [ -n "$TMUX" ]; then'
  print "  # Tell tmux to pass the escape sequences through"
  print "  # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)"
  print "  put_template() { printf '\\033Ptmux;\\033\\033]4;%d;rgb:%s\\033\\033\\\\\\033\\\\' $@; }"
  print "  put_template_var() { printf '\\033Ptmux;\\033\\033]%d;rgb:%s\\033\\033\\\\\\033\\\\' $@; }"
  print "  put_template_custom() { printf '\\033Ptmux;\\033\\033]%s%s\\033\\033\\\\\\033\\\\' $@; }"
  print 'elif [ "${TERM%%[-.]*}" = "screen" ]; then'
  print "  # GNU screen (screen, screen-256color, screen-256color-bce)"
  print "  put_template() { printf '\\033P\\033]4;%d;rgb:%s\\007\\033\\\\' $@; }"
  print "  put_template_var() { printf '\\033P\\033]%d;rgb:%s\\007\\033\\\\' $@; }"
  print "  put_template_custom() { printf '\\033P\\033]%s%s\\007\\033\\\\' $@; }"
  print 'elif [ "${TERM%%-*}" = "linux" ]; then'
  print '  put_template() { [ $1 -lt 16 ] && printf "\\e]P%x%s" $1 $(echo $2 | sed "s/\\///g"); }'
  print "  put_template_var() { true; }"
  print "  put_template_custom() { true; }"
  print "else"
  print "  put_template() { printf '\\033]4;%d;rgb:%s\\033\\\\' $@; }"
  print "  put_template_var() { printf '\\033]%d;rgb:%s\\033\\\\' $@; }"
  print "  put_template_custom() { printf '\\033]%s%s\\033\\\\' $@; }"
  print "fi"
  print ''
  print '# 16 color space'
  print 'put_template 0  $color00'
  print 'put_template 1  $color01'
  print 'put_template 2  $color02'
  print 'put_template 3  $color03'
  print 'put_template 4  $color04'
  print 'put_template 5  $color05'
  print 'put_template 6  $color06'
  print 'put_template 7  $color07'
  print 'put_template 8  $color08'
  print 'put_template 9  $color09'
  print 'put_template 10 $color10'
  print 'put_template 11 $color11'
  print 'put_template 12 $color12'
  print 'put_template 13 $color13'
  print 'put_template 14 $color14'
  print 'put_template 15 $color15'
  print ''
  print '# foreground / background / cursor color'
  print 'if [ -n "$ITERM_SESSION_ID" ]; then'
  print '  # iTerm2 proprietary escape codes'
  print '  put_template_custom Pg @guigry3 # foreground'
  print '  put_template_custom Ph @guigry0 # background'
  print '  put_template_custom Pi @guigry3 # bold color'
  print '  put_template_custom Pj @guiblue # selection color'
  print '  put_template_custom Pk @guigry0 # selected text color'
  print '  put_template_custom Pl @guigry3 # cursor'
  print '  put_template_custom Pm @guigry0 # cursor text'
  print 'else'
  print '  put_template_var 10 $color_foreground'
  print '  if [ "$BASE16_SHELL_SET_BACKGROUND" != false ]; then'
  print '    put_template_var 11 $color_background'
  print '    if [ "${TERM%%-*}" = "rxvt" ]; then'
  print '      put_template_var 708 $color_background # internal border (rxvt)'
  print '    fi'
  print '  fi'
  print '  put_template_custom 12 ";7" # cursor (reverse video)'
  print 'fi'
  print ''
  print '# clean up'
  print 'unset -f put_template'
  print 'unset -f put_template_var'
  print 'unset -f put_template_custom'
  print 'unset color00'
  print 'unset color01'
  print 'unset color02'
  print 'unset color03'
  print 'unset color04'
  print 'unset color05'
  print 'unset color06'
  print 'unset color07'
  print 'unset color08'
  print 'unset color09'
  print 'unset color10'
  print 'unset color11'
  print 'unset color12'
  print 'unset color13'
  print 'unset color14'
  print 'unset color15'
  print 'unset color_foreground'
  print 'unset color_background'
  print 'endauxfile'

def print_fish(name,bg):
  print 'auxfile shell/%s_%s.fish' % (name, bg)
  print '# %s_%s fish shell theme by nightsense (https://github.com/nightsense/cosmic_latte)' % (name, bg)
  print ''
  print '# normal text'
  print 'set fish_color_host              @guigry3'
  print 'set fish_color_normal            @guigry3'
  print 'set fish_pager_color_completion  @guigry3'
  print 'set fish_pager_color_description @guigry3'
  print ''
  print '# muted text'
  print 'set fish_color_autosuggestion    @guigry2'
  print 'set fish_color_comment           @guigry2'
  print ''
  print '# reverse muted'
  print 'set fish_pager_color_progress    @guigry0 --background=@guigry2'
  print ''
  print '# underlined text'
  print 'set fish_color_valid_path        --underline'
  print ''
  print '# highlit text'
  print 'set fish_color_match             --background=@guigryp'
  print 'set fish_color_search_match      --background=@guigryp'
  print 'set fish_color_selection         --background=@guigryp'
  print ''
  print '# red errors/warnings'
  print 'set fish_color_cancel            @guired_'
  print 'set fish_color_cwd_root          @guired_'
  print 'set fish_color_error             @guired_'
  print ''
  print '# gold special elements'
  print 'set fish_color_redirection       @guigold'
  print 'set fish_color_escape            @guigold'
  print 'set fish_color_operator          @guigold'
  print 'set fish_color_end               @guigold'
  print ''
  print '# green commands/status'
  print 'set fish_color_command           @guigren'
  print 'set fish_color_cwd               @guigren'
  print 'set fish_color_user              @guigren'
  print ''
  print '# cyan parameters'
  print 'set fish_color_param             @guicyan'
  print ''
  print '# blue quoted strings'
  print 'set fish_color_quote             @guiblue'
  print ''
  print '# magenta pager name match'
  print 'set fish_pager_color_prefix      @guimgnt'
  print 'endauxfile'

chrom_light = phic(1.25)
chrom_spell = phic(0.00)
chrom_dark_ = phic(2.50)

hexgry0_lt = tohex( phic(0.000) , phic(3.750) , 050.875 )
hexgry1_lt = tohex( phic(0.191) , phic(4.688) , 080.875 )
hexgryp_lt = tohex( phic(0.666) , phic(5.000) , 110.875 )
hexgry2_lt = tohex( phic(1.520) , phic(5.000) , 230.875 )
hexgry3_lt = tohex( phic(2.058) , phic(5.000) , 230.875 )
hexgryc_lt = tohex( phic(2.543) , phic(5.000) , 230.875 )

hexgry0_dk = tohex( phic(3.750) , phic(5.625) , 243.367 )
hexgry1_dk = tohex( phic(3.141) , phic(5.156) , 248.367 )
hexgryp_dk = tohex( phic(2.095) , phic(5.000) , 253.367 )
hexgry2_dk = tohex( phic(1.090) , phic(5.000) , 273.367 )
hexgry3_dk = tohex( phic(0.691) , phic(5.000) , 273.367 )
hexgryc_dk = tohex( phic(0.425) , phic(5.000) , 273.367 )

hexred__lt = tohex( phic(1.493) , chrom_light , 020.875 )
hexgold_lt = tohex( phic(1.494) , chrom_light , 080.875 )
hexgren_lt = tohex( phic(1.519) , chrom_light , 140.875 )
hexcyan_lt = tohex( phic(1.658) , chrom_light , 200.875 )
hexblue_lt = tohex( phic(1.597) , chrom_light , 260.875 )
hexmgnt_lt = tohex( phic(1.517) , chrom_light , 320.875 )

hexsrch_lt = tohex( phic(0.374) , chrom_light , 080.875 )
hexsprd_lt = tohex( phic(1.120) , chrom_spell , 020.875 )
hexspbl_lt = tohex( phic(1.198) , chrom_spell , 260.875 )
hexspcy_lt = tohex( phic(1.244) , chrom_spell , 200.875 )
hexspmg_lt = tohex( phic(1.138) , chrom_spell , 320.875 )

hexred__dk = tohex( phic(1.080) , chrom_dark_ , 003.367 )
hexgold_dk = tohex( phic(1.071) , chrom_dark_ , 063.367 )
hexgren_dk = tohex( phic(1.086) , chrom_dark_ , 123.367 )
hexcyan_dk = tohex( phic(1.097) , chrom_dark_ , 183.367 )
hexblue_dk = tohex( phic(1.097) , chrom_dark_ , 243.367 )
hexmgnt_dk = tohex( phic(1.094) , chrom_dark_ , 303.367 )

print 'Author:          nightsense'
print 'Maintainer:      nightsense'
print 'License:         MIT'
print 'Full name:       cosmic_latte'
print 'Short name:      cosmic_latte'
print 'Terminal Colors: 256'
print ''
print 'Background: light'
print 'Color:      gry0 %s ~' % hexgry0_lt
print 'Color:      gry1 %s ~' % hexgry1_lt
print 'Color:      gry2 %s ~' % hexgry2_lt
print 'Color:      gry3 %s ~' % hexgry3_lt
print 'Color:      gryc %s ~' % hexgryc_lt
print 'Color:      srch %s ~' % hexsrch_lt
print 'Color:      grys %s ~' % hexgryc_lt
print 'Color:      gryp %s ~' % hexgryp_lt
print 'Color:      sprd %s ~' % hexsprd_lt
print 'Color:      spbl %s ~' % hexspbl_lt
print 'Color:      spcy %s ~' % hexspcy_lt
print 'Color:      spmg %s ~' % hexspmg_lt
print 'Color:      red_ %s ~' % hexred__lt
print 'Color:      gold %s ~' % hexgold_lt
print 'Color:      gren %s ~' % hexgren_lt
print 'Color:      cyan %s ~' % hexcyan_lt
print 'Color:      blue %s ~' % hexblue_lt
print 'Color:      mgnt %s ~' % hexmgnt_lt
print 'Include:    _common.colortemplate'
print ''
print_terminal()
print ''
print_airline('cosmic_latte','light')
print ''
print_lightline('cosmic_latte','light')
print ''
print_shell('cosmic_latte','light')
print ''
print_fish('cosmic_latte','light')
print ''
print 'Background: dark'
print 'Color:      gry0 %s ~' % hexgry0_dk
print 'Color:      gry1 %s ~' % hexgry1_dk
print 'Color:      gry2 %s ~' % hexgry2_dk
print 'Color:      gry3 %s ~' % hexgry3_dk
print 'Color:      gryc %s ~' % hexgryc_dk
print 'Color:      srch %s ~' % hexgold_dk
print 'Color:      grys %s ~' % hexgry0_dk
print 'Color:      gryp %s ~' % hexgryp_dk
print 'Color:      sprd %s ~' % hexred__dk
print 'Color:      spbl %s ~' % hexblue_dk
print 'Color:      spcy %s ~' % hexcyan_dk
print 'Color:      spmg %s ~' % hexmgnt_dk
print 'Color:      red_ %s ~' % hexred__dk
print 'Color:      gold %s ~' % hexgold_dk
print 'Color:      gren %s ~' % hexgren_dk
print 'Color:      cyan %s ~' % hexcyan_dk
print 'Color:      blue %s ~' % hexblue_dk
print 'Color:      mgnt %s ~' % hexmgnt_dk
print 'Include:    _common.colortemplate'
print ''
print_terminal()
print ''
print_airline('cosmic_latte','dark')
print ''
print_lightline('cosmic_latte','dark')
print ''
print_shell('cosmic_latte','dark')
print ''
print_fish('cosmic_latte','dark')

print ''
print_dircolors()
