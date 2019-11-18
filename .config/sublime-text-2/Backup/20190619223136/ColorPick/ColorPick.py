import sublime
import sublime_plugin
import subprocess
import os

package_dir = os.path.dirname(os.path.realpath(__file__))
picker_path = os.path.join(package_dir, 'bin', 'colorpick')

def is_valid_hex_color(s):
    if len(s) not in (3, 6):
        return False
    try:
        return 0 <= int(s, 16) <= 0xffffff
    except ValueError:
        return False

class ColorPickCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        sel = view.sel()
        start_color = None

        # make sure color picker binary is executable
        if not os.access(picker_path, os.X_OK):
            os.chmod(picker_path, 755)

        # get the currently selected color - if any
        if len(sel) > 0:
            selected = view.substr(view.word(sel[0])).strip()
            if selected.startswith('#'):
                selected = selected[1:]

            if is_valid_hex_color(selected):
                start_color = selected

        # get new color from picker
        args = [picker_path]
        if start_color:
            args.append('-startColor')
            args.append(start_color)
        proc = subprocess.Popen(args, stdout=subprocess.PIPE)
        color = proc.communicate()[0].decode('utf-8')

        if color:
            # upcase color if option set
            user_settings = sublime.load_settings("Preferences.sublime-settings")
            if user_settings.get("color_pick_upcase", False):
                color = color.upper()
            # replace all regions with color
            for region in sel:
                word = view.word(region)
                # if the selected word is a valid color, replace it
                if is_valid_hex_color(view.substr(word)):
                    # include '#' if present
                    if view.substr(word.a - 1) == '#':
                        word = sublime.Region(word.a - 1, word.b)
                    # replace
                    self.view.replace(edit, word, '#' + color)
                # otherwise just replace the selected region
                else:
                    self.view.replace(edit, region, '#' + color)
