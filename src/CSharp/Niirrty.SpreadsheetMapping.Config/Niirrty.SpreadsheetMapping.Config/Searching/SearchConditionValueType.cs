using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Niirrty.SpreadsheetMapping.Config.Searching
{

    public enum SearchConditionValueType
    {

        /// <summary>
        /// Any string. (a associated value is required)
        /// </summary>
        Str,

        /// <summary>
        /// A single character from a character group. (a associated value is required)
        /// </summary>
        /// <remarks>
        /// A group can be a range like "2-4" or "a-f", single chars or a mix of it like "a-f0-9="
        /// </remarks>
        CharFromCharGroup,

        /// <summary>
        /// One or more characters from a character group. (a associated value is required)
        /// </summary>
        /// <remarks>
        /// A group can be a range like "2-4" or "a-f", single chars or a mix of it like "a-f0-9="
        /// </remarks>
        CharsFromCharGroup,

        /// <summary>
        /// One or more linebreaks: "\n" "\r\n" and "\r" is always a single line break.
        /// </summary>
        /// <remarks>
        /// If a value is defined, it can be defined as a <see cref="IntegerRange"/> instance and means the amount.
        /// </remarks>
        Linebreak,

        /// <summary>
        /// One or more tabulators.
        /// </summary>
        /// <remarks>
        /// If a value is defined, it can be defined as a <see cref="IntegerRange"/> instance and means the amount.
        /// </remarks>
        Tabulator,

        /// <summary>
        /// One or more unicode word characters.
        /// </summary>
        /// <remarks>
        /// If a value is defined, it can be defined as a <see cref="IntegerRange"/> instance and means the amount.
        /// </remarks>
        WordChar,

        /// <summary>
        /// One or more alphanumeric characters.
        /// </summary>
        /// <remarks>
        /// If a value is defined, it can be defined as a <see cref="IntegerRange"/> instance and means the amount.
        /// </remarks>
        AlphaNumericChar,

        /// <summary>
        /// One or more whitespace characters. It covers "\0", "\n", "\r", "\t" and spaces " "
        /// </summary>
        /// <remarks>
        /// If a value is defined, it can be defined as a <see cref="IntegerRange"/> instance and means the amount.
        /// </remarks>
        Whitespace,

        /// <summary>
        /// Any String that matches a regular expression. The regex must never contain delimiters, "^", "$" and global modifiers!
        /// </summary>
        /// <remarks>
        /// A associated value (regex) is required
        /// </remarks>
        Regex

    }

}
