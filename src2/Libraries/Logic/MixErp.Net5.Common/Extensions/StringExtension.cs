using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace MixErp.Net5.Common.Extensions
{
    public static class StringExtension
    {
        public static bool AnyNullOrWhitespace(this string[] items)
        {
            foreach (string item in items)
            {
                if (string.IsNullOrWhiteSpace(item))
                {
                    return true;
                }
            }

            return false;
        }

        public static string ToFormattedNumber(this string number, string format)
        {
            decimal value = Conversion.TryCastDecimal(number);

            if (value.Equals(0))
            {
                return string.Empty;
            }

            return string.Format(Thread.CurrentThread.CurrentUICulture, format, value);
        }
    }
}
