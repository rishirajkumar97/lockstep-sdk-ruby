#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # A Payment represents money sent from one company to another.  A single payment may contain payments for
    # one or more invoices; it is also possible for payments to be made in advance of an invoice, for example,
    # as a deposit.  The creator of the Payment is identified by the `CustomerId` field, and the recipient of
    # the Payment is identified by the `CompanyId` field.  Most Payments are uniquely identified both by a
    # Lockstep Platform ID number and a customer ERP "key" that was generated by the system that originated
    # the Payment.  Payments that have not been fully applied have a nonzero `UnappliedAmount` value, which
    # represents a deposit that has been paid and not yet applied to an Invoice.
    class PaymentModel

        # Initialize the PaymentModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_id = params.dig(:payment_id)
            @company_id = params.dig(:company_id)
            @erp_key = params.dig(:erp_key)
            @payment_type = params.dig(:payment_type)
            @tender_type = params.dig(:tender_type)
            @is_open = params.dig(:is_open)
            @memo_text = params.dig(:memo_text)
            @payment_date = params.dig(:payment_date)
            @post_date = params.dig(:post_date)
            @payment_amount = params.dig(:payment_amount)
            @unapplied_amount = params.dig(:unapplied_amount)
            @currency_code = params.dig(:currency_code)
            @reference_code = params.dig(:reference_code)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @is_voided = params.dig(:is_voided)
            @in_dispute = params.dig(:in_dispute)
            @applications = params.dig(:applications)
            @notes = params.dig(:notes)
            @attachments = params.dig(:attachments)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_id
        # @return [Uuid] The ID of the company to which this payment belongs.
        attr_accessor :company_id
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [String] The type of payment, cash or check.
        attr_accessor :payment_type
        # @return [String] Cash, check, credit card, wire transfer.
        attr_accessor :tender_type
        # @return [Boolean] Has the payment been fully applied?
        attr_accessor :is_open
        # @return [String] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [Date] The date of this payment.
        attr_accessor :payment_date
        # @return [Date] Payment post date.
        attr_accessor :post_date
        # @return [Double] Total amount of this payment.
        attr_accessor :payment_amount
        # @return [Double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount
        # @return [String] Currency of the payment. This will be validated by the /api/v1/currencies data set
        attr_accessor :currency_code
        # @return [String] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [Date-time] The date on which this record was created.
        attr_accessor :created
        # @return [Uuid] The ID of the user who created this payment.
        attr_accessor :created_user_id
        # @return [Date-time] The date on which this record was last modified.
        attr_accessor :modified
        # @return [Uuid] The ID of the user who last modified this payment.
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [Boolean] Is the payment voided?
        attr_accessor :is_voided
        # @return [Boolean] Is the payment in dispute?
        attr_accessor :in_dispute
        # @return [PaymentAppliedModel] All applications this payment is associated with. To retrieve this collection, specify `Applications` in the "Include" parameter for your query.
        attr_accessor :applications
        # @return [NoteModel] All notes attached to this payment. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this payment. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [CustomFieldDefinitionModel] All definitions attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [CustomFieldValueModel] All values attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values

        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentId' => @payment_id,
                'companyId' => @company_id,
                'erpKey' => @erp_key,
                'paymentType' => @payment_type,
                'tenderType' => @tender_type,
                'isOpen' => @is_open,
                'memoText' => @memo_text,
                'paymentDate' => @payment_date,
                'postDate' => @post_date,
                'paymentAmount' => @payment_amount,
                'unappliedAmount' => @unapplied_amount,
                'currencyCode' => @currency_code,
                'referenceCode' => @reference_code,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
                'isVoided' => @is_voided,
                'inDispute' => @in_dispute,
                'applications' => @applications,
                'notes' => @notes,
                'attachments' => @attachments,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
            }
        end

        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
