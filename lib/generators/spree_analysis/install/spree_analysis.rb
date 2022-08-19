reports = {
  finance_analysis:           [
    :payment_method_transactions, :payment_method_transactions_conversion_rate,
    :shipping_cost, :sales_tax, :sales_performance
  ],
  product_analysis:           [
    :best_selling_products, :cart_additions, :unique_purchases,
    :returned_products
  ]
}

SpreeAnalysis::ReportConfig.configure do |config|
  reports.keys.each do |report_category|
    config.register_report_category(report_category)
    reports[report_category].each { |report| config.register_report(report_category, report) }
  end
end
