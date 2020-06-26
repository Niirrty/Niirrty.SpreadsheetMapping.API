<?php


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


use \Niirrty\SpeeadsheetMapping\API\Helper\IXMLWriter;
use \Niirrty\SpeeadsheetMapping\API\Helper\IXMLReader;


/**
 * Each type of selection must implement this interface
 */
interface ISelection extends IXMLReader, IXMLWriter
{


    /**
     * Get the value of the named selection parameter
     *
     * @param string $name
     * @return mixed
     * @throws \Niirrty\ArgumentException If the parameter with defined name not exist.
     */
    public function getParameter( string $name );

    /**
     * Get the names of all usable parameters as numeric indicated array.
     *
     * @return array
     */
    public function getParameterNames() : array;

    /**
     * Sets the value of the parameter with defined name.
     *
     * @param string $name
     * @param mixed  $value
     * @return ISelection Return the current ISelection for method chaining.
     * @throws \Niirrty\ArgumentException If the parameter with defined name not exist.
     */
    public function setParameter( string $name, $value ) : ISelection;

    /**
     * Gets if a parameter with defined name can be used.
     *
     * @param string $name
     * @return boolean
     */
    public function hasParameter( string $name ) : bool;

    /**
     * Return the type of the current selection as fully qualified class name
     *
     * @return string
     */
    public function getSelectionType() : string;
    
    /**
     * Gets if the selection is defined by valid parameters.
     *
     * @return boolean
     */
    public function isValid() : bool;
    

}

