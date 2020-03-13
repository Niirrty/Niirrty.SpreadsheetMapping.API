<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace \Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;


abstract class Type
{

    public const CONTAINS = 'contains';
    public const STARTS_WITH = 'starts';
    public const ENDS_WITH = 'ends';
    public const IS = 'is';

}
