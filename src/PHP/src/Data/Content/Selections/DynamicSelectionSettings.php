<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


use Monolog\Logger;
use Niirrty\DynProp\ExplicitGetterSetter;
use Niirrty\SpeeadsheetMapping\API\Helper\IXMLReader;
use Niirrty\SpeeadsheetMapping\API\Helper\IXMLWriter;
use Niirrty\SpeeadsheetMapping\API\Helper\LoggerTrait;
use Niirrty\XmlAttributeHelper;

/**
 * This class represents the selection settings of a spreadsheet cell selection by content.
 * 
 * It supports the selection types, defined by class constants of {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Type}
 * 
 * - Type::CONTAINS     Select next cell if it contains a specific string or format
 * - Type::STARTS_WITH  Select next cell if its content starts with a specific string or format
 * - Type::ENDS_WITH    Select next cell if its content ends with a specific string or format
 * - Type::IS           Select next cell if its content is a specific string or format
 * 
 * They can be reversed by setting reverseCondition to TRUE
 * 
 * <code>
 * $this->setReverseCondition( true );
 * </code>
 * 
 * After it the types mean:
 * 
 * - Type::CONTAINS     Select next cell if it NOT contains a specific string or format
 * - Type::STARTS_WITH  Select next cell if its content NOT starts with a specific string or format
 * - Type::ENDS_WITH    Select next cell if its content NOT ends with a specific string or format
 * - Type::IS           Select next cell if its content NOT is a specific string or format
 * 
 * It also defines the value type. It represents the type of the content thas should be used for content checks.
 * The available value types are defined by the class constants of {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\ValueType}
 * 
 * - ValueType::STR
 * - ValueType::CHARACTER_GROUP_CHAR
 * - ValueType::LINE_BREAK
 * - ValueType::TABULATOR
 * - ValueType::WORD_CHAR
 * - ValueType::NUMERIC_CHAR
 * - ValueType::ALPHANUMERIC_CHAR
 * - ValueType::WHITESPACE
 * - ValueType::REGULAR_EXPRESSIOJN
 * - ValueType::SIMPLE_EXPRESSION
 * 
 * And finally it also defines the specific string or format, used by content check. If
 * it is required by the value type.
 * 
 * So you can easy define stuff like:
 * 
 * - Select next cell if the content starts with a specific string '1.'
 * - Select next cell if the content ends with a string that matches the regex '/\d{4}'
 * - Select next cell if the content contains only characters, defined by a character range 'a-f0-9'
 * - and much more...
 * 
 * @property string  $valueType The value type of the content depending cell or cell-range selection.
 * @property string  $type The type of the content depending cell or cell-range selection.
 * @property boolean $reverseCondition If the type meaning should be reversed.
 * @property string  $checkValue The value that should be used in combination with the type to check a cell content.
 */
class DynamicSelectionSettings extends ExplicitGetterSetter implements IXmlReader, IXMLWriter
{

    private $_valueType;
    private $_type;
    private $_reverseCondition;
    private $_checkValue;

    use LoggerTrait;

    /**
     * Get the value type of the content depending cell or cell-range selection
     * 
     * @return string
     */ 
    public function getValueType() : string
    {

        return null === $this->_valueType ? '' : $this->_valueType;
        
    }

    /**
     * Get the type of the content depending cell or cell-range selection
     * 
     * @return string
     */ 
    public function getType() : string
    {

        return null === $this->_type ? '' : $this->_type;

    }

    /**
     * Get if the type meaning should be reversed.
     * 
     * E.G. if type is Type::CONTAINS normally it means, the cell is valid for use if it contains a defined check value string.
     * If reversed, it means the cell is valid for use if it NOT contains a defined check value string.
     * 
     * Same logic on the other types
     * 
     * @return bool
     */ 
    public function getReverseCondition() : bool
    {

        return $this->_reverseCondition;
        
    }

    /**
     * Get the value that should be used in combination with the type to check a cell content.
     * 
     * It is only required if {@see ValueType::RequireValue()} return true for the type.
     * 
     * @return string|null
     */ 
    public function getCheckValue() : ?string
    {

        return $this->_checkValue;

    }


