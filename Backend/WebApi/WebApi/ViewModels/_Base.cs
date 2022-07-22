using System.Collections.Generic;

namespace WebApi.ViewModels
{
    public class _BaseRequest
    {

    }

    public class _BaseListResponse<T>
    {
        public List<T> Items { get; set; }
        public bool Succsess { get; set; }
        public string Message { get; set; }
    }
}