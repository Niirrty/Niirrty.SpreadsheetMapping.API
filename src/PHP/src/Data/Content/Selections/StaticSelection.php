<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;

use Monolog\Logger;


class StaticSelection extends Selection
{

    private static $COLUMNCHARS = [
        'A',  'B',  'C',  'D',  'E',  'F',  'G',  'H',  'I',  'J',  'K',  'L',  'M',  'N',  'O',  'P',  'Q',  'R',  'S',  'T',  'U',  'V',  'W',  'X',  'Y',  'Z'
    ];


    /**
     * The number (1-n) of top left selection cell row if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     * 
     * Can be only 0 if no value is configured.
     * 
     * @return int
     */ 
    public function getStartCellRowNumber() : int
    {

        $value = $this->getParameter( 'startCellRow' );

        if ( null === $value ) { return 0; }

        return (int) $value + 1;
        
    }
    
    /**
     * The index (0-n) of top left selection cell row if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     * 
     * Can be only -1 if no value is configured.
     * 
     * @return int
     */ 
    public function getStartCellRowIndex() : int
    {

        $value = $this->getParameter( 'startCellRow' );

        if ( null === $value ) { return -1; }

        return (int) $value;
        
    }

    /**
     * The number (1-n) of top left selection cell column if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     * 
     * Can be only 0 if no value is configured.
     * 
     * @return int
     */ 
    public function getStartCellColumnNumber() : int
    {

        $value = $this->getParameter( 'startCellColumn' );

        if ( null === $value ) { return 0; }

        return (int) $value + 1;

    }

    /**
     * The index (0-n) of top left selection cell column if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     * 
     * Can be only -1 if no value is configured.
     * 
     * @return int
     */ 
    public function getStartCellColumnIndex() : int
    {

        $value = $this->getParameter( 'startCellColumn' );

        if ( null === $value ) { return -1; }

        return (int) $value;

    }

    /**
     * The char (A-Z...) of top left selection cell column if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     * 
     * Can be only empty if no value is configured.
     * 
     * @return char
     */ 
    public function getStartCellColumnChar() : string
    {

        $value = $this->getStartCellColumnNumber();

        if ( 0 === $value ) { return ""; }

        if ( $value < 27 ) { return self::$COLUMNCHARS[ $value - 1 ]; }

        return self::$COLUMNCHARS[ ( ( $value - ( $value % 26 ) ) / 26 ) - 1 ] . self::$COLUMNCHARS[ $value - 1 ];

    }

    /**
     * Gets the amount the required columns.
     * 
     * This value can be also 0. It means, select a dynamic amount of columns and stop at
     * a Stop-Column condition.
     * 
     * @return int
     */ 
    public function getColumnAmount() : int
    {

        $value = $this->getParameter( 'columnAmount' );

        if ( null === $value ) { return 0; }

        // Ensure the returned value is 0 or higher
        return \max( (int) $value, 0 );

    }

    /**
     * Gets the amount the required rows.
     * 
     * This value can be also 0. It means, select a dynamic amount of rows and stop at
     * a Stop-Row condition.
     * 
     * @return int
     */ 
    public function getRowAmount() : int
    {

        $value = $this->getParameter( 'rowAmount' );

        if ( null === $value ) { return 0; }

        return \max( (int) $value, 0 );

    }



    /**
     * The number (1-n) of top left selection cell row if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     *
     * @param int $startCellRowNumber 
     * @return StaticSelection
     * @throws \Niirrty\ArgumentException If $reference is empty.
     */ 
    public function setStartCellRowNumber( int $startCellRowNumber ) : StaticSelection
    {

        $this->setParameter( 'startCellRow', \max( 1, $startCellRowNumber ) - 1 );

        return $this;

    }

    /**
     * The index (0-n) of top left selection cell row if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     *
     * @param int $startCellRowIndex
     * @return StaticSelection
     */ 
    public function setStartCellRowIndex( int $startCellRowIndex ) : StaticSelection
    {

        $this->setParameter( 'startCellRow', \max( 0, $startCellRowIndex ) );

        return $this;

    }

    /**
     * The number (1-n) of top left selection cell column if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     *
     * @param int $startCellColumnNumber
     * @return StaticSelection
     */ 
    public function setStartCellColumnNumber( int $startCellColumnNumber ) : StaticSelection
    {

        $this->setParameter( 'startCellColumn', \max( 1, $startCellColumnNumber ) - 1 );

        return $this;

    }

    /**
     * The index (0-n) of top left selection cell column if table orientation is horizontaly.
     * Otherwise (orientation is verticaly) the bottom left.
     *
     * @param int $startCellColumnIndex
     * @return StaticSelection
     */ 
    public function setStartCellColumnIndex( int $startCellColumnIndex ) : StaticSelection
    {

        $this->setParameter( 'startCellColumn', \max( 0, $startCellColumnIndex ) );

        return $this;

    }

    /**
     * Sets the amount the required columns.
     * 
     * This value can be also 0. It means, select a dynamic amount of columns and stop at
     * a Stop-Column condition.
     *
     * @param int $columnAmount
     * @return StaticSelection
     */ 
    public function setColumnAmount( int $columnAmount ) : StaticSelection
    {

        $this->setParameter( 'columnAmount', \max( 0, $columnAmount ) );

        return $this;

    }

    /**
     * Sets the amount the required rows.
     * 
     * This value can be also 0. It means, select a dynamic amount of rows and stop at
     * a Stop-Row condition.
     *
     * @param int $rowAmount
     * @return StaticSelection
     */ 
    public function setRowAmount( int $rowAmount ) : StaticSelection
    {

        $this->setParameter( 'rowAmount', \max( 0, $rowAmount ) );

        return $this;

    }



    /**
     * Inits a new instance.
     */
    public function __construct( )
    {

        parent::__construct();

    }


    
    public function resetParameters()
    {

        $this->_properties = [
            // startCellRow startCellColumn columnAmount rowAmount
            'startCellRow' => -1,
            'startCellColumn' => -1,
            'columnAmount' => 0,
            'rowAmount' => 0
        ];

    }

    public function isValid() : bool
    {

        if ( 0 > $this->_properties[ 'startCellRow' ] || 0 > $this->_properties[ 'startCellColumn' ] )
        {

            return false;

        }

        return true;

    }



    /**
     * Parses the XML Element an return the resulting {@see StaticSelection} or NULL if the XML ELement
     * not represents a conditional selection definition
     *
     * @param \SimpleXMLElement $element
     * @param Logger $logger
     * @return StaticSelection|null
     */
    public static function ParseXMLElement( \SimpleXMLElement $element, Logger $logger = null ) : ?StaticSelection
    {

        $selectionOut = new StaticSelection();

        if ( ! $selectionOut->readXML( $element, $logger ) || ! $selectionOut->isValid() )
        {
            $selectionOut = null;
        }

        return $selectionOut;

    }

}

