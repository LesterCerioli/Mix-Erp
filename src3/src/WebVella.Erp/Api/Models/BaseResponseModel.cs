using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace WebVella.Erp.Api.Models
{
    public class BaseResponseModel
    {
        [JsonProperty(PropertyName = "timestamp")]
        public DateTime Timestamp { get; set; }

        [JsonProperty(PropertyName = "success")]
        public bool Success { get; set; }

        [JsonProperty(PropertyName = "message")]
        public string Message { get; set; }

        [JsonProperty(PropertyName = "hash")]
        public string Hash { get; set; }

        [JsonProperty(PropertyName = "errors")]
        public List<ErrorModel> Errors { get; set; }

        [JsonProperty(PropertyName = "accessWarnings")]
        public List<AccessWarningModel> AccessWarnings { get; set; }

        [JsonIgnore]
        public HttpStatusCode StatusCode { get; set; }

        public BaseResponseModel()
        {
            Hash = null;
            Errors = new List<ErrorModel>();
            AccessWarnings = new List<AccessWarningModel>();
            StatusCode = HttpStatusCode.OK;
        }
    }

    public class ResponseModel
    {
        [JsonProperty(PropertyName = "object")]
        public object Object { get; set; }

        public ResponseModel() : base()
        {
        }
    }

    public class AccessWarningModel
    {
        [JsonProperty(PropertyName = "key")]
        public string Key { get; set; }

        [JsonProperty(PropertyName = "code")]
        public string Code { get; set; }

        [JsonProperty(PropertyName = "message")]
        public string Message { get; set; }
    }

    public class ErrorModel
    {
        [JsonProperty(PropertyName = "key")]
        public string Key { get; set; }

        [JsonProperty(PropertyName = "value")]
        public string Value { get; set; }

        [JsonProperty(PropertyName = "message")]
        public string Message { get; set; }

        public ErrorModel()
        {
        }

        public ErrorModel(string key, string value, string message)
        {
            Key = key;
            Value = value;
            Message = message;
        }
    }
}
