﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Net5.Common.Extensions
{
    public static class NullableTypes
    {
        public static int ToInt(this int? val)
        {
            return val ?? 0;
        }

        public static long ToLong(this long? val)
        {
            return val ?? 0;
        }

        public static bool ToBool(this bool? val)
        {
            return val ?? false;
        }
    }
}
