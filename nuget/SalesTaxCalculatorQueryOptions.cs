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
        /// Purchase amount to calculate tax on (0 to 1,000,000,000,000)
        /// </summary>
        [JsonProperty("amount")]
        public double Amount { get; set; }

        /// <summary>
        /// Valid US 5-digit ZIP code (required unless state is given). ZIP+4 (64082-1234) is accepted and priced at its 5-digit ZIP. If both zip and state are given, zip wins and state is ignored
        /// </summary>
        [JsonProperty("zip")]
        public string Zip { get; set; }

        /// <summary>
        /// 2-letter US state code (e.g., CA, NY, TX); used when zip is not given, state rate only
        /// </summary>
        [JsonProperty("state")]
        public string State { get; set; }
    }
}
