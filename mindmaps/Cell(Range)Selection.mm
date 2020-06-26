<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Cell (range)&#xa;selection" FOLDED="false" ID="ID_1488684808" CREATED="1587502301680" MODIFIED="1587575132181" COLOR="#ffffff" BACKGROUND_COLOR="#990000" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The definition of a table cell (range) selection.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Attributes" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" POSITION="right" ID="ID_1648012190" CREATED="1587502549418" MODIFIED="1587808494341" COLOR="#000000" BACKGROUND_COLOR="#00ff00" STYLE="bubble">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some selection attributes :-D
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Orientation" ID="ID_1608764540" CREATED="1587502560229" MODIFIED="1587504031375" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Each Selection must specify the orientation of the cell(s) that should be selected.
    </p>
    <p>
      
    </p>
    <p>
      <b>Horizontal orientation</b>
    </p>
    <p>
      This is the default. It means columns are vertically and rows are horizontally.
    </p>
    <p>
      
    </p>
    <p>
      <b>Vertical orientation</b>
    </p>
    <p>
      It means columns are horizontally and rows are vertically.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1866671625" CREATED="1587808768293" MODIFIED="1587808928665" ICON_SIZE="12.0 pt" COLOR="#666666" STYLE="bubble"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">- Horizontal </font>
    </p>
    <p>
      <font face="Consolas">- Vertical</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Contain headers" ID="ID_516201268" CREATED="1587502578957" MODIFIED="1587808728659" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A selection can contain headers or not.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="StartPoint" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" POSITION="right" ID="ID_861472059" CREATED="1587502666983" MODIFIED="1587808484863" COLOR="#000000" BACKGROUND_COLOR="#00ff00" STYLE="bubble">
<edge COLOR="#00cc00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The start point is used to mark the start of a selection.
    </p>
    <p>
      
    </p>
    <p>
      If a selection condition is defined the start point means &gt; start search for a matching cell at this point.
    </p>
    <p>
      <br/>
      If no start point is defined, a relation must be used. If no start point and no relation is defined, column and row (both) with index 0 is used
    </p>
    <p>
      
    </p>
    <p>
      The start point is used as static value if no SeachCondition is defined
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Row" ID="ID_1008562575" CREATED="1587502694643" MODIFIED="1587504300853" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The index of the start point row. -1 means undefined
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Column" ID="ID_1761977904" CREATED="1587502704051" MODIFIED="1587504359573" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The index of the start point column. -1 means undefined
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Search condition" LOCALIZED_STYLE_REF="default" ID="ID_1210458280" CREATED="1587502666983" MODIFIED="1587575047991" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The start point is used to mark the start of a selection.
    </p>
    <p>
      
    </p>
    <p>
      If a selection condition is defined the start point means &gt; start search for a matching cell at this point.
    </p>
    <p>
      <br/>
      If no start point is defined, a relation must be used. If no start point and no relation is defined, column and row (both) with index 0 is used
    </p>
  </body>
</html>
</richcontent>
<node TEXT="cell must match..." ID="ID_1845295965" CREATED="1587502694643" MODIFIED="1587575093501" LINK="03_Content-depending-cell-selection.mm" STYLE="bubble">
<font SIZE="11"/>
</node>
</node>
<node TEXT="Relation" ID="ID_930546328" CREATED="1587502704051" MODIFIED="1587575502710" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The cell selection start point is related to an other defined mapping reference
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Reference" ID="ID_1898886643" CREATED="1587502560229" MODIFIED="1587575542312" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Each Selection must specify the orientation of the cell(s) that should be selected.
    </p>
    <p>
      
    </p>
    <p>
      <b>Horizontal orientation</b>
    </p>
    <p>
      This is the default. It means columns are vertically and rows are horizontally.
    </p>
    <p>
      
    </p>
    <p>
      <b>Vertical orientation</b>
    </p>
    <p>
      It means columns are horizontally and rows are vertically.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Offset" ID="ID_358526653" CREATED="1587502560229" MODIFIED="1587575574008" BACKGROUND_COLOR="#cccccc" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Each Selection must specify the orientation of the cell(s) that should be selected.
    </p>
    <p>
      
    </p>
    <p>
      <b>Horizontal orientation</b>
    </p>
    <p>
      This is the default. It means columns are vertically and rows are horizontally.
    </p>
    <p>
      
    </p>
    <p>
      <b>Vertical orientation</b>
    </p>
    <p>
      It means columns are horizontally and rows are vertically.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Rows" ID="ID_1854334440" CREATED="1587579133463" MODIFIED="1587808648480" STYLE="bubble"/>
