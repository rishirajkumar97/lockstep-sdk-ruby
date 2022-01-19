#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Represents the cashflow report based on a timeframe
    class CashflowReportModel

        # Initialize the CashflowReportModel using the provided prototype
        def initialize(params = {})
            @timeframe = params.fetch(:timeframe)
            @payments_collected = params.fetch(:payments_collected)
            @payments_collected_count = params.fetch(:payments_collected_count)
            @invoices_billed = params.fetch(:invoices_billed)
            @invoices_billed_count = params.fetch(:invoices_billed_count)
        end

        # @return [Int32] Timeframe in days the cashflow report is generated on
        attr_accessor :timeframe
        # @return [Double] Amount of payments collected based in the timeframe
        attr_accessor :payments_collected
        # @return [Int32] Number of payments collected based in the timeframe
        attr_accessor :payments_collected_count
        # @return [Double] Amount of invoices billed based in the timeframe
        attr_accessor :invoices_billed
        # @return [Int32] Number of invoices billed in the timeframe
        attr_accessor :invoices_billed_count
    end
end
