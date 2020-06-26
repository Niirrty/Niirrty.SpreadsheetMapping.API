using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Niirrty.SpreadsheetMapping.Config.Searching
{

    public class IntegerRange
    {

        public int? Start { get; set; }
        public int? End { get; set; }

        public IntegerRange( int? start = null, int? end = null )
        {
            Start = start;
            End = end;
        }

        public bool IsValid()
        {
            if ( Start.HasValue && End.HasValue )
            {
                return Start.Value <= End.Value;
            }
            return true;
        }

        public override string ToString()
        {
            if ( ! Start.HasValue )
            {
                if ( ! End.HasValue )
                {
                    return "";
                }
                return "," + End.Value.ToString();
            }
            if ( ! End.HasValue )
            {
                return Start.Value.ToString();
            }
            return Start.Value.ToString() + "," + End.Value.ToString();
        }

        public bool TryParse( string str, out IntegerRange range )
        {

            range = null;

            // Empty string => create a empty instance
            if ( string.IsNullOrEmpty( str ) )
            {
                range = new IntegerRange();
                return true;
            }

            // Split at Value separator ,
            var parts = str.Split( ',' );
            int start, end;

            if ( 1 == parts.Length )
            {
                // single part => start value
                if ( ! int.TryParse( parts[ 0 ], out start ) )
                {
                    return false;
                }
                Start = start;
                End = null;
                return true;
            }

            if ( 2 != parts.Length || ! int.TryParse( parts[ 1 ], out end ) )
            {
                // Invalid format
                return false;
            }

            // Use the end value
            End = end;

            if ( "" != parts[ 0 ].Trim() )
            {
                // A start value is defined
                if ( ! int.TryParse( parts[ 0 ], out start ) )
                {
                    return false;
                }
                Start = start;
            }

            return true;

        }

    }

}