<node TEXT="Columns" ID="ID_775787116" CREATED="1587802477693" MODIFIED="1587808652190" STYLE="bubble"/>
<node TEXT="Horizontal relation" ID="ID_195533280" CREATED="1587802477693" MODIFIED="1587823043967" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The selection of the related mapping reference can point to multiple cells.<br/>They are always handled as table data.<br/>
    </p>
    <p>
      The offset calculation must start at a single cell. So you can define here<br/>in combination with the vertical relation:
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <b>Top-<font color="#00cc00">Left</font></b><font color="#000000">: the offset is calculated starting at the most top left cell of the related mapping reference selection</font>
      </li>
      <li>
        <b>Top-<font color="#00cc00">Right</font></b><font color="#000000">: the offset is calculated starting at the most top right cell of the related mapping reference selection</font>
      </li>
      <li>
        <b>Bottom-<font color="#00cc00">Left</font></b><font color="#000000">: the offset is calculated starting at the most bottom left cell of the related mapping reference selection</font>
      </li>
      <li>
        <b>Bottom-<font color="#00cc00">Right</font></b><font color="#000000">: the offset is calculated starting at the most bottom right cell of the related mapping reference selection</font>
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node ID="ID_1520163850" CREATED="1587808768293" MODIFIED="1587823230127" ICON_SIZE="12.0 pt" COLOR="#666666" STYLE="bubble"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">- Left</font>
    </p>
    <p>
      <font face="Consolas">- Right</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="Vertical relation" ID="ID_927290202" CREATED="1587802477693" MODIFIED="1587823217511" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The selection of the related mapping reference can point to multiple cells.<br/>They are always handled as table data.<br/>
    </p>
    <p>
      The offset calculation must start at a single cell. So you can define here<br/>in combination with the horizontal relation:
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <b><font color="#00cc00">Top</font>-<font color="#000000">Left</font></b><font color="#000000">: the offset is calculated starting at the most top left cell of the related mapping reference selection</font>
      </li>
      <li>
        <b><font color="#00cc00">Top</font>-<font color="#000000">Right</font></b><font color="#000000">: the offset is calculated starting at the most top right cell of the related mapping reference selection</font>
      </li>
      <li>
        <b><font color="#00cc00">Bottom</font>-<font color="#000000">Left</font></b><font color="#000000">: the offset is calculated starting at the most bottom left cell of the related mapping reference selection</font>
      </li>
      <li>
        <b><font color="#00cc00">Bottom</font>-<font color="#000000">Right</font></b><font color="#000000">: the offset is calculated starting at the most bottom right cell of the related mapping reference selection</font>
      </li>
    </ul>
  </body>
</html>

