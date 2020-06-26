<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


abstract class Type
{

    public const CONTAINS = 'contains';
    public const STARTS_WITH = 'starts';
    public const ENDS_WITH = 'ends';
    public const IS = 'is';

    public static array $KnownTypes = [
        self::CONTAINS,
        self::STARTS_WITH,
        self::ENDS_WITH,
        self::IS
    ];

    /**
     * Checks if $type represents a known content selection type
     *
     * @param  string  $type
     * @return boolean
     */
    public static function IsKnownType( string $type ) : bool
    {

        return \in_array( $type, self::$KnownTypes );

    }

}
