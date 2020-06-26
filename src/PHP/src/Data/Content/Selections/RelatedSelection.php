<?php
/**
 * @author         Ni Irrty <niirrty+code@gmail.com>
 * @copyright  (c) 2020, Ni Irrty
 * @since          2020-03-12
 */


declare( strict_types = 1 );


namespace Niirrty\SpeeadsheetMapping\API\Data\Content\Selections;

use Monolog\Logger;


class RelatedSelection extends Selection
{


    /**
     * The reference name (name of an other cell/range mapping)
     * 
     * @return string
     */ 
    public function getReference() : string
    {

        $value = $this->getParameter( 'reference' );

        if ( null === $value ) { return $value; }

        return (string) $value;
        
    }

    /**
     * Gets the amount of start offset rows. The rows are counted horicontaly if columns are verticaly
     * and the rows are counted verticaly if columns are horicontaly.
     * 
     * This is the offset of reference first matching selected cell (top left if columns are ordered
     * verticaly, bottom left if columns are horicontaly)
     * 
     * If no start offset should be used, null is the right value here.
     * 
     * @return int|null
     */ 
    public function getStartOffsetRows() : ?int
    {

        $value = $this->getParameter( 'startOffsetRows' );

        if ( null === $value ) { return $value; }

        return (int) $value;

    }

    /**
     * Gets the amount of start offset columns.
     * 
     * This is the offset of reference first matching selected cell (top left if columns are ordered
     * verticaly, bottom left if columns are horicontaly)
     * 
     * If no start offset should be used, null is the right value here.
     * 
     * @return int|null
     */ 
    public function getStartOffsetColumns() : ?int
    {

        $value = $this->getParameter( 'startOffsetColumns' );

        if ( null === $value ) { return $value; }

        return (int) $value;

    }

    /**
     * Gets the amount of end offset rows. The rows are counted horicontaly if columns are verticaly
     * and the rows are counted verticaly if columns are horicontaly.
     * 
     * This is the offset of reference last matching selected cell (bottom right if columns are ordered
     * verticaly, top right if columns are horicontaly)
     * 
     * If no end offset should be used, null is the right value here.
     * 
     * @return int|null
     */ 
    public function getEndOffsetRows() : ?int
    {

        $value = $this->getParameter( 'endOffsetRows' );

        if ( null === $value ) { return $value; }

        return (int) $value;

    }

    /**
     * Gets the amount of end offset columns.
     * 
     * This is the offset of reference last matching selected cell (bottom right if columns are ordered
     * verticaly, top right if columns are horicontaly)
     * 
     * If no end offset should be used, null is the right value here.
     * 
     * @return int|null
     */ 
    public function getEndOffsetColumns() : ?int
    {

        $value = $this->getParameter( 'endOffsetColumns' );

        if ( null === $value ) { return $value; }

        return (int) $value;

    }

    /**
     * Gets the amount of rows that should be selected.
     * 
     * Valid value range is 0 - n
     * 
     * If value is lower than 1, a Stop-Row condition must be defined and the amount of selected rows is dynamic
     * 
     * @return int
     */ 
    public function getRowSelectionCount() : int
    {

        $value = $this->getParameter( 'rowSelectionCount' );

        if ( null === $value ) { return 0; }

        return (int) $value;
        
    }

    /**
     * Gets the amount of columns that should be selected.
     * 
     * Valid value range is 0 - n
     * 
     * If value is lower than 1, a Stop-Column condition must be defined and the amount of selected columns is dynamic
     * 
     * @return int
     */ 
    public function getColumnSelectionCount() : int
    {

        $value = $this->getParameter( 'columnSelectionCount' );

        if ( null === $value ) { return 0; }

        return (int) $value;
        
    }


    public function isEndOffsetSelection() : bool
    {

        return null !== $this->_properties[ 'endOffsetColumns' ] &&
               null !== $this->_properties[ 'endOffsetRows' ];

    }
    
    public function isStartOffsetSelection() : bool
    {

        return null !== $this->_properties[ 'startOffsetColumns' ] &&
               null !== $this->_properties[ 'startOffsetRows' ];

    }



    /**
     * Set the reference name (name of an other cell/range mapping)
     *
     * @param string $reference 
     * @return RelatedSelection
     * @throws \Niirrty\ArgumentException If $reference is empty.
     */ 
    public function setReference( string $reference ) : RelatedSelection
    {

        if ( null === $reference || '' === \trim( $reference ) )
        {
            throw new \Niirrty\ArgumentException(
                'reference',
                $reference,
                'Unknown (invalid) SpreadsheetMapping API content selection reference!'
            );
        }

        $this->setParameter( 'reference', $reference );

        return $this;

    }

