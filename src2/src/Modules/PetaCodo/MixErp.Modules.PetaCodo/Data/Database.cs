using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MixErp.Modules.PetaCodo.Data
{
    public class Database : IDisposable
    {
        
        public Database(IDbConnection connection)
        {
            _sharedConnection = connection;
            _connectionString = connection.ConnectionString;
            _sharedConnectionDeph = 2;
            CommonConstruct();
        }

        public Database(string connectionString, string providername)
        {
            _connectionString = connectionString;
            _providerName = providerName;
            CommonConstruct();
        }

        public Database(string connectionString, DbProviderFactiry provider)
        {
            _connectionString = connectionString;
            _factory = provider;
            CommonConstruct();
        }

        public Database(string connectionStringName)
        {
            if (connectionStringName == "")
                connectionStringName = ConfigurationManager.ConnectionString[0].Name;

            // Work out connection string and provider name
            var provideName = "System.Data.SqlClient";
            if (ConfigurationManager.ConnectionString[connectionStringName] != null)
            {
                if (!string.IsNullOrEmpty(ConfigurationManager.ConnectionStrings[connectionStringName].ProviderName))
                    providerName = ConfigurationManager.ConnectionStrings[connectionStringName].ProviderName;
            }

            else
            {
                throw new InvalidOperationException("Can't find a connection string with the name '" + connectionStringName + "'");
            }

            // Store factory and connection string
            _connectionString = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
            _providerName = providerName;
            CommonConstruct();
        }

        enum DBType
        {
            SqlServer,
            SqlServerCE,
            MySql,
            PostgreSql,
            Oracle,
            SQLite
        }

        DBType dBType = DBType.SqlServer;

        //Common Initialization
        private void CommonConstruct()
        {
            _transactionDepth = 0;
            EnableAutoSelect = true;
            EnableNamedParams = true;
            ForceDateTimeToUtc = true;

            if (_providerName != null)
                _factory = DbProviderFactories.GetFactory(_providerName);

            string dbtype = (_factory == null ? _sharedConnection.GetType() : _factory.GetType()).Name;

            // Try using type name first (more reliable)
            if (dbtype.StartsWith("MySql")) _dbType = DBType.MySql;
            else if (dbtype.StartsWith("SqlCe")) _dbType = DBType.SqlServerCE;
            else if (dbtype.StartsWith("Npgsql")) _dbType = DBType.PostgreSQL;
            else if (dbtype.StartsWith("Oracle")) _dbType = DBType.Oracle;
            else if (dbtype.StartsWith("SQLite")) _dbType = DBType.SQLite;
            else if (dbtype.StartsWith("System.Data.SqlClient.")) _dbType = DBType.SqlServer;
            // else try with provider name
            else if (_providerName.IndexOf("MySql", StringComparison.InvariantCultureIgnoreCase) >= 0) _dbType = DBType.MySql;
            else if (_providerName.IndexOf("SqlServerCe", StringComparison.InvariantCultureIgnoreCase) >= 0) _dbType = DBType.SqlServerCE;
            else if (_providerName.IndexOf("Npgsql", StringComparison.InvariantCultureIgnoreCase) >= 0) _dbType = DBType.PostgreSQL;
            else if (_providerName.IndexOf("Oracle", StringComparison.InvariantCultureIgnoreCase) >= 0) _dbType = DBType.Oracle;
            else if (_providerName.IndexOf("SQLite", StringComparison.InvariantCultureIgnoreCase) >= 0) _dbType = DBType.SQLite;

            if (_dbType == DBType.MySql && _connectionString != null && _connectionString.IndexOf("Allow User Variables=true") >= 0)
                _paramPrefix = "?";
            if (_dbType == DBType.Oracle)
                _paramPrefix = ":"; 
        }


        public void Dispose()
        {
            // Automatically close one open connection reference
            //  (Works with KeepConnectionAlive and manually opening a shared connection)
            CloseSharedConnection();
        }

        // Set to true to keep the first opened connection alive until this object is disposed
        public bool KeepConnectionAlive { get; set; }

        // Open a connection (can be nested)
        public void OpenSharedConnection()
        {
            if (_sharedConnectionDepth == 0)
            {
                _sharedConnection = _factory.CreateConnection();
                _sharedConnection.ConnectionString = _connectionString;
                _sharedConnection.Open();

                _sharedConnection = OnConnectionOpened(_sharedConnection);

                if (KeepConnectionAlive)
                    _sharedConnectionDepth++;		// Make sure you call Dispose
            }
            _sharedConnectionDepth++;
        }

        // Close a previously opened connection

        public void CloseSharedConnection()
        {
            if (_sharedConnectionDepth > 0)
            {
                _sharedConnectionDepth--;
                if (_sharedConnectionDepth == 0)
                {
                    OnConnectionClosing(_sharedConnection);
                    _sharedConnection.Dispose();
                    _sharedConnection = null;
                }
            }
        }

        // Access to our shared connection
        public IDbConnection Connection
        {
            get { return _sharedConnection; }
        }

        // Helper to create a transaction scope
        public Transaction GetTransaction()
        {
            return new Transaction(this);
        }
        //271
    }
}
