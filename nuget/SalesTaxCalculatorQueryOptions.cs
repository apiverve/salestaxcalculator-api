using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.SalesTaxCalculator
{
    /// <summary>
    /// Query options for the Sales Tax Calculator API
    /// </summary>
    public class SalesTaxCalculatorQueryOptions
    {
        /// <summary>
        /// Purchase amount to calculate tax on
        /// </summary>
        [JsonProperty("amount")]
        public string Amount { get; set; }

        /// <summary>
        /// Valid US 5-digit ZIP code
        /// </summary>
        [JsonProperty("zip")]
        public string Zip { get; set; }

        /// <summary>
        /// 2-letter US state code (e.g., CA, NY, TX)
        /// </summary>
        [JsonProperty("state")]
        public string State { get; set; }
    }
}
