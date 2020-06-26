using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Niirrty.SpreadsheetMapping.Config.Searching
{
    
    public enum SearchConditionType
    {

        /// <summary>
        /// Checks if a cell content contains a specific string or format
        /// </summary>
        Contains,

        /// <summary>
        /// Checks if a cell content starts with a specific string or format
        /// </summary>
        StartsWith,

        /// <summary>
        /// Checks if a cell content ends with a specific string or format
        /// </summary>
        EndsWith,

        /// <summary>
        /// Checks if a cell content is a specific string or format
        /// </summary>
        Is

    }

}
