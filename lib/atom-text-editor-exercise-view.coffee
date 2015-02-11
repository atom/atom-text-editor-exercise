Template = """
 HEAY OK
"""

class AtomTextEditorExerciseView extends HTMLElement
  createdCallback: ->
    @innerHTML = Template

  getTitle: ->
    'TextEditor Exercise'

module.exports = document.registerElement 'atom-text-editor-exercise', prototype: AtomTextEditorExerciseView.prototype
