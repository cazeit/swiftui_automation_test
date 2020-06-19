# swiftui_automation_test

<h1>SwiftUI Automation Test-Application TDSoftware</h1>

<h2>Controls</h2>
In this application you can find a: <ul><li>Text-input-field (editText/textField)</li><li>Toggle</li><li>Slider</li><li>Button</li><li>TableView</li><li>TabBar</li></ul>
to test the UI Automation. While researching I could not find a better way than using accessibility tags, like in the current DENT project.

<h2>Accessibility Tags</h2>

Note that there are sometimes labels/TextFields next to the controls, that have a tag as well.
<table style="width:100%">
  <tr>
    <th>Control</th>
    <th>Accessibility Tag</th> 
    <th>Accessibility Tag for the label next to it</th>
  </tr>
  <tr>
    <td>Text-Input-Field</td>
    <td>text_field</td> 
    <td>text_field_label</td>
  </tr>
  <tr>
    <td>Toggle</td>
    <td>toggle</td>
    <td>toggle_label</td>
  </tr>
    <tr>
    <td>Slider</td>
    <td>slider</td>
    <td>slider_label</td>
  </tr>
  <tr>
    <td>Button</td>
    <td>button</td> 
    <td>button_label</td>
  </tr>
  <tr>
    <td>First Tab in TabBar</td>
    <td>first_tab</td>
  </tr>
  <tr>
    <td>Second Tab in TabBar</td>
    <td>second_tab</td> 
  </tr>
  <tr>
    <td>List on Second Tab</td>
    <td>list</td>
  </tr>
  <tr>
    <td>Text on Clicked List View</td>
    <td>list_selected_label</td> 
  </tr>
</table>
