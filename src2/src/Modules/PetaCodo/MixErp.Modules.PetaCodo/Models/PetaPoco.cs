using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Modules.PetaCodo.Models
{

    [AttributeUsage(AttributeTargets.Class)]
    public class ExplicitColummsAttribute : Attribute
    {
    }


    [AttributeUsage(AttributeTargets.Property)]
    public class IgnoreAttribute : Attribute
    {

    }

    [AttributeUsage(AttributeTargets.Property)]
    public class CollumAttribute : Attribute
    {
        public CollumAttribute() { }
        public CollumAttribute(string name) { name = name; }
        public string Name { get; set; }
    }

    [AttributeUsage(AttributeTargets.Property)]
    public class ResultColumnAttribute : ColumnAttribute
    {
        public ResultColumnAttribute() { }
        public ResultColumnAttribute(string name) : base(name) { }
                       

    }

    [AttributeUsage(AttributeTargets.Class)]
    public class TableNameAttribute : Attribute
    {
        public TableNameAttribute(string tableName)
        {
            Value = tableName;
        }
        public string Value { get; private set; }
    }


    [AttributeUsage(AttributeTargets.Class)]
    public class PrimaryKeyAttribute : Attribute
    {

        
        public PrimaryKeyAttribute(string primaryKey)
        {
            Value = primaryKey;
            autoIncrement = false;
        }

        public string Value { get; private set; }
        public string sequenceName { get; set; }
        public bool autoIncrement { get; set; }
    }


    [AttributeUsage(AttributeTargets.Property)]
    public class AutoJoinAttribute : Attribute
    {
        public AutoJoinAttribute() { }
    }

    public class Page<T>
    {
        public long CurrentPage { get; set; }
        public long TotalPages { get; set; }
        public long TotalItems { get; set; }
        public long ItemsPerPage { get; set; }
        public List<T> Items { get; set; }
        public object Context { get; set; }

    }

    public class AnsiString
    {
        public AnsiString(string str)
        {
            Value = str;
        }

        public string Value { get; private set; }
    }

    public class TableInfo
    {
        public string TableName { get; set; }
        public string PrimaryKey { get; set; }
        public bool AutoIncrement { get; set; }
        public string Sequencename { get; set; }
    }


}
