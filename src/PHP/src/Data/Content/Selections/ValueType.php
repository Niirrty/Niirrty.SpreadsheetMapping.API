<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


/**
 * Defines the known value types, required for content depending cell or cell-range selection
 */
abstract class ValueType
{


    public const STR = 'string';
    public const CHARACTER_GROUP_CHAR = 'character-group-char';
    public const LINE_BREAK = 'linebreak';
    public const TABULATOR = 'tab';
    public const WORD_CHAR = 'word-char';
    public const NUMERIC_CHAR = 'numeric-char';
    public const ALPHANUMERIC_CHAR = 'alphanumeric-char';
    public const WHITESPACE = 'whitespace';
    public const REGULAR_EXPRESSIOJN = 'regex';
    public const SIMPLE_EXPRESSION = 'expression';

    public static array $KnownTypeValues = [
        self::STR,
        self::CHARACTER_GROUP_CHAR,
        self::LINE_BREAK,
        self::TABULATOR,
        self::WORD_CHAR,
        self::NUMERIC_CHAR,
        self::ALPHANUMERIC_CHAR,
        self::WHITESPACE,
        self::REGULAR_EXPRESSIOJN,
        self::SIMPLE_EXPRESSION
    ];

    private static array $TypeInfos = [
        self::STR => [ 'require-value' => true ],
        self::CHARACTER_GROUP_CHAR => [ 'require-value' => true ],
        self::LINE_BREAK => [ 'require-value' => false ],
        self::TABULATOR => [ 'require-value' => false ],
        self::WORD_CHAR => [ 'require-value' => false ],
        self::NUMERIC_CHAR => [ 'require-value' => false ],
        self::ALPHANUMERIC_CHAR => [ 'require-value' => false ],
        self::WHITESPACE => [ 'require-value' => false ],
        self::REGULAR_EXPRESSION => [ 'require-value' => true ],
        self::SIMPLE_EXPRESSION => [ 'require-value' => true ]
    ];

    /**
     * Checks if $type represents a known content selection type
     *
     * @param  string  $type
     * @return boolean
     */
    public static function IsKnownType( string $type ) : bool
    {

        return \in_array( $type, self::$KnownTypeValues );

    }

    /**
     * Returns if the define type requires a associatet value for doing the content validation for selection.
     * 
     * For example: ValueType::STR requires a associated string that should be (contained | starts with | ends with | ...)
     * so it must return TRUE for this type.
     * 
     * This can be helpfull if you want to show an GUI for this rule.
     *
     * @param string $type
     * @return boolean
     */
    public static function RequireValue( string $type ) : bool
    {

        if ( ! self::IsKnownType( $type ) )
        {
            return false;
        }

        return self::$TypeInfos[ $type ][ 'require-value' ];

    }

}

