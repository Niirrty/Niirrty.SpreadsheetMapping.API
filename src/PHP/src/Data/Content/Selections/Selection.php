<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );

namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;

use \Niirrty\ArgumentException;
use \Monolog\Logger;
use \Niirrty\NiirrtyException;
use \Niirrty\TypeTool;
use \Niirrty\XmlAttributeHelper;
use \Niirrty\SpeeadsheetMapping\API\Helper\IXMLWriter;

abstract class Selection extends \Niirrty\DynProp\ExplicitGetterSetter implements ISelection
{

    use \Niirrty\SpeeadsheetMapping\API\Helper\LoggerTrait;

    protected array $_properties;

    protected function __construct()
    {

        // ExplicitGetterSetter should ignore the getParameter() method
        $this->ignoreGetProperties = [ 'parameter' ];

        // ExplicitGetterSetter should ignore setParameter()
        $this->ignoreSetProperties = [ 'parameter' ];

        $this->resetParameters();

    }

    /**
     * Get the value of the named selection parameter
     *
     * @param string $name
     * @return mixed
     * @throws \Niirrty\ArgumentException If the parameter with defined name not exist.
     */
    public final function getParameter( string $name )
    {

        $lowerName = \strtolower( $name );
        
        if ( ! \array_key_exists( $lowerName, $this->_properties ) )
        {
            throw new ArgumentException( 
                'name',
                $name,
                'Can not get a value of this named parameter because the selection not supports it.' );
        }

        return $this->_properties[ $lowerName ];

    }

    /**
     * Get the names of all usable parameters as numeric indicated array.
     *
     * @return array
     */
    public final function getParameterNames() : array
    {

        return \array_keys( $this->_properties );

    }

    /**
     * Sets the value of the parameter with defined name.
     *
     * @param string $name
     * @param mixed  $value
     * @return ISelection Return the current ISelection for method chaining.
     */
    public final function setParameter( string $name, $value ) : ISelection
    {

        $this->_properties[ \strtolower( $name ) ] = $value;

        return $this;

    }

    /**
     * Gets if a parameter with defined name can be used.
     *
     * @param string $name
     * @return boolean
     */
    public final function hasParameter( string $name ) : bool
    {
        
        return \array_key_exists( \strtolower( $name ), $this->_properties );

    }

    /**
     * Writes the current Selection data to defined XmlWriter. It will be written as Element with name 'Selection'
     * and a attribute 'type' (the namespace + name of implementing class.
     * 
     * The parameters are stored as child elements with name 'Parameter'.
     * 
     * Attributes of each parameter are: 
     * 
     * - 'name': The parameter name
     * - 'type': The type of the current parameter value
     * 
     * The parameter value is written as text part of the 'Parameter' XML element.
     * 
     * A Parameter is not written if:
     * 
     * - its value is NULL => logs a debug message
     * - the value is not convertible to a string (for example resources [file pointers, etc.]) => logs a warning message
     *
     * @param \XmlWriter      $w      Write the XML to this XmlWriter.
     * @param \Monolog\Logger $logger An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean Return false if the selection is not configured valid.
     */
    public final function writeXML( \XmlWriter $w, Logger $logger = null ) : bool
    {

        if ( ! $this->isValid() )
        {

            $this->logWarning( $logger, 'Can not write XML for selection of type "' . __CLASS__ . '" if selection is not valid configured!' );
            return false;
        }

        $this->logDebug( $logger, 'Start writing XML for selection of type "' . __CLASS__ . '".' );

        $w->startElement( 'Selection' );

        $w->writeAttribute ( 'type' , __CLASS__ );
      
        $writtenPropertiesCount = 0;
        foreach ( $this->_properties as $pName => $pValue )
        {
            if ( null === $pValue )
            {
                $this->logDebug( $logger, 'Ignore parameter "' . $pName . '" because the value is NULL.' );
                continue;
            }
            $resultString = null;
            if ( ! TypeTool::IsStringConvertible( $pValue, $resultString ) )
            {
                if ( ! $pValue instanceof IXMLWriter )
                {
                    $msg = 'The parameter "' . $pName . '" of selection type "' . __CLASS__ . '" is not convertible to a string!';
                    $this->logError( $logger, $msg );
                    throw new NiirrtyException( $msg );
                }
                $w->startElement( 'Parameter' );
                $w->writeAttribute ( 'name' , $pName );
                $w->writeAttribute ( 'type' , TypeTool::GetTypeName( $pValue ) );
                $pValue->writeXML( $w, $logger );
                $w->endElement();
            }
            else
            {
                $w->startElement( 'Parameter' );
                $w->writeAttribute ( 'name' , $pName );
                $w->writeAttribute ( 'type' , TypeTool::GetTypeName( $pValue ) );
                $w->text( $resultString );
                $w->endElement();
            }
            
            $writtenPropertiesCount++;
        }

        $w->endElement();

        $this->logDebug( $logger, 'Done writing Selection with ' . $writtenPropertiesCount . ' parameters.' );

        return true;

    }

