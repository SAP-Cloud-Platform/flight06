@AbapCatalog.sqlViewName: '/DMO/CURRHLP06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Help View for Currency Conversion'
define view /DMO/CURRENCY_HELPER06
  with parameters
    amount             : /dmo/total_price06,
    source_currency    : /dmo/currency_code06,
    target_currency    : /dmo/currency_code06,
    exchange_rate_date : /dmo/booking_date06

  as select from /dmo/agency06

{
  key currency_conversion( amount             => $parameters.amount,
                           source_currency    => $parameters.source_currency,
                           target_currency    => $parameters.target_currency,
                           exchange_rate_date => $parameters.exchange_rate_date,
                           error_handling     => 'SET_TO_NULL' ) as ConvertedAmount
}
