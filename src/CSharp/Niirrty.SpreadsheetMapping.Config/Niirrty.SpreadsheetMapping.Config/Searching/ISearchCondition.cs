using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Niirrty.SpreadsheetMapping.Config.Searching
{
    
    public interface ISearchCondition
    {

        string Name { get; set; }

        SearchConditionType Type { get; set; }

        bool Reverse { get; set; }

        bool Trim { get; set; }

        SearchConditionValueType ValueType { get; set; }

        bool Caseless { get; set; }

        string Value { get; set; }

        IntegerRange Range { get; set; }

    }

}
