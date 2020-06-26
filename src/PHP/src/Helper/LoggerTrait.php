<?php

namespace Niirrty\SpeeadsheetMapping\API\Helper;


use \Monolog\Logger;


trait LoggerTrait
{

    protected final function logInfo( ?Logger $logger, string $message, array $context = [] )
    {

        if ( null === $logger ) { return; }
        $logger->info( $message, $this->prepareLogContext( $context ) );

    }

    protected final function logDebug( ?Logger $logger, string $message, array $context = [] )
    {

        if ( null === $logger ) { return; }
        $logger->debug( $message, $this->prepareLogContext( $context ) );

    }

    protected final function logWarning( ?Logger $logger, string $message, array $context = [] )
    {

        if ( null === $logger ) { return; }
        $logger->warning( $message, $this->prepareLogContext( $context ) );

    }

    protected final function logError( ?Logger $logger, string $message, array $context = [] )
    {

        if ( null === $logger ) { return; }
        $logger->error( $message, $this->prepareLogContext( $context ) );

    }

    private function prepareLogContext( array $context = [] ) : array
    {

        if ( 0 === \count( $context ) )
        {
            $context = [ 'SelectionType' => __CLASS__ ];
        }

        return $context;

    }

}
