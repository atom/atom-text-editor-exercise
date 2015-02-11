Template = """
  <h1>Exercise the TextEditor HTML</h1>

  <p>Vanilla</p>

  <atom-text-editor>
    Some text
  </atom-text-editor>

  <p>With <code>gutter-hidden</code> attribute</p>

  <atom-text-editor gutter-hidden>
    This one has no gutter
  </atom-text-editor>

  <p>With <code>mini</code> attribute</p>

  <atom-text-editor mini>
    Some text
  </atom-text-editor>
"""

class AtomTextEditorExerciseView extends HTMLElement
  createdCallback: ->
    @innerHTML = Template

  getTitle: ->
    'TextEditor Exercise'

module.exports = document.registerElement 'atom-text-editor-exercise', prototype: AtomTextEditorExerciseView.prototype
