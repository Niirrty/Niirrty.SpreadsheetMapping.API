<?php

namespace Niirrty\SpeeadsheetMapping\API\Helper;


use \Monolog\Logger;


/**
 * ...
 */
interface IXMLReader
{

    /**
     * Reads the instance-data from defined XML element.
     *
     * @param \SimpleXMLElement $element
     * @param \Monolog\Logger   $logger  An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean It returns FALSE if the XML element defines not all required data.
     */
    public function readXML( \SimpleXMLElement $element, Logger $logger = null ) : bool;

}