    /**
     * Reads the instance-data from defined XML element.
     * 
     * It is required as XML element with name 'Selection'
     * and a attribute 'type' (the namespace + name of implementing class)
     * 
     * The parameters must be defined as child elements with name 'Parameter'.
     * 
     * Attributes of each parameter are: 
     * 
     * - 'name': The parameter name
     * - 'type': The type of the current parameter value
     * 
     * The parameter value should be defined as text part of the 'Parameter' XML element.
     * 
     * Example XML
     * 
     * <code>
     * <Selection type="Example\MySelection">
     *     <Parameter name="Abc" type="bool">1</Parameter>
     *     <Parameter name="Def" type="string">Foo bar baz</Parameter>
     * </Selection>
     * </code>
     *
     * @param \SimpleXMLElement $element
     * @param \Monolog\Logger   $logger  An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean It returns FALSE if the XML element defines not all required data.
     */
    public final function readXML( \SimpleXMLElement $element, Logger $logger = null ) : bool
    {

        // Read the type Attribute of the element
        $selectionType = XmlAttributeHelper::GetAttributeValue( $element, 'type', null );
        
        if ( null === $selectionType )
        {
            $this->logDebug( $logger, 'stop reading a "' . __CLASS__ . '" selection from XML if no "type" attribute is defined!' );
            return false;
        }

        // It must be the same than implementing class
        if ( __CLASS__ !== $selectionType )
        {
            $this->logDebug( $logger, 'stop reading a "' . __CLASS__ . '" selection from XML if "type" attribute value is different!' );
            return false;
        }

        $this->logDebug( $logger, 'Start reading "' . __CLASS__ . '" selection from XML!' );
        
        $this->resetParameters();

        if ( ! isset( $element->Parameter ) )
        {
            $this->logDebug( $logger, 'Finish reading "' . __CLASS__ . '" selection from XML without any parameters!' );
            return true;
        }

        foreach ( $element->Parameter as $paramElement )
        {

            // Parametername aus XML Attribut 'name' lesen
            $pName = XmlAttributeHelper::GetAttributeValue( $paramElement, 'name', null );
            // Parametertype aus XML Attribut 'type' lesen
            $pType = XmlAttributeHelper::GetAttributeValue( $paramElement, 'type', null );

            // Ignore parameters with a empty name (also ignore if no name is defined)
            if ( null === $pName || '' === \trim( $pName ) )
            {
                $this->logDebug( $logger, 'ignore selection "' . __CLASS__ . '" parameter with empty name.' );
                continue;
            }

            // Only handle the Parameter if it is a known parameter
            if ( ! $this->hasParameter( $pName ) )
            {
              $this->logDebug( $logger, 'ignore selection "' . __CLASS__ . '" parameter "' . $pName . '" because its unknown for selection.' );
              continue;
            }

            // Ignore parameters with a empty type (also ignore if no type is defined)
            if ( null === $pType || '' === \trim( $pType ) )
            {
                $this->logDebug( $logger, 'ignore selection "' . __CLASS__ . '" parameter "' . $pName . '" with no type definition.' );
                continue;
            }

            // If the type i a name of a known class
            if ( \class_exists( $pType ) )
            {
                $rClass = new \ReflectionClass( $pType );
                // ... and the class implements the IXMLReader insterface
                if ( $rClass->implementsInterface( '\\Niirrty\\SpeeadsheetMapping\\API\\Helper\\IXMLReader' ) )
                {
                    $childElements = $paramElement->children();
                    // ... and it defines a child element
                    if ( \count( $childElements ) > 0 )
                    {
                        try
                        {
                            // .... create a instance of the class (without constructor parameters)
                            $instance = $rClass->newInstance();
                            $handled = false;
                            foreach ( $childElements as $childElement )
                            {
                                // ... and try to read the XML from first child element 
                                if ( $instance->readXML( $childElement, $logger ) )
                                {
                                    // If all is fine assign the class instance to required parameter
                                    $this->_properties[ $pName ] = $instance;
                                    $handled = true;
                                }
                                break;
                            }
                            if ( $handled )
                            {
                                // If the class instance is assogned to required parameter
                                // We are done with the parameter
                                continue;
                            }
                        }
                        catch ( \Exception $ex ) { }
                    }
                }
            }

            // Get typed value from defined parameter value string
            $this->_properties[ $pName ] = TypeTool::StrToType( (string) $paramElement, $pType );
            
        }
        
        $this->logDebug( $logger, 'Successfull selection "' . __CLASS__ . '" init from XML!' );

        return true;

    }

    /**
     * This method must be implemented to reset all selection properties to the default values.
     * 
     * For example:
     * 
     * <code>
     *     public function resetParameters()
     *     {
     *         $this->_properties = [
     *             'foo' => ':-)',
     *             'bar' => false
     *         ];
     *     }
     * </code>
     * 
     * Parameter names must be defined alsways lower case for internal use!
     *
     * @return void
     */
    public abstract function resetParameters();

}

