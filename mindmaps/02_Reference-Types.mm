<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Cell mapping&#xa;reference types" FOLDED="false" ID="ID_524761081" CREATED="1580977294602" MODIFIED="1582273481253" LINK="01_Mapping-Reference.mm" COLOR="#ffffff" BACKGROUND_COLOR="#cc0000" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="0.826">
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
<hook NAME="AutomaticEdgeColor" COUNTER="0" RULE="ON_BRANCH_CREATION"/>
<edge COLOR="#000000"/>
<node TEXT="Single cell" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="right" ID="ID_817536997" CREATED="1580373296378" MODIFIED="1580980980335" HGAP_QUANTITY="29.74999953061343 pt" VSHIFT_QUANTITY="0.7499999776482607 pt" COLOR="#000000" BACKGROUND_COLOR="#ffff00" STYLE="oval">
<edge COLOR="#000000"/>
<node TEXT="Select" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1310530809" CREATED="1580373473356" MODIFIED="1580981681398" COLOR="#000000" BACKGROUND_COLOR="#99ff99" STYLE="rectangle" HGAP_QUANTITY="55.9999987483025 pt" VSHIFT_QUANTITY="-59.999998211860714 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      M&#246;gliche Arten zur Auswahl einer Zelle
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Static (CellName/ID)" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_16388476" CREATED="1580373929119" MODIFIED="1580980572086" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="115.24999698251494 pt" VSHIFT_QUANTITY="-24.749999262392542 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Zelle wird hart &#252;ber den Name/Index der
    </p>
    <p>
      Zelle im Tabellenblatt definiert.
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
</node>
<node TEXT="Conditional" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1845251245" CREATED="1580373964528" MODIFIED="1580981768462" LINK="03_Content-depending-cell-selection.mm" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="54.499998793006 pt" VSHIFT_QUANTITY="-0.7499999776482589 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Inhaltsabh&#228;ngige Auswahl. M&#246;gliche Werte siehe Verlinkung.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Related to..." LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1949372661" CREATED="1580457661321" MODIFIED="1582205013116" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="114.49999700486669 pt" VSHIFT_QUANTITY="25.499999240040797 pt">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1845251245" STARTINCLINATION="40;0;" ENDINCLINATION="40;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Auswahl der Zelle bezieht sich auf eine andere bereits definierte Referenz
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
<node TEXT="Reference" ID="ID_1870275963" CREATED="1580458028338" MODIFIED="1580981783128" HGAP_QUANTITY="31.249999485909953 pt" VSHIFT_QUANTITY="0.7499999776482589 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Name der Referenz auf die sich die Auswahl bezieht
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Offset" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_390494504" CREATED="1580458143392" MODIFIED="1580981826370" STYLE="bubble" HGAP_QUANTITY="30.499999508261695 pt" VSHIFT_QUANTITY="3.7499998882412946 pt">
<node TEXT="Rows" ID="ID_613236851" CREATED="1580902673369" MODIFIED="1580981944077" HGAP_QUANTITY="12.500000044703482 pt" VSHIFT_QUANTITY="-1.4999999552965173 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Zeilen-Offset der ben&#246;tigten Zelle in Relation zur Referenz-Zelle
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Columns" ID="ID_21547023" CREATED="1580902680105" MODIFIED="1580981934271" HGAP_QUANTITY="13.250000022351742 pt" VSHIFT_QUANTITY="-4.499999865889553 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Spalten-Offset der ben&#246;tigten Zelle in Relation zur Referenz-Zelle
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Content-Handler" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1163299732" CREATED="1580453048913" MODIFIED="1580980980335" COLOR="#000000" BACKGROUND_COLOR="#99ff99" STYLE="rectangle" HGAP_QUANTITY="154.2499958202244 pt" VSHIFT_QUANTITY="59.9999982118607 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ContentHandler dienen dazu, Zellinhalte vor deren Weiterverarbeitung in eine andere gew&#252;nschte Form zu bringen
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
<node TEXT="None" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_909184382" CREATED="1580722614095" MODIFIED="1580980951093" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="151.24999590963137 pt" VSHIFT_QUANTITY="-35.249998949468164 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Zeillinhalte werden als solche, unbehandelt weitergegeben. Ist auch zu nutzen wenn die Zelle ausschlie&#223;lich als Referenzpunkt f&#252;r weitere Zellen verwendet werden soll.
    </p>
  </body>
