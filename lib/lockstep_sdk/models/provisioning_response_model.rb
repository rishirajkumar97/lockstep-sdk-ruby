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

    # Represents the response to either a successful or failed account provisioning
    class ProvisioningResponseModel

        # Initialize the ProvisioningResponseModel using the provided prototype
        def initialize(params = {})
            @user_name = params.fetch(:user_name)
            @account_name = params.fetch(:account_name)
            @user_id = params.fetch(:user_id)
            @group_key = params.fetch(:group_key)
            @app_enrollment_id = params.fetch(:app_enrollment_id)
            @sync_request_id = params.fetch(:sync_request_id)
            @error_message = params.fetch(:error_message)
        end

        # @return [String] If provisioning is successful, contains the username of the created user.
        attr_accessor :user_name
        # @return [String] If provisioning is successful, contains subscription account name of created user.
        attr_accessor :account_name
        # @return [Uuid] If provisioning is successful, contains the unique identifier of the created user.
        attr_accessor :user_id
        # @return [Uuid] If provisioning is successful, contains the group key of the created user.
        attr_accessor :group_key
        # @return [Uuid] If provisioning is successful, contains the app enrollment id of the created app enrollment.
        attr_accessor :app_enrollment_id
        # @return [Uuid] if provisioning is successful, contains the sync request id of the sync that was started for the app enrollment.
        attr_accessor :sync_request_id
        # @return [String] The error message(s).
        attr_accessor :error_message
    end
end
