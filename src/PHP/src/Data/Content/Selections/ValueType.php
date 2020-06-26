<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


/**
 * Defines the known value types, required for content depending cell or cell-range selection.
 * 
 * For example the following condition: if cell content starts with a specific string "foo"
 * 
 * - type is "starts with" Type::STARTS_WITH
 * - value type is "specific string" => ValueType::STR
 * - value is "foo"
 */
abstract class ValueType
{


    /**
     * A userdefined string
     */
    public const STR = 'string';
    /**
     * a char from a userdefined character group (for example a-f0-9)
     */
    public const CHARACTER_GROUP_CHAR = 'character-group-char';
    /**
     * 1-n chars from a userdefined character group (for example a-f0-9)
     */
    public const CHARACTER_GROUP_CHARS = 'character-group-chars';
    /**
     * A simple linebreak (covers \n and \r\n)
     */
    public const LINE_BREAK = 'linebreak';
    /**
     * A Tabulator char \t
     */
    public const TABULATOR = 'tab';
    /**
     * A single word char
     */
    public const WORD_CHAR = 'word-char';
    /**
     * 1-n word chars
     */
    public const WORD_CHARS = 'word-chars';
    /**
     * A single numeric char
     */
    public const NUMERIC_CHAR = 'numeric-char';
    /**
     * 1-n numeric chars
     */
    public const NUMERIC_CHARS = 'numeric-chars';
    /**
     * A single alpha numeric char
     */
    public const ALPHANUMERIC_CHAR = 'alphanumeric-char';
    /**
     * 1-n alpha numeric chars
     */
    public const ALPHANUMERIC_CHARS = 'alphanumeric-chars';
    /**
     * A whitespace char
     */
    public const WHITESPACE = 'whitespace';
    /**
     * A regular expression
     */
    public const REGULAR_EXPRESSION = 'regex';
    /**
     * A simple expression
     */
    public const SIMPLE_EXPRESSION = 'expression';

    public static array $KnownTypeValues = [
        self::STR,
        self::CHARACTER_GROUP_CHAR,
        self::CHARACTER_GROUP_CHARS,
        self::LINE_BREAK,
        self::TABULATOR,
        self::WORD_CHAR,
        self::WORD_CHARS,
        self::NUMERIC_CHAR,
        self::NUMERIC_CHARS,
        self::ALPHANUMERIC_CHAR,
        self::ALPHANUMERIC_CHARS,
        self::WHITESPACE,
        self::REGULAR_EXPRESSION,
        self::SIMPLE_EXPRESSION
    ];

    private static array $TypeInfos = [
        self::STR => [ 'require-value' => true ],
        self::CHARACTER_GROUP_CHAR => [ 'require-value' => true ],
        self::CHARACTER_GROUP_CHARS => [ 'require-value' => true ],
        self::LINE_BREAK => [ 'require-value' => false ],
        self::TABULATOR => [ 'require-value' => false ],
        self::WORD_CHAR => [ 'require-value' => false ],
        self::WORD_CHARS => [ 'require-value' => false ],
        self::NUMERIC_CHAR => [ 'require-value' => false ],
        self::NUMERIC_CHARS => [ 'require-value' => false ],
        self::ALPHANUMERIC_CHAR => [ 'require-value' => false ],
        self::ALPHANUMERIC_CHARS => [ 'require-value' => false ],
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