</richcontent>
<node ID="ID_1611264287" CREATED="1587808768293" MODIFIED="1587822180460" ICON_SIZE="12.0 pt" COLOR="#666666" STYLE="bubble"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">- Top </font>
    </p>
    <p>
      <font face="Consolas">- Bottom</font>
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Rows      ." LOCALIZED_STYLE_REF="AutomaticLayout.level,2" POSITION="right" ID="ID_945391400" CREATED="1587502748155" MODIFIED="1587808458487" COLOR="#000000" BACKGROUND_COLOR="#00ff00" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#000000">
<edge COLOR="#000000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some informations about the rows that should be selected
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Amount" ID="ID_597885671" CREATED="1587502755262" MODIFIED="1587504523634" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The exact amount of rows that should be selected, or -1 if no exact amount is known
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Max. amount" ID="ID_512400814" CREATED="1587502763458" MODIFIED="1587808373748" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The maximum amount of rows that should be selected, or -1 if there is no max amount.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Ignore conditions" ID="ID_608995601" CREATED="1587502779370" MODIFIED="1587809098515" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Zero or more ignore conditions. If a condition matches, the whole row is ignored
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Ignore condition" ID="ID_1705524473" CREATED="1587808974827" MODIFIED="1587811490736" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Ignore row if it&#xa;    (not)&#xa;    { contains | starts with  | ends with | is }&#xa;a&#xa;    { specific value or format }&#xa;at&#xa;    { any element/column |&#xa;      elements/columns, defined by index(es) |&#xa;      all elements/columns }" ID="ID_1539749244" CREATED="1587811188130" MODIFIED="1587813786282" LINK="03_Content-depending-cell-selection.mm" COLOR="#666666" STYLE="bubble" MAX_WIDTH="12.0 cm">
<font NAME="DejaVu Sans Mono" SIZE="10"/>
</node>
</node>
</node>
<node TEXT="End conditions   ." ID="ID_1155142810" CREATED="1587502790326" MODIFIED="1587814105148" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      One or more end conditions. If a condition matches, the whole row is ignored and row parsing is finished at this point. It marks the end point of selectable rows. The End conditions are only used if no fixed row Amount is defined.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="End condition  -" ID="ID_699522806" CREATED="1587808974827" MODIFIED="1587813975727" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Stop reading next rows including current if it&#xa;    (not)&#xa;    { contains | starts with  | ends with | is }&#xa;a&#xa;    { specific value or format }&#xa;at&#xa;    { any element/column |&#xa;      elements/columns, defined by index(es) |&#xa;      all elements/columns }" ID="ID_768086049" CREATED="1587811188130" MODIFIED="1587813832223" LINK="03_Content-depending-cell-selection.mm" COLOR="#666666" STYLE="bubble" MAX_WIDTH="12.0 cm">
<font NAME="DejaVu Sans Mono" SIZE="10"/>
</node>
</node>
</node>
</node>
<node TEXT="Columns." LOCALIZED_STYLE_REF="AutomaticLayout.level,2" POSITION="right" ID="ID_1321290025" CREATED="1587502748155" MODIFIED="1587808400368" COLOR="#000000" BACKGROUND_COLOR="#00ff00" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#000000">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some informations about the columns that should be selected
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Amount" ID="ID_1691465076" CREATED="1587502755262" MODIFIED="1587574306985" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The exact amount of columns that should be selected, or -1 if no exact amount is known
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Max. amount" ID="ID_1126907031" CREATED="1587502763458" MODIFIED="1587808362973" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The maximum amount of columns that should be selected, or -1 if there is no max amount.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Names" ID="ID_351914649" CREATED="1587502763458" MODIFIED="1587807945504" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The names of the required columns. Only for multi column selections!
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Ignore conditions" ID="ID_538878472" CREATED="1587502779370" MODIFIED="1587813464184" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      One or more ignore conditions. If a condition matches, the whole column is ignored.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Ignore condition" ID="ID_914731821" CREATED="1587808974827" MODIFIED="1587811490736" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Ignore column if it&#xa;    (not)&#xa;    { contains | starts with  | ends with | is }&#xa;a&#xa;    { specific value or format }&#xa;at&#xa;    { any element/row |&#xa;      elements/rows, defined by index(es) |&#xa;      all elements/rows }" ID="ID_1458350860" CREATED="1587811188130" MODIFIED="1587814298131" LINK="03_Content-depending-cell-selection.mm" COLOR="#666666" STYLE="bubble" MAX_WIDTH="12.0 cm">
<font NAME="DejaVu Sans Mono" SIZE="10"/>
</node>
</node>
</node>
<node TEXT="End conditions   ." ID="ID_1219135030" CREATED="1587502790326" MODIFIED="1587814436584" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      One or more end conditions. If a condition matches, the whole column is ignored and column parsing is finished at this point. The End column is only used if no fixed column Amount is defined.
    </p>
  </body>
</html>