    /**
     * Set the amount of start offset rows. The rows are counted horicontaly if columns are verticaly
     * and the rows are counted verticaly if columns are horicontaly.
     * 
     * This is the offset of reference first matching selected cell (top left if columns are ordered
     * verticaly, bottom left if columns are horicontaly)
     * 
     * If no start offset should be used, null is the right value here.
     *
     * @param int|null $startOffsetRows
     * @return RelatedSelection
     */ 
    public function setStartOffsetRows( ?int $startOffsetRows ) : RelatedSelection
    {

        $this->setParameter( 'startOffsetRows', $startOffsetRows );

        return $this;

    }

    /**
     * Sets the amount of start offset columns.
     * 
     * This is the offset of reference first matching selected cell (top left if columns are ordered
     * verticaly, bottom left if columns are horicontaly)
     * 
     * If no start offset should be used, null is the right value here.
     *
     * @param int|null $startOffsetColumns
     * @return RelatedSelection
     */ 
    public function setStartOffsetColumns( ?int $startOffsetColumns ) : RelatedSelection
    {

        $this->setParameter( 'startOffsetColumns', $startOffsetColumns );

        return $this;

    }

    /**
     * Sets the amount of end offset columns.
     * 
     * This is the offset of reference last matching selected cell (bottom right if columns are ordered
     * verticaly, top right if columns are horicontaly)
     * 
     * If no end offset should be used, null is the right value here.
     *
     * @param int|null $endOffsetRows
     * @return RelatedSelection
     */ 
    public function setEndOffsetColumns( ?int $endOffsetColumns ) : RelatedSelection
    {

        $this->setParameter( 'endOffsetColumns', $endOffsetColumns );

        return $this;

    }

    /**
     * Sets the amount of end offset rows. The rows are counted horicontaly if columns are verticaly
     * and the rows are counted verticaly if columns are horicontaly.
     * 
     * This is the offset of reference last matching selected cell (bottom right if columns are ordered
     * verticaly, top right if columns are horicontaly)
     * 
     * If no end offset should be used, null is the right value here.
     *
     * @param int|null $endOffsetRows
     * @return RelatedSelection
     */ 
    public function setEndOffsetRows( ?int $endOffsetRows ) : RelatedSelection
    {

        $this->setParameter( 'endOffsetRows', $endOffsetRows );

        return $this;

    }

    /**
     * Sets the amount of rows that should be selected.
     * 
     * Valid value range is 1 - n
     *
     * @param int $rowSelectionCount
     * @return RelatedSelection
     */ 
    public function setRowSelectionCount( int $rowSelectionCount ) : RelatedSelection
    {

        $this->setParameter( 'rowSelectionCount', $rowSelectionCount );

        return $this;

    }

    /**
     * Sets the amount of columns that should be selected.
     * 
     * Valid value range is 1 - n
     *
     * @param int $rowSelectionCount
     * @return RelatedSelection
     */ 
    public function setColumnSelectionCount( int $columnSelectionCount ) : RelatedSelection
    {

        $this->setParameter( 'columnSelectionCount', $columnSelectionCount );

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
            // reference startOffsetRows startOffsetColumns endOffsetColumns endOffsetRows rowSelectionCount columnSelectionCount
            'reference' => null,
            'startOffsetRows' => null,
            'startOffsetColumns' => null,
            'endOffsetColumns' => null,
            'endOffsetRows' => null,
            'rowSelectionCount' => 1,
            'columnSelectionCount' => 1
        ];

    }

    public function isValid() : bool
    {

        if ( null === $this->_properties[ 'reference' ] || '' === \trim( $this->_properties[ 'reference' ] ) )
        {

            return false;

        }

        if ( ( null === $this->_properties[ 'startOffsetRows' ] || null === $this->_properties[ 'startOffsetColumns' ] ) &&
             ( null === $this->_properties[ 'endOffsetRows'   ] || null === $this->_properties[ 'endOffsetColumns'   ] ) )
        {

            return false;

        }

        return true;

    }

    /**
     * Parses the XML Element an return the resulting {@see RelatedSelection} or NULL if the XML ELement
     * not represents a conditional selection definition
     *
     * @param \SimpleXMLElement $element
     * @param Logger $logger
     * @return RelatedSelection|null
     */
    public static function ParseXMLElement( \SimpleXMLElement $element, Logger $logger = null ) : ?RelatedSelection
    {

        $selectionOut = new RelatedSelection();

        if ( ! $selectionOut->readXML( $element, $logger ) || ! $selectionOut->isValid() )
        {
            $selectionOut = null;
        }

        return $selectionOut;

    }

}

