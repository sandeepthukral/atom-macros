# All functions defined on "this" are available as atom commands.
#
# If the `toolbar` package is installed, toolbar icons are automatically generated.
#
# Set these properties of your method to configure the icons:
# * icon - name of the icon (Possible prepended with 'ion-' or 'fa-')
# * title - The toolbar title
# * hideIcon - set to true to hide the icon from the toolbar
#

@helloConsole = ->
  console.log 'Hello console'
  alert('Watch your console! (open with alt-cmd-i)')

@helloConsole.icon = 'ion-clipboard' # icon from https://atom.io/packages/toolbar#supported-icon-sets
@helloConsole.title = 'Hello Console!'



` // If you prefer Javascript, write it between backticks.
this.helloFromJS = function() {
  console.log('Hello from JS');
  alert('Watch your console! (open with alt-cmd-i)');
}
this.helloFromJS.hideIcon = true; // don't show this on the toolbar
`

# You can also call external commands:

@runShellCommand = ->
  child = exec 'ls', (error, stdout, stderr) ->
    console.log "stdout: #{stdout}"
    console.log "stderr: #{stderr}"
    if error?
      console.log "exec error: #{error}"

@runShellCommand.icon = 'fa-pied-piper-alt'


@openBrowser = ->
  open 'https://atom.io/packages/atom-macros'

@openBrowser.icon = 'ion-earth'


@openThisFile = ->
  dispatchWorkspaceCommand 'macros:edit-macros'

@openThisFile.title = 'Edit Macros'