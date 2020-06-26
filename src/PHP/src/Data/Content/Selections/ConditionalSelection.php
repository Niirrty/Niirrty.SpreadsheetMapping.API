<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


use Monolog\Logger;


/**
 * This class represents the definition of a spreadsheet cell selection by content.
 * 
 * All parameters are defined by the 'settings' property
 * 
 * It supports the selection types, defined by class constants of {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Type}
 * 
 * - Type::CONTAINS     Select next cell if it contains a specific string or format
 * - Type::STARTS_WITH  Select next cell if its content starts with a specific string or format
 * - Type::ENDS_WITH    Select next cell if its content ends with a specific string or format
 * - Type::IS           Select next cell if its content is a specific string or format
 * 
 * They can be reversed by setting 'reverseCondition' to TRUE
 * 
 * After it the types mean:
 * 
 * - Type::CONTAINS     Select next cell if it NOT contains a specific string or format
 * - Type::STARTS_WITH  Select next cell if its content NOT starts with a specific string or format
 * - Type::ENDS_WITH    Select next cell if its content NOT ends with a specific string or format
 * - Type::IS           Select next cell if its content NOT is a specific string or format
 * 
 * It also defines the 'valueType'. It represents the type of the content thas should be used for content checks.
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
 * @property DynamicSelectionSettings|null $settings All selection depending settings.
 */
class ConditionalSelection extends Selection
{


    /**
     * Get the conditional/dynamic selection settings.
     * 
     * @return DynamicSelectionSettings
     */ 
    public function getSettings() : ?DynamicSelectionSettings
    {

        return $this->getParameter( 'settings' );
        
    }


    /**
     * Set the conditional/dynamic selection settings.
     *
     * @param   DynamicSelectionSettings $settings
     * @return  ConditionalSelection
     * @throws  \Niirrty\ArgumentException If $settings is invalid.
     */ 
    public function setSettings( DynamicSelectionSettings $settings ) : ConditionalSelection
    {

        if ( ! $settings->isValid() )
        {
            throw new \Niirrty\ArgumentException(
                'settings',
                $settings,
                'Invalid SpreadsheetMapping API content selection "settings" parameter!'
            );
        }

        $this->setParameter( 'settings', $settings );

        return $this;

    }


    /**
     * Inits a new instance.
     *
     * @param DynamicSelectionSettings|null $settings ...
     */
    public function __construct( ?DynamicSelectionSettings $settings = null )
    {

        parent::__construct();

        if ( null !== $settings )
        {
            $this->setSettings( $settings );
        }

    }

    public function resetParameters()
    {

        $this->_properties = [
            'settings' => null
        ];

    }

    public function isValid() : bool
    {

        if ( null === $this->_properties[ 'settings' ] )
        {

            return false;

        }

        return $this->getSettings()->isValid();

    }

    /**
     * Parses the XML Element an return the resulting {@see ConditionalSelection} or NULL if the XML ELement
     * not represents a conditional selection definition
     *
     * @param \SimpleXMLElement $element
     * @param Logger $logger
     * @return ConditionalSelection|null
     */
    public static function ParseXMLElement( \SimpleXMLElement $element, Logger $logger = null ) : ?ConditionalSelection
    {

        $selectionOut = new ConditionalSelection();

        if ( ! $selectionOut->readXML( $element, $logger ) || ! $selectionOut->isValid() )
        {
            $selectionOut = null;
        }

        return $selectionOut;

    }

}


