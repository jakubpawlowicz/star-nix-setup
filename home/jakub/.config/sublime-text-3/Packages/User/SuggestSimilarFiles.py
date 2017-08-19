import re
import sublime
import sublime_plugin

class SuggestSimilarFiles(sublime_plugin.TextCommand):
  def run(self, edit):
    file_base_name = self.view.window().extract_variables()["file_base_name"]
    similar_match = re.sub(r'spec|test', '', file_base_name)
    similar_match = re.sub(r'[_\-]', ' ', similar_match)
    similar_match = similar_match.strip()

    self.view.window().run_command("show_overlay", { "overlay": "goto", "text": similar_match })
