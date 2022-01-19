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

    # State model for ISO-3166-2
    class StateModel

        # Initialize the StateModel using the provided prototype
        def initialize(params = {})
            @name = params.fetch(:name)
            @alpha2 = params.fetch(:alpha2)
            @aliases = params.fetch(:aliases)
        end

        # @return [String] Name of the state
        attr_accessor :name
        # @return [String] 2 letter alphabetic code for the given state
        attr_accessor :alpha2
        # @return [String] A different name for a state
        attr_accessor :aliases
    end
end
