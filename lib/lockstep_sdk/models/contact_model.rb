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

    # A Contact contains information about a person or role within a Company.
    # You can use Contacts to track information about who is responsible for a specific project,
    # who handles invoices, or information about which role at a particular customer or
    # vendor you should speak with about invoices.
    class ContactModel

        # Initialize the ContactModel using the provided prototype
        def initialize(params = {})
            @contact_id = params.fetch(:contact_id)
            @company_id = params.fetch(:company_id)
            @group_key = params.fetch(:group_key)
            @erp_key = params.fetch(:erp_key)
            @contact_name = params.fetch(:contact_name)
            @contact_code = params.fetch(:contact_code)
            @title = params.fetch(:title)
            @role_code = params.fetch(:role_code)
            @email_address = params.fetch(:email_address)
            @phone = params.fetch(:phone)
            @fax = params.fetch(:fax)
            @address1 = params.fetch(:address1)
            @address2 = params.fetch(:address2)
            @address3 = params.fetch(:address3)
            @city = params.fetch(:city)
            @state_region = params.fetch(:state_region)
            @postal_code = params.fetch(:postal_code)
            @country_code = params.fetch(:country_code)
            @is_active = params.fetch(:is_active)
            @webpage_url = params.fetch(:webpage_url)
            @picture_url = params.fetch(:picture_url)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @modified = params.fetch(:modified)
            @modified_user_id = params.fetch(:modified_user_id)
            @app_enrollment_id = params.fetch(:app_enrollment_id)
            @notes = params.fetch(:notes)
            @attachments = params.fetch(:attachments)
            @custom_field_definitions = params.fetch(:custom_field_definitions)
            @custom_field_values = params.fetch(:custom_field_values)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :contact_id
        # @return [Uuid] The ID of the company to which this contact belongs.
        attr_accessor :company_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [String] The name of the contact.
        attr_accessor :contact_name
        # @return [String] A friendly human-readable code that describes this Contact.
        attr_accessor :contact_code
        # @return [String] The title of the contact.
        attr_accessor :title
        # @return [String] The role code for the contact.
        attr_accessor :role_code
        # @return [Email] The email address of the contact.
        attr_accessor :email_address
        # @return [String] The phone number of the contact.
        attr_accessor :phone
        # @return [String] The fax number of the contact.
        attr_accessor :fax
        # @return [String] The first line of the address.
        attr_accessor :address1
        # @return [String] The second line of the address.
        attr_accessor :address2
        # @return [String] The third line of the address.
        attr_accessor :address3
        # @return [String] The city of the address.
        attr_accessor :city
        # @return [String] The state/region of the address.
        attr_accessor :state_region
        # @return [String] The postal/zip code of the address.
        attr_accessor :postal_code
        # @return [String] The two character country code of the address. This will be validated by the /api/v1/countries data set
        attr_accessor :country_code
        # @return [Boolean] Flag indicating if the contact is active.
        attr_accessor :is_active
        # @return [Uri] The webpage url of the contact.
        attr_accessor :webpage_url
        # @return [Uri] The picture/avatar url of the contact.
        attr_accessor :picture_url
        # @return [Date-time] The date on which this record was created.
        attr_accessor :created
        # @return [Uuid] The ID of the user who created this contact.
        attr_accessor :created_user_id
        # @return [Date-time] The date on which this record was last modified.
        attr_accessor :modified
        # @return [Uuid] The ID of the user who last modified this contact.
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [NoteModel] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [CustomFieldDefinitionModel] All definitions attached to this contact. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [CustomFieldValueModel] All values attached to this contact. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
