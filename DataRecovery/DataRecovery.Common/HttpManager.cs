using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace DataRecovery.Common
{
    public class HttpManager
    {
        public async Task<T> GetRequest<T>(string uri)
        {
            
            try
            {
                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    using (HttpResponseMessage response = await client.GetAsync(uri))
                    {
                        response.EnsureSuccessStatusCode();
                        string responseBody = await response.Content.ReadAsStringAsync();

                        return JsonConvert.DeserializeObject<T>(responseBody);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace +"url"+uri);
                Logger.LogInfo(ex.Message + ex.StackTrace + "url" + uri);
            }

            return default(T);
        }

        public async Task<dynamic> PostRequest<TIn>(string uri, TIn content)
        {
            try
            {

               

                using (var client = new HttpClient(new HttpClientHandler
                {
                    UseProxy = false
                }))
                {
                    client.Timeout = TimeSpan.FromSeconds(20);
                    client.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));
                    var serialized = new StringContent(JsonConvert.SerializeObject(content), Encoding.UTF8, "application/json");
                    using (HttpResponseMessage response = client.PostAsync(uri, serialized).Result)
                    {
                        response.EnsureSuccessStatusCode();
                        string responseBody = await response.Content.ReadAsStringAsync();
                        return JsonConvert.DeserializeObject<dynamic>(responseBody);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace+"url"+uri);
                Logger.LogInfo(ex.Message + ex.StackTrace + "url" + uri);
            }

            return default(dynamic);
        }
    }
}
