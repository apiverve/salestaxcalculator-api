declare module '@apiverve/salestaxcalculator' {
  export interface salestaxcalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface salestaxcalculatorResponse {
    status: string;
    error: string | null;
    data: SalesTaxCalculatorData;
    code?: number;
  }


  interface SalesTaxCalculatorData {
      amount:         number;
      taxRate:        number;
      taxRatePercent: number;
      taxAmount:      number;
      totalAmount:    number;
      zip:            string;
      state:          string;
      region:         string;
      breakdown:      Breakdown;
  }
  
  interface Breakdown {
      stateRate:   number;
      countyRate:  number;
      cityRate:    number;
      specialRate: number;
  }

  export default class salestaxcalculatorWrapper {
    constructor(options: salestaxcalculatorOptions);

    execute(callback: (error: any, data: salestaxcalculatorResponse | null) => void): Promise<salestaxcalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: salestaxcalculatorResponse | null) => void): Promise<salestaxcalculatorResponse>;
    execute(query?: Record<string, any>): Promise<salestaxcalculatorResponse>;
  }
}