</richcontent>
<node TEXT="End condition  -" ID="ID_484317659" CREATED="1587808974827" MODIFIED="1587813975727" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Stop reading next columns including current if it&#xa;    (not)&#xa;    { contains | starts with  | ends with | is }&#xa;a&#xa;    { specific value or format }&#xa;at&#xa;    { any element/row |&#xa;      elements/rows, defined by index(es) |&#xa;      all elements/rows }" ID="ID_1296056511" CREATED="1587811188130" MODIFIED="1587814494672" LINK="03_Content-depending-cell-selection.mm" COLOR="#666666" STYLE="bubble" MAX_WIDTH="12.0 cm">
<font NAME="DejaVu Sans Mono" SIZE="10"/>
</node>
</node>
</node>
</node>
<node TEXT="Content handlers" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" POSITION="right" ID="ID_1791965335" CREATED="1587502790326" MODIFIED="1587819263420" COLOR="#000000" BACKGROUND_COLOR="#33ff00" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      One or more stop conditions. If a condition matches, the whole column is ignored and column parsing is finished at this point. The Stopp column is only used if no fixed column Amount is defined.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#000000"/>
<node TEXT="Content handler" ID="ID_1796823992" CREATED="1587808974827" MODIFIED="1587819338086" BACKGROUND_COLOR="#99ccff" STYLE="bubble">
<font SIZE="14"/>
<node TEXT="Handle&#xa;    (not empty)&#xa;cell content for each column at defined&#xa;    { index }&#xa;in all rows of resulting data by&#xa;    { replacers, normalizers }" ID="ID_1634231056" CREATED="1587816028959" MODIFIED="1587816195292" COLOR="#666666" STYLE="bubble">
<font NAME="DejaVu Sans Mono"/>
<node TEXT="Not empty" ID="ID_10861634" CREATED="1587816721107" MODIFIED="1587816844460" STYLE="bubble">
<font SIZE="12"/>
</node>
<node TEXT="Index" ID="ID_462201966" CREATED="1587816721107" MODIFIED="1587816849492" STYLE="bubble">
<font SIZE="12"/>
</node>
<node TEXT="Replacers  ." ID="ID_310857571" CREATED="1587816383367" MODIFIED="1587819570568" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Replacer  ." ID="ID_1446295418" CREATED="1587816415130" MODIFIED="1587819586775" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Search for..." ID="ID_632483139" CREATED="1587816429906" MODIFIED="1587816880242" LINK="03_Content-depending-cell-selection.mm" STYLE="bubble">
<font SIZE="12"/>
</node>
<node TEXT="Replace" ID="ID_678831265" CREATED="1587816531948" MODIFIED="1587816971666" BACKGROUND_COLOR="#cccccc" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Replace target" ID="ID_1616300013" CREATED="1587816545139" MODIFIED="1587817269954" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="- matching part&#xa;- full content" ID="ID_1501295699" CREATED="1587817148826" MODIFIED="1587817326840" COLOR="#666666" STYLE="bubble"/>
</node>
<node TEXT="Replace by     ." ID="ID_1950166791" CREATED="1587816545139" MODIFIED="1587817393172" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="- specific string&#xa;- matching part" ID="ID_759578669" CREATED="1587817148826" MODIFIED="1587817491294" COLOR="#666666" STYLE="bubble"/>
</node>
<node TEXT="Replace string" ID="ID_845791984" CREATED="1587816545139" MODIFIED="1587817625230" STYLE="bubble">
<font SIZE="12"/>
</node>
</node>
</node>
</node>
<node TEXT="Normalizers" ID="ID_1640507844" CREATED="1587816383367" MODIFIED="1587817589451" BACKGROUND_COLOR="#ffff00" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="Normalizer" ID="ID_1411961767" CREATED="1587816415130" MODIFIED="1587817599007" BACKGROUND_COLOR="#ff9999" STYLE="bubble">
<font SIZE="12"/>
<node TEXT="- Trim&#xa;- FixSpace&#xa;- ToLowercase&#xa;- ToUppercase" ID="ID_454471906" CREATED="1587816545139" MODIFIED="1587819057832" COLOR="#666666" STYLE="bubble">
<font SIZE="10"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
