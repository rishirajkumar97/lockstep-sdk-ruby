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

    # Aggregated Attachment status information.
    class AttachmentHeaderInfoModel

        # Initialize the AttachmentHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.fetch(:group_key)
            @company_id = params.fetch(:company_id)
            @total_attachments = params.fetch(:total_attachments)
            @total_archived = params.fetch(:total_archived)
            @total_active = params.fetch(:total_active)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The CompanyId associated with the attachment status report. Providing a null value will return an attachment summary for all attachments associated to the provided GroupKey
        attr_accessor :company_id
        # @return [Int32] The total number of attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_attachments
        # @return [Int32] The total number of archived attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_archived
        # @return [Int32] The total number of active attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_active
    end
end
