using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Models.Catalogs
{
    public class ResponseBase<T>
    {
        public T Response { get; set; }
        public TypeReponse Status { get; set; }
        public string Message { get; set; }
    }

    public enum TypeReponse
    {
        Ok,
        Error,
        ConnectivityError
    }
}
