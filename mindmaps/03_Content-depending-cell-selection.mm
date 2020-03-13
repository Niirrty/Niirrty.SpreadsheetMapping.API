<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Content depending&#xa;cell selection" FOLDED="false" ID="ID_37653078" CREATED="1580977474987" MODIFIED="1580980494926" COLOR="#ffffff" BACKGROUND_COLOR="#cc0000" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="4" RULE="ON_BRANCH_CREATION"/>
<edge COLOR="#000000"/>
<node TEXT="Begins (not) with..." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_1472903815" CREATED="1580374067152" MODIFIED="1580980494926" LINK="04_Content-Value-Types.mm" HGAP_QUANTITY="28.999999552965164 pt" VSHIFT_QUANTITY="-44.24999868124728 pt" COLOR="#000000" BACKGROUND_COLOR="#ffcc00" STYLE="rectangle"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Inhalt der Zelle muss (oder darf nicht) mit einer festzulegenden&#160;Zeichenkette beginnen.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#000000"/>
</node>
<node TEXT="Ends (not) with..." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1730197876" CREATED="1580374083361" MODIFIED="1580978667971" LINK="04_Content-Value-Types.mm" HGAP_QUANTITY="-399.9999876618389 pt" VSHIFT_QUANTITY="16.499999508261695 pt" COLOR="#000000" BACKGROUND_COLOR="#ffcc00" STYLE="rectangle"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Inhalt der Zelle muss (oder darf nicht) mit einer festzulegenden&#160;Zeichenkette enden.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#000000"/>
</node>
<node TEXT="Contains (not)..." LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1306080880" CREATED="1580374106149" MODIFIED="1580980480239" LINK="04_Content-Value-Types.mm" HGAP_QUANTITY="-393.9999878406528 pt" VSHIFT_QUANTITY="5.999999821186071 pt" COLOR="#000000" BACKGROUND_COLOR="#ffcc00" STYLE="rectangle"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Inhalt der Zelle muss (oder darf nicht) eine festzulegende&#160;Zeichenkette enthalten.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#000000"/>
</node>
<node TEXT="Has Format" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1063762991" CREATED="1580374122384" MODIFIED="1580980470490" COLOR="#000000" BACKGROUND_COLOR="#ffcc00" STYLE="rectangle" HGAP_QUANTITY="-351.99998909235035 pt" VSHIFT_QUANTITY="6.74999979883433 pt">
<edge COLOR="#000000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Zellinhalt muss in einem bestimmten, festzulegenden Format vorliegen
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Regular Expression" ID="ID_1068224069" CREATED="1580721666877" MODIFIED="1580977893919" HGAP_QUANTITY="-215.4999931603672 pt" VSHIFT_QUANTITY="15.749999530613437 pt"/>
<node TEXT="Simplified Expression" ID="ID_1687256398" CREATED="1580721689604" MODIFIED="1580977901870" HGAP_QUANTITY="-225.24999286979457 pt" VSHIFT_QUANTITY="-1.4999999552965178 pt"/>
<node TEXT="Is (not) empty" ID="ID_372329503" CREATED="1580722562686" MODIFIED="1580977910455" HGAP_QUANTITY="-192.99999383091944 pt" VSHIFT_QUANTITY="-0.7499999776482589 pt"/>
</node>
</node>
</map>
