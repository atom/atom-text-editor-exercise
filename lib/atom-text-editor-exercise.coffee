AtomTextEditorExerciseView = require './atom-text-editor-exercise-view'
{CompositeDisposable} = require 'atom'

URI = "atom://atom-text-editor-exercise"

module.exports = AtomTextEditorExercise =
  subscriptions: null

  activate: (state) ->
    atom.workspace.addOpener (filePath) =>
      new AtomTextEditorExerciseView() if filePath is URI

    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-text-editor-exercise:toggle': => @toggle()

    # Always show the pane for now. Need to open in a nextTick or things will break
    process.nextTick => @toggle()

  deactivate: ->
    @subscriptions?.dispose()

  toggle: ->
    atom.workspace.open(URI, split: 'right')
