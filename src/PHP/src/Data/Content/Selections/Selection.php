<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


/**
 * This class represents the definition of a spreadsheet cell selection by content.
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
 */
class Selection
{

    private string $_valueType;
    private string $_type;
    private bool   $_reverseCondition;
    private string $_checkValue;

    


    /**
     * Get the value type of the content depending cell or cell-range selection
     * 
     * @return string
     */ 
    public function getValueType() : string
    {

        return $this->_valueType;
        
    }

    /**
     * Get the type of the content depending cell or cell-range selection
     * 
     * @return string
     */ 
    public function getType() : string
    {

        return $this->_type;

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
    public function getCheckValue() : string
    {

        return $this->_checkValue;

    }


    /**
     * Set the value type of the content depending cell or cell-range selection
     *
     * @param string $valueType {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\ValueType}::* constants.
     * @return  \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Selection
     * @throws \Niirrty\ArgumentException If $valueType is unknown.
     */ 
    public function setValueType( string $valueType ) : Selection
    {

        if ( ! ValueType::IsKnownType( $valueType ) )
        {
            throw new \Niirrty\ArgumentException(
                'valueType',
                $valueType,
                'Unknown (invalid) SpreadsheetMapping API content selection value type!'
            );
        }

        $this->_valueType = $_valueType;

        return $this;

    }

    /**
     * Set the type of the content depending cell or cell-range selection.
     *
     * @param string $type {@see \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Type}::* constants.
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Selection
     * @throws \Niirrty\ArgumentException If $valueType is unknown.
     */ 
    public function setType( string $type ) : Selection
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
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Selection
     */ 
    public function setReverseCondition( bool $reverseCondition ) : Selection
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
     * @return \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections\Selection
     */ 
    public function setCheckValue( string $checkValue ) : Selection
    {

        $this->_checkValue = $checkValue;

        return $this;

    }


}

