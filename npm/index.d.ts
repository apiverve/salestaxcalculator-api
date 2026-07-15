declare module '@apiverve/salestaxcalculator' {
  export interface salestaxcalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface salestaxcalculatorResponse {
    status: string;
    error: string | null;
    data: SalesTaxCalculatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface SalesTaxCalculatorData {
      amount:         number | null;
      taxRate:        number | null;
      taxRatePercent: number | null;
      taxAmount:      number | null;
      totalAmount:    number | null;
      zip:            null | string;
      state:          null | string;
      region:         null | string;
      breakdown:      Breakdown;
  }
  
  interface Breakdown {
      stateRate:   number | null;
      countyRate:  number | null;
      cityRate:    number | null;
      specialRate: number | null;
  }

  export default class salestaxcalculatorWrapper {
    constructor(options: salestaxcalculatorOptions);

    execute(callback: (error: any, data: salestaxcalculatorResponse | null) => void): Promise<salestaxcalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: salestaxcalculatorResponse | null) => void): Promise<salestaxcalculatorResponse>;
    execute(query?: Record<string, any>): Promise<salestaxcalculatorResponse>;
  }
}