</html>
</richcontent>
<hook NAME="FreeNode"/>
</node>
<node TEXT="Replacer" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_1281360167" CREATED="1580455096016" MODIFIED="1580982109170" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="28.24999957531692 pt" VSHIFT_QUANTITY="24.749999262392542 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Es wird nach Inhalt gesucht der dann mit neuem Inhalt ersetzt wird.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Search for" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_1172258206" CREATED="1580455178858" MODIFIED="1580981998303" LINK="04_Content-Search-Types.mm" BACKGROUND_COLOR="#ccffff" STYLE="bubble" HGAP_QUANTITY="16.249999932944775 pt" VSHIFT_QUANTITY="10.499999687075624 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Nach was soll gesucht werden? M&#246;gliche Wert-Typen findet sich hinter der Verlinkung
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Replace..." LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_822088846" CREATED="1580457410125" MODIFIED="1580982036448" BACKGROUND_COLOR="#ccffff" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ersetzt die als Suchzeichenkette gefundene Zeichenmenge mit...Mit was sollen gefundene Inhalte ersetzt werden?
    </p>
  </body>
</html>
</richcontent>
<node TEXT="matching Part with..." ID="ID_865724132" CREATED="1580457437806" MODIFIED="1580903901870">
<node TEXT="specific string" ID="ID_341692692" CREATED="1580903920797" MODIFIED="1580982226450"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ersetzt den gefundenen Inhalt mit einer statischen Zeichenkette
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="full content with..." ID="ID_1020533378" CREATED="1580903985072" MODIFIED="1580904001662">
<node TEXT="matching part" ID="ID_1467826171" CREATED="1580904002813" MODIFIED="1580982281120"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ersetzt den kompletten Zellinhalt mit dem gefunden Inhalt, der folglich ein Teil dessen ist was ersetzt werden soll.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="specific string (can include matching part placeholder)" ID="ID_102769784" CREATED="1580904015069" MODIFIED="1580982373235"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ersetze den kompletten Zellinhalt mit einer dynamischen Zeichenkette die aus statischen Bestandteilen und dem eigentlich gefundenen Inhalt bestehen kann
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Normalizer" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_122117917" CREATED="1580722985012" MODIFIED="1580982173656" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="26.74999962002039 pt" VSHIFT_QUANTITY="-1.4999999552965182 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Verarbeitet ebenfalls Zellinhalte.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Trim" ID="ID_1814078175" CREATED="1580723082720" MODIFIED="1580723086353"/>
</node>
</node>
</node>
<node TEXT="Virtual table" LOCALIZED_STYLE_REF="AutomaticLayout.level,1" POSITION="left" ID="ID_1299356605" CREATED="1580373337003" MODIFIED="1580974727344" COLOR="#000000" BACKGROUND_COLOR="#ffff00" STYLE="oval" TEXT_ALIGN="CENTER" HGAP_QUANTITY="66.49999843537812 pt" VSHIFT_QUANTITY="0.7499999776482582 pt">
<edge COLOR="#0000ff"/>
<attribute_layout NAME_WIDTH="95.99999713897714 pt" VALUE_WIDTH="95.99999713897714 pt"/>
<node TEXT="Rows" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_771167279" CREATED="1580974017624" MODIFIED="1580982656768" COLOR="#000000" BACKGROUND_COLOR="#99ff99" STYLE="rectangle" HGAP_QUANTITY="37.999999284744284 pt" VSHIFT_QUANTITY="-257.99999231100105 pt">
<edge COLOR="#000000"/>
<hook NAME="FreeNode"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Zeilenabh&#228;ngiges
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Ignore" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_529109823" CREATED="1580974105560" MODIFIED="1580974574668" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="-39.24999841302637 pt" VSHIFT_QUANTITY="-38.99999883770945 pt">
<edge COLOR="#000000"/>
<node TEXT="if row is empty" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_719702152" CREATED="1580974244282" MODIFIED="1580974323927" BACKGROUND_COLOR="#ccffff" STYLE="bubble"/>
<node TEXT="with a cell" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_304415761" CREATED="1580974283418" MODIFIED="1580982938798" LINK="03_Content-depending-cell-selection.mm" BACKGROUND_COLOR="#ccffff" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Ignore rows if a cell is contained that matches one of the linked conditions.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Stop" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_299577337" CREATED="1580974118120" MODIFIED="1580974527931" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="85.99999785423284 pt" VSHIFT_QUANTITY="-59.999998211860714 pt">
<node TEXT="if row is empty" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_1282298556" CREATED="1580974244282" MODIFIED="1580974323927" BACKGROUND_COLOR="#ccffff" STYLE="bubble"/>
<node TEXT="with a cell" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_1941542895" CREATED="1580974283418" MODIFIED="1580982830453" LINK="03_Content-depending-cell-selection.mm" BACKGROUND_COLOR="#ccffff" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Stop parsing rows if a cell is contained that matches one of the linked conditions.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Attributes" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1483505242" CREATED="1580905975560" MODIFIED="1580982552290" HGAP_QUANTITY="175.99999517202394 pt" VSHIFT_QUANTITY="-146.99999561905875 pt" COLOR="#000000" BACKGROUND_COLOR="#99ff99" STYLE="rectangle">
<edge COLOR="#000000"/>
<hook NAME="FreeNode"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Alle m&#246;glichen Attribute die diesem Mapping-Type zugeordnet werden k&#246;nnen.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Contains header?" ID="ID_6580976" CREATED="1580906157555" MODIFIED="1580907844093">
<icon BUILTIN="checked"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Definiert ob eine Kopfzeile im auszuw&#228;hlenden Bereich enthalten ist.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Is vertical layout?" ID="ID_186819661" CREATED="1580906189828" MODIFIED="1580907789403">
<icon BUILTIN="checked"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Beim normalen, horizontalen Layout wird einfach Zeilenweise eingelesen. Die Kopzeile ist dabei, wenn enthalten die oberse Zeile. Im Vertikalen Layout sind die Spalten die Zeilen im hor. Layout und die Zeilen sind die Spalten im hor. Layout. Die Kopfzeile wird dann in der ersten Spalte der Tabelle erwartet.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="stop parsing on empty rows?" ID="ID_1591014229" CREATED="1580906543860" MODIFIED="1580907545022">
<icon BUILTIN="checked"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Da Tabellen eine Flexiblen menge an Datens&#228;tzen enthalten k&#246;nnen ist es manchmal n&#246;tig zu sagen &quot;Lese solange Datens&#228;tze ein bis...&quot; keine Daten mehr kommen (also alle Zellen eines Datensatzes leer sind. Wenn das nicht ausreicht kann man auch gezielter Regeln &#252;ber StopRows definieren.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="column names" ID="ID_696920085" CREATED="1580906610467" MODIFIED="1580907304730">
<icon BUILTIN="list"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Jede Spalte kann entweder &#252;ber einen zugeordneten Namen oder &#252;ber einen Index angesprochen werden. Hier werden die Namen der Spalten erwartet. Wenn keine Namen angegeben sind werden die genommen die im Bereich der virtuellen Tabelle definiert sind. Sind keine Spaltennamen definiert wird automatisch der Name im Format A, B, C, ... genutzt
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Select" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1216082259" CREATED="1580905336721" MODIFIED="1580974926311" COLOR="#000000" BACKGROUND_COLOR="#99ff99" STYLE="rectangle" HGAP_QUANTITY="166.99999544024482 pt" VSHIFT_QUANTITY="-1.4999999552965164 pt">
<edge COLOR="#000000"/>
<node TEXT="Static" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_710908452" CREATED="1580905424545" MODIFIED="1580905639342" BACKGROUND_COLOR="#ffccff" STYLE="bubble">
<edge COLOR="#000000"/>
<node TEXT="start cell row" ID="ID_713731872" CREATED="1580905443010" MODIFIED="1580972621215" HGAP_QUANTITY="17.74999988824129 pt" VSHIFT_QUANTITY="-3.7499998882412946 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Zeile der Startzelle (1-n) Die Startzelle markiert die linke oberste Zelle des auszuw&#228;hlenden virtuellen Tabellenbereichs.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="start cell column" ID="ID_910723364" CREATED="1580905530707" MODIFIED="1580972662124" HGAP_QUANTITY="16.999999910593036 pt" VSHIFT_QUANTITY="-2.2499999329447764 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Spalte der Startzelle (A-...) Die Startzelle markiert die linke oberste Zelle des auszuw&#228;hlenden virtuellen Tabellenbereichs.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="column amount" ID="ID_971817812" CREATED="1580906351370" MODIFIED="1580972996299"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Menge der Spalten die die Tabelle maximal breit ist.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="row amount" ID="ID_1304270863" CREATED="1580906359609" MODIFIED="1580973272668"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Maximale Zeilenmenge f&#252;r die Tabelle. Eine Wert &lt; 1 (Keine harte begrenzung) setzt voraus das mind.1 dynamische Begrenzung (StopRow) definiert ist
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Related to..." LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_701489411" CREATED="1580457661321" MODIFIED="1580908848232" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="11.750000067055225 pt" VSHIFT_QUANTITY="8.999999731779099 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Auswahl der Zelle bezieht sich auf eine andere bereits definierte Referenz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Reference" ID="ID_181047242" CREATED="1580458028338" MODIFIED="1580902075944"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Der Name der Referenz auf die sich die Auswahl bezieht
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Offset" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_1327445504" CREATED="1580458143392" MODIFIED="1580904303268" STYLE="bubble">
<node TEXT="Rows" ID="ID_282436379" CREATED="1580902673369" MODIFIED="1580973509475" HGAP_QUANTITY="12.500000044703482 pt" VSHIFT_QUANTITY="-1.4999999552965173 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Menge der Zeilen um die sich die auszuw&#228;hlende Startzelle, ausgehend von der Referenzzelle verschiebt.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Columns" ID="ID_591661344" CREATED="1580902680105" MODIFIED="1580973494469" HGAP_QUANTITY="13.250000022351742 pt" VSHIFT_QUANTITY="-4.499999865889553 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Menge der Spalten um die sich die auszuw&#228;hlende Startzelle, ausgehend von der Referenzzelle verschiebt.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="column amount" ID="ID_1176977146" CREATED="1580909040427" MODIFIED="1580973544456"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Menge der Spalten die die Tabelle maximal breit ist.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="row amount" ID="ID_140021515" CREATED="1580909061225" MODIFIED="1580973559159"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Maximale Zeilenmenge f&#252;r die Tabelle. Eine Wert &lt; 1 (Keine harte begrenzung) setzt voraus das mind.1 dynamische Begrenzung (StopRow) definiert ist
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Conditional" LOCALIZED_STYLE_REF="AutomaticLayout.level,3" ID="ID_950586268" CREATED="1580373964528" MODIFIED="1580976368219" LINK="Zustaendigkeitsmatrix.mm" BACKGROUND_COLOR="#ffccff" STYLE="bubble" HGAP_QUANTITY="-7.749999351799506 pt" VSHIFT_QUANTITY="141.74999577552092 pt">
<hook NAME="FreeNode"/>
<node TEXT="Content Depending" ID="ID_1771387328" CREATED="1580374038945" MODIFIED="1584002590028" BACKGROUND_COLOR="#ccffff" STYLE="bubble" HGAP_QUANTITY="38.74999926239256 pt" VSHIFT_QUANTITY="0.7499999776482582 pt"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Die Bedingungen m&#252;ssen miteinander kombinierbar sein.
    </p>
    <p>
      Es sollte z.B. auch gehen zu sagen: &quot;Muss mit Zeichenkette '123' beginnen
    </p>
    <p>
      und/oder mit 'abc' enden&quot;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="with top left cell" LOCALIZED_STYLE_REF="AutomaticLayout.level,4" ID="ID_757593075" CREATED="1580974283418" MODIFIED="1584002819396" LINK="03_Content-depending-cell-selection.mm" BACKGROUND_COLOR="#ccffff" STYLE="bubble"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The Table begins with top left cell that satisfies one of the linked conditions.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