    /**
     * Set the value type of the content depending cell or cell-range selection
     *
     * @param string $valueType {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\ValueType}::* constants.
     * @return  DynamicSelectionSettings
     * @throws \Niirrty\ArgumentException If $valueType is unknown.
     */ 
    public function setValueType( string $valueType ) : DynamicSelectionSettings
    {

        if ( ! ValueType::IsKnownType( $valueType ) )
        {
            throw new \Niirrty\ArgumentException(
                'valueType',
                $valueType,
                'Unknown (invalid) SpreadsheetMapping API content selection value type!'
            );
        }

        $this->_valueType = $valueType;

        return $this;

    }

    /**
     * Set the type of the content depending cell or cell-range selection.
     *
     * @param string $type {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Type}::* constants.
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\DynamicSelectionSettings
     * @throws \Niirrty\ArgumentException If $valueType is unknown.
     */ 
    public function setType( string $type ) : DynamicSelectionSettings
    {

        if ( ! Type::IsKnownType( $type ) )
        {
            throw new \Niirrty\ArgumentException(
                'type',
                $type,
                'Unknown (invalid) SpreadsheetMapping API content selection type!'
            );
        }

        $this->_type = $type;

        return $this;

    }

    /**
     * Set if the type meaning should be reversed.
     *
     * @param bool $reverseCondition
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\DynamicSelectionSettings
     */ 
    public function setReverseCondition( bool $reverseCondition ) : DynamicSelectionSettings
    {

        $this->_reverseCondition = $reverseCondition;

        return $this;

    }

    /**
     * Set the value that should be used in combination with the type to check a cell content.
     * 
     * It is only required if {@see ValueType::RequireValue()} return true for the type.
     *
     * @param string|null $checkValue
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\DynamicSelectionSettings
     */ 
    public function setCheckValue( ?string $checkValue ) : DynamicSelectionSettings
    {

        $this->_checkValue = $checkValue;

        return $this;

    }



    /**
     * Inits a new instance.
     *
     * @param string      $valueType  The value type of the content depending cell or cell-range selection
     * @param string      $type       The type of the content depending cell or cell-range selection.
     * @param boolean     $reverse    If the type meaning should be reversed.
     * @param string|null $checkValue The value that should be used in combination with the type to check a cell content.
     *                                It is only required if {@see ValueType::RequireValue()} return true for the type.
     */
    public function __construct(
        ?string $valueType = null, ?string $type = null, bool $reverse = false, ?string $checkValue = null )
    {

        $this->_valueType        = null;
        $this->_type             = null;
        $this->_reverseCondition = $reverse;
        $this->_checkValue       = null;
 
        if ( ! empty( $valueType ) )
        {
            $this->setValueType( $valueType );
        }

        if ( ! empty( $type ) )
        {
            $this->setType( $type );
        }

        if ( ! \is_null( $checkValue ) )
        {
            $this->setCheckValue( $checkValue );
        }

    }


    public function isValid() : bool
    {

        if ( null === $this->_type || null === $this->_valuetype )
        {

            return false;

        }

        if ( ! ValueType::RequireValue( $this->_valuetype ) )
        {

            return true;

        }

        return null != $this->_checkvalue;

    }


    /**
     * Writes the current Selection data to defined XmlWriter. It will be written as Element with name 'DynamicSelectionSettings'
     * and the following attributes
     * 
     * - 'valueType':  The value type of the content depending cell or cell-range selection
     * - 'type':       The type of the content depending cell or cell-range selection.
     * - 'reverse':    if the type meaning should be reversed.
     * - 'checkValue': The value that should be used in combination with the type to check a cell content.
     * 
     * Example XML
     * 
     * <code>
     * <DynamicSelectionSettings type="is" valueType="regex" reverse="0" checkValue="^([a-fA-F0-9]{2,2})+$" />
     * </code>
     *
     * @param \XmlWriter      $w      Write the XML to this XmlWriter.
     * @param \Monolog\Logger $logger An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean Return false if the selection is not configured valid.
     */
    public final function writeXML( \XmlWriter $w, Logger $logger = null ) : bool
    {

        if ( ! $this->isValid() )
        {

            $this->logWarning( $logger, 'Can not write XML for DynamicSelectionSettings if the settings are not valid configured!' );
            return false;

        }

        $this->logDebug( $logger, 'Start writing XML for DynamicSelectionSettings.' );

        $w->startElement( 'DynamicSelectionSettings' );

        $w->writeAttribute ( 'valueType' , $this->_valueType );
        $w->writeAttribute ( 'type' , $this->_type );
        $w->writeAttribute ( 'reverse' , $this->_reverseCondition ? '1' : '0' );
        if ( ValueType::RequireValue( $this->_valuetype ) )
        {
            $w->writeAttribute ( 'checkValue' , $this->_checkValue );
        }

        $w->endElement();

        $this->logDebug( $logger, 'Done writing DynamicSelectionSettings as XML.' );

        return true;

    }

