<?php

namespace Niirrty\SpeeadsheetMapping\API\Helper;


use \Monolog\Logger;


/**
 * ...
 */
interface IXMLWriter
{

    /**
     * Writes the instance data to defined XmlWriter. 
     *
     * @param \XmlWriter      $w      Write the XML to this XmlWriter.
     * @param \Monolog\Logger $logger An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean Return false if something was wrong
     */
    public function writeXML( \XmlWriter $w, Logger $logger = null ) : bool;

}

