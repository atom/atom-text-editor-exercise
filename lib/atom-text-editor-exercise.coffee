AtomTextEditorExerciseView = require './atom-text-editor-exercise-view'
{CompositeDisposable} = require 'atom'

URI = "atom://atom-text-editor-exercise"

module.exports = AtomTextEditorExercise =
  subscriptions: null

  activate: (state) ->
    atom.workspace.addOpener (filePath) =>
      new AtomTextEditorExerciseView() if filePath is URI

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-text-editor-exercise:toggle': => @toggle()

    process.nextTick => @toggle()

  deactivate: ->
    @subscriptions?.dispose()

  toggle: ->
    atom.workspace.open(URI, split: 'right')
