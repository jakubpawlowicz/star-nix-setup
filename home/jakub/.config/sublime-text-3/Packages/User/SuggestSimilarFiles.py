import re
import sublime
import sublime_plugin

class SuggestSimilarFiles(sublime_plugin.TextCommand):
  def run(self, edit):
    if "file_base_name" not in self.view.window().extract_variables():
        return

    file_base_name = self.view.window().extract_variables()["file_base_name"]

    self.focus_next_group()
    self.open_goto_overlay(file_base_name)

  def focus_next_group(self):
    active_group = self.view.window().active_group()
    num_groups = self.view.window().num_groups()
    next_group = active_group + 1 if active_group < num_groups - 1 else 0

    self.view.window().focus_group(next_group)

  def open_goto_overlay(self, file_base_name):
    similar_match = re.sub(r'spec|test', '', file_base_name)
    similar_match = re.sub(r'[_\-]', ' ', similar_match)
    similar_match = similar_match.strip()

    self.view.window().run_command("show_overlay", { "overlay": "goto", "text": similar_match })