    /**
     * Reads the instance-data from defined XML element.
     * 
     * It is required as XML element with name 'DynamicSelectionSettings'
     * the following attributes
     * 
     * - 'valueType':  The value type of the content depending cell or cell-range selection
     * - 'type':       The type of the content depending cell or cell-range selection.
     * - 'reverse':    if the type meaning should be reversed.
     * - 'checkValue': The value that should be used in combination with the type to check a cell content.
     * 
     * Example XML
     * 
     * <code>
     * <DynamicSelectionSettings type="is" valueType="regex" reverse="0" checkValue="^([a-fA-F0-9]{2,2})+$" />
     * </code>
     *
     * @param \SimpleXMLElement $element
     * @param \Monolog\Logger   $logger  An optional logger that can log some infos, warnings, errors, etc.
     * @return boolean It returns FALSE if the XML element defines not all required data.
     */
    public final function readXML( \SimpleXMLElement $element, Logger $logger = null ) : bool
    {

        $this->logDebug( $logger, 'Start reading "DynamicSelectionSettings" instance data from XML!' );

        // Elementname must ba always "DynamicSelectionSettings"!
        if ( 'DynamicSelectionSettings' !== $element->getName() )
        {
            $this->logDebug( $logger, 'Stop reading "DynamicSelectionSettings" from XML! The element is not usable for this class.' );
            return false;
        }

        // Read the type Attribute of the element
        $type = XmlAttributeHelper::GetAttributeValue( $element, 'type', null );

        // Type can not be empty!
        if ( empty( $type ) )
        {
            $this->logDebug( $logger, 'Stop reading "DynamicSelectionSettings" from XML! The element not define the required type attribute.' );
            return false;
        }

        // Type must be a known type
        if ( ! Type::IsKnownType( $type ) )
        {
            $this->logWarning( $logger, '"DynamicSelectionSettings" XML parse error! The "type" attribute defines a invalid type value.' );
            return false;
        }

        // Read the valueType Attribute of the element
        $valueType = XmlAttributeHelper::GetAttributeValue( $element, 'valueType', null );

        // ValueType can not be empty!
        if ( empty( $valueType ) )
        {
            $this->logDebug( $logger, 'Stop reading "DynamicSelectionSettings" from XML! The element not define the required valueType attribute.' );
            return false;
        }

        // ValueType must be a known ValueType
        if ( ! ValueType::IsKnownType( $valueType ) )
        {
            $this->logWarning( $logger, '"DynamicSelectionSettings" XML parse error! The "valueType" attribute defines a invalid valueType value.' );
            return false;
        }

        $reverseCondition = XmlAttributeHelper::GetAttributeValue( $element, 'reverse', '0' );
        $reverse          = '1' === $reverseCondition || 'true' === \strtolower( $reverseCondition );

        $checkValue = null;
        if ( ValueType::RequireValue( $valueType ) )
        {
            $checkValue = XmlAttributeHelper::GetAttributeValue( $element, 'checkValue', null );
            if ( null === $checkValue || '' === $checkValue )
            {
                $this->logWarning( $logger, '"DynamicSelectionSettings" XML parse error! There is no "checkValue" attribute defined.' );
                return false;
            }
        }
        
        $this->_type             = $type;
        $this->_valueType        = $valueType;
        $this->_reverseCondition = $reverse;
        $this->_checkValue       = $checkValue;
        
        $this->logDebug( $logger, 'Successfull "DynamicSelectionSettings" init from XML!' );

        return true;

    }

}

