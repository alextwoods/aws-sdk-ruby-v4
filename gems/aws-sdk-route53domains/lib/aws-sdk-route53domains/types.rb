# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
  module Types

    # <p>The AcceptDomainTransferFromAnotherAwsAccount request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account submitted a
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password that was returned by the
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    #   @return [String]
    #
    AcceptDomainTransferFromAnotherAwsAccountInput = ::Struct.new(
      :domain_name,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The AcceptDomainTransferFromAnotherAwsAccount response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    AcceptDomainTransferFromAnotherAwsAccountOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information for one billing record.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that the billing record applies to. If the domain name contains characters
    #   			other than a-z, 0-9, and - (hyphen), such as an internationalized domain name, then this value is in Punycode.
    #   			For more information, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a>
    #   			in the <i>Amazon Route 53 Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The operation that you were charged for.</p>
    #
    #   Enum, one of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute invoice_id
    #   <p>The ID of the invoice that is associated with the billing record.</p>
    #
    #   @return [String]
    #
    # @!attribute bill_date
    #   <p>The date that the operation was billed, in Unix format.</p>
    #
    #   @return [Time]
    #
    # @!attribute price
    #   <p>The price that you were charged for the operation, in US dollars.</p>
    #   		       <p>Example value: 12.0</p>
    #
    #   @return [Float]
    #
    BillingRecord = ::Struct.new(
      :domain_name,
      :operation,
      :invoice_id,
      :bill_date,
      :price,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.price ||= 0
      end
    end

    # <p>The CancelDomainTransferToAnotherAwsAccount request includes the following element.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain for which you want to cancel the transfer to another Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    CancelDomainTransferToAnotherAwsAccountInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>CancelDomainTransferToAnotherAwsAccount</code> response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track the progress of the request.
    #   			Because the transfer request was canceled, the value is no longer valid, and you can't use <code>GetOperationDetail</code>
    #   			to query the operation status.</p>
    #
    #   @return [String]
    #
    CancelDomainTransferToAnotherAwsAccountOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CheckDomainAvailability request contains the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports
    #   			internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			For more information, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html domain-name-format-idns">Formatting Internationalized Domain Names</a>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    CheckDomainAvailabilityInput = ::Struct.new(
      :domain_name,
      :idn_lang_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CheckDomainAvailability response includes the following elements.</p>
    #
    # @!attribute availability
    #   <p>Whether the domain name is available for registering.</p>
    #   		       <note>
    #               <p>You can register only domains designated as <code>AVAILABLE</code>.</p>
    #            </note>
    #   		       <p>Valid values:</p>
    #   		       <dl>
    #               <dt>AVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is available.</p>
    #               </dd>
    #               <dt>AVAILABLE_RESERVED</dt>
    #               <dd>
    #                  <p>The domain name is reserved under specific conditions.</p>
    #               </dd>
    #               <dt>AVAILABLE_PREORDER</dt>
    #               <dd>
    #                  <p>The domain name is available and can be preordered.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available.
    #   					Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance.
    #   					Try again later.</p>
    #               </dd>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed,
    #   					it usually takes just a few extra seconds. You can resubmit the request immediately.</p>
    #               </dd>
    #               <dt>RESERVED</dt>
    #               <dd>
    #                  <p>The domain name has been reserved for another person or organization.</p>
    #               </dd>
    #               <dt>UNAVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_PREMIUM</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_RESTRICTED</dt>
    #               <dd>
    #                  <p>The domain name is forbidden.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW"]
    #
    #   @return [String]
    #
    CheckDomainAvailabilityOutput = ::Struct.new(
      :availability,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The CheckDomainTransferability request contains the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute auth_code
    #   <p>If the registrar for the top-level domain (TLD) requires an authorization code to transfer the domain,
    #   			the code that you got from the current registrar for the domain.</p>
    #
    #   @return [String]
    #
    CheckDomainTransferabilityInput = ::Struct.new(
      :domain_name,
      :auth_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::CheckDomainTransferabilityInput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "auth_code=\"[SENSITIVE]\">"
      end
    end

    # <p>The CheckDomainTransferability response includes the following elements.</p>
    #
    # @!attribute transferability
    #   <p>A complex type that contains information about whether the specified domain can be transferred to Route 53.</p>
    #
    #   @return [DomainTransferability]
    #
    CheckDomainTransferabilityOutput = ::Struct.new(
      :transferability,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ContactDetail includes the following elements.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute first_name
    #   <p>First name of contact.</p>
    #
    #   @return [String]
    #
    # @!attribute last_name
    #   <p>Last name of contact.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_type
    #   <p>Indicates whether the contact is a person, company, association, or public organization. Note the following:</p>
    #   		       <ul>
    #               <li>
    #                  <p>If you specify a value other than <code>PERSON</code>, you must also specify a value for
    #   				<code>OrganizationName</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For some TLDs, the privacy protection available depends on the value that you specify for
    #   				<code>Contact Type</code>. For the privacy protection settings for your TLD, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   					Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For .es domains, the value of <code>ContactType</code> must be <code>PERSON</code> for all three contacts.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"]
    #
    #   @return [String]
    #
    # @!attribute organization_name
    #   <p>Name of the organization for contact types other than <code>PERSON</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute address_line1
    #   <p>First line of the contact's address.</p>
    #
    #   @return [String]
    #
    # @!attribute address_line2
    #   <p>Second line of contact's address, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The city of the contact's address.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state or province of the contact's city.</p>
    #
    #   @return [String]
    #
    # @!attribute country_code
    #   <p>Code for the country of the contact's address.</p>
    #
    #   Enum, one of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"]
    #
    #   @return [String]
    #
    # @!attribute zip_code
    #   <p>The zip or postal code of the contact's address.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number
    #   <p>The phone number of the contact.</p>
    #   		       <p>Constraints: Phone number must be specified in the format "+[country	dialing code].[number including any area code>]".
    #   			For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>Email address of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute fax
    #   <p>Fax number of the contact.</p>
    #   		       <p>Constraints: Phone number must be specified in the format "+[country dialing code].[number including any area code]".
    #   			For example, a US phone number might appear as <code>"+1.1234567890"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute extra_params
    #   <p>A list of name-value pairs for parameters required by certain top-level domains.</p>
    #
    #   @return [Array<ExtraParam>]
    #
    ContactDetail = ::Struct.new(
      :first_name,
      :last_name,
      :contact_type,
      :organization_name,
      :address_line1,
      :address_line2,
      :city,
      :state,
      :country_code,
      :zip_code,
      :phone_number,
      :email,
      :fax,
      :extra_params,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::ContactDetail [SENSITIVE]>"
      end
    end

    # Includes enum constants for ContactType
    #
    module ContactType
      # No documentation available.
      #
      PERSON = "PERSON"

      # No documentation available.
      #
      COMPANY = "COMPANY"

      # No documentation available.
      #
      ASSOCIATION = "ASSOCIATION"

      # No documentation available.
      #
      PUBLIC_BODY = "PUBLIC_BODY"

      # No documentation available.
      #
      RESELLER = "RESELLER"
    end

    # Includes enum constants for CountryCode
    #
    module CountryCode
      # No documentation available.
      #
      AC = "AC"

      # No documentation available.
      #
      AD = "AD"

      # No documentation available.
      #
      AE = "AE"

      # No documentation available.
      #
      AF = "AF"

      # No documentation available.
      #
      AG = "AG"

      # No documentation available.
      #
      AI = "AI"

      # No documentation available.
      #
      AL = "AL"

      # No documentation available.
      #
      AM = "AM"

      # No documentation available.
      #
      AN = "AN"

      # No documentation available.
      #
      AO = "AO"

      # No documentation available.
      #
      AQ = "AQ"

      # No documentation available.
      #
      AR = "AR"

      # No documentation available.
      #
      AS = "AS"

      # No documentation available.
      #
      AT = "AT"

      # No documentation available.
      #
      AU = "AU"

      # No documentation available.
      #
      AW = "AW"

      # No documentation available.
      #
      AX = "AX"

      # No documentation available.
      #
      AZ = "AZ"

      # No documentation available.
      #
      BA = "BA"

      # No documentation available.
      #
      BB = "BB"

      # No documentation available.
      #
      BD = "BD"

      # No documentation available.
      #
      BE = "BE"

      # No documentation available.
      #
      BF = "BF"

      # No documentation available.
      #
      BG = "BG"

      # No documentation available.
      #
      BH = "BH"

      # No documentation available.
      #
      BI = "BI"

      # No documentation available.
      #
      BJ = "BJ"

      # No documentation available.
      #
      BL = "BL"

      # No documentation available.
      #
      BM = "BM"

      # No documentation available.
      #
      BN = "BN"

      # No documentation available.
      #
      BO = "BO"

      # No documentation available.
      #
      BQ = "BQ"

      # No documentation available.
      #
      BR = "BR"

      # No documentation available.
      #
      BS = "BS"

      # No documentation available.
      #
      BT = "BT"

      # No documentation available.
      #
      BV = "BV"

      # No documentation available.
      #
      BW = "BW"

      # No documentation available.
      #
      BY = "BY"

      # No documentation available.
      #
      BZ = "BZ"

      # No documentation available.
      #
      CA = "CA"

      # No documentation available.
      #
      CC = "CC"

      # No documentation available.
      #
      CD = "CD"

      # No documentation available.
      #
      CF = "CF"

      # No documentation available.
      #
      CG = "CG"

      # No documentation available.
      #
      CH = "CH"

      # No documentation available.
      #
      CI = "CI"

      # No documentation available.
      #
      CK = "CK"

      # No documentation available.
      #
      CL = "CL"

      # No documentation available.
      #
      CM = "CM"

      # No documentation available.
      #
      CN = "CN"

      # No documentation available.
      #
      CO = "CO"

      # No documentation available.
      #
      CR = "CR"

      # No documentation available.
      #
      CU = "CU"

      # No documentation available.
      #
      CV = "CV"

      # No documentation available.
      #
      CW = "CW"

      # No documentation available.
      #
      CX = "CX"

      # No documentation available.
      #
      CY = "CY"

      # No documentation available.
      #
      CZ = "CZ"

      # No documentation available.
      #
      DE = "DE"

      # No documentation available.
      #
      DJ = "DJ"

      # No documentation available.
      #
      DK = "DK"

      # No documentation available.
      #
      DM = "DM"

      # No documentation available.
      #
      DO = "DO"

      # No documentation available.
      #
      DZ = "DZ"

      # No documentation available.
      #
      EC = "EC"

      # No documentation available.
      #
      EE = "EE"

      # No documentation available.
      #
      EG = "EG"

      # No documentation available.
      #
      EH = "EH"

      # No documentation available.
      #
      ER = "ER"

      # No documentation available.
      #
      ES = "ES"

      # No documentation available.
      #
      ET = "ET"

      # No documentation available.
      #
      FI = "FI"

      # No documentation available.
      #
      FJ = "FJ"

      # No documentation available.
      #
      FK = "FK"

      # No documentation available.
      #
      FM = "FM"

      # No documentation available.
      #
      FO = "FO"

      # No documentation available.
      #
      FR = "FR"

      # No documentation available.
      #
      GA = "GA"

      # No documentation available.
      #
      GB = "GB"

      # No documentation available.
      #
      GD = "GD"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      GF = "GF"

      # No documentation available.
      #
      GG = "GG"

      # No documentation available.
      #
      GH = "GH"

      # No documentation available.
      #
      GI = "GI"

      # No documentation available.
      #
      GL = "GL"

      # No documentation available.
      #
      GM = "GM"

      # No documentation available.
      #
      GN = "GN"

      # No documentation available.
      #
      GP = "GP"

      # No documentation available.
      #
      GQ = "GQ"

      # No documentation available.
      #
      GR = "GR"

      # No documentation available.
      #
      GS = "GS"

      # No documentation available.
      #
      GT = "GT"

      # No documentation available.
      #
      GU = "GU"

      # No documentation available.
      #
      GW = "GW"

      # No documentation available.
      #
      GY = "GY"

      # No documentation available.
      #
      HK = "HK"

      # No documentation available.
      #
      HM = "HM"

      # No documentation available.
      #
      HN = "HN"

      # No documentation available.
      #
      HR = "HR"

      # No documentation available.
      #
      HT = "HT"

      # No documentation available.
      #
      HU = "HU"

      # No documentation available.
      #
      ID = "ID"

      # No documentation available.
      #
      IE = "IE"

      # No documentation available.
      #
      IL = "IL"

      # No documentation available.
      #
      IM = "IM"

      # No documentation available.
      #
      IN = "IN"

      # No documentation available.
      #
      IO = "IO"

      # No documentation available.
      #
      IQ = "IQ"

      # No documentation available.
      #
      IR = "IR"

      # No documentation available.
      #
      IS = "IS"

      # No documentation available.
      #
      IT = "IT"

      # No documentation available.
      #
      JE = "JE"

      # No documentation available.
      #
      JM = "JM"

      # No documentation available.
      #
      JO = "JO"

      # No documentation available.
      #
      JP = "JP"

      # No documentation available.
      #
      KE = "KE"

      # No documentation available.
      #
      KG = "KG"

      # No documentation available.
      #
      KH = "KH"

      # No documentation available.
      #
      KI = "KI"

      # No documentation available.
      #
      KM = "KM"

      # No documentation available.
      #
      KN = "KN"

      # No documentation available.
      #
      KP = "KP"

      # No documentation available.
      #
      KR = "KR"

      # No documentation available.
      #
      KW = "KW"

      # No documentation available.
      #
      KY = "KY"

      # No documentation available.
      #
      KZ = "KZ"

      # No documentation available.
      #
      LA = "LA"

      # No documentation available.
      #
      LB = "LB"

      # No documentation available.
      #
      LC = "LC"

      # No documentation available.
      #
      LI = "LI"

      # No documentation available.
      #
      LK = "LK"

      # No documentation available.
      #
      LR = "LR"

      # No documentation available.
      #
      LS = "LS"

      # No documentation available.
      #
      LT = "LT"

      # No documentation available.
      #
      LU = "LU"

      # No documentation available.
      #
      LV = "LV"

      # No documentation available.
      #
      LY = "LY"

      # No documentation available.
      #
      MA = "MA"

      # No documentation available.
      #
      MC = "MC"

      # No documentation available.
      #
      MD = "MD"

      # No documentation available.
      #
      ME = "ME"

      # No documentation available.
      #
      MF = "MF"

      # No documentation available.
      #
      MG = "MG"

      # No documentation available.
      #
      MH = "MH"

      # No documentation available.
      #
      MK = "MK"

      # No documentation available.
      #
      ML = "ML"

      # No documentation available.
      #
      MM = "MM"

      # No documentation available.
      #
      MN = "MN"

      # No documentation available.
      #
      MO = "MO"

      # No documentation available.
      #
      MP = "MP"

      # No documentation available.
      #
      MQ = "MQ"

      # No documentation available.
      #
      MR = "MR"

      # No documentation available.
      #
      MS = "MS"

      # No documentation available.
      #
      MT = "MT"

      # No documentation available.
      #
      MU = "MU"

      # No documentation available.
      #
      MV = "MV"

      # No documentation available.
      #
      MW = "MW"

      # No documentation available.
      #
      MX = "MX"

      # No documentation available.
      #
      MY = "MY"

      # No documentation available.
      #
      MZ = "MZ"

      # No documentation available.
      #
      NA = "NA"

      # No documentation available.
      #
      NC = "NC"

      # No documentation available.
      #
      NE = "NE"

      # No documentation available.
      #
      NF = "NF"

      # No documentation available.
      #
      NG = "NG"

      # No documentation available.
      #
      NI = "NI"

      # No documentation available.
      #
      NL = "NL"

      # No documentation available.
      #
      NO = "NO"

      # No documentation available.
      #
      NP = "NP"

      # No documentation available.
      #
      NR = "NR"

      # No documentation available.
      #
      NU = "NU"

      # No documentation available.
      #
      NZ = "NZ"

      # No documentation available.
      #
      OM = "OM"

      # No documentation available.
      #
      PA = "PA"

      # No documentation available.
      #
      PE = "PE"

      # No documentation available.
      #
      PF = "PF"

      # No documentation available.
      #
      PG = "PG"

      # No documentation available.
      #
      PH = "PH"

      # No documentation available.
      #
      PK = "PK"

      # No documentation available.
      #
      PL = "PL"

      # No documentation available.
      #
      PM = "PM"

      # No documentation available.
      #
      PN = "PN"

      # No documentation available.
      #
      PR = "PR"

      # No documentation available.
      #
      PS = "PS"

      # No documentation available.
      #
      PT = "PT"

      # No documentation available.
      #
      PW = "PW"

      # No documentation available.
      #
      PY = "PY"

      # No documentation available.
      #
      QA = "QA"

      # No documentation available.
      #
      RE = "RE"

      # No documentation available.
      #
      RO = "RO"

      # No documentation available.
      #
      RS = "RS"

      # No documentation available.
      #
      RU = "RU"

      # No documentation available.
      #
      RW = "RW"

      # No documentation available.
      #
      SA = "SA"

      # No documentation available.
      #
      SB = "SB"

      # No documentation available.
      #
      SC = "SC"

      # No documentation available.
      #
      SD = "SD"

      # No documentation available.
      #
      SE = "SE"

      # No documentation available.
      #
      SG = "SG"

      # No documentation available.
      #
      SH = "SH"

      # No documentation available.
      #
      SI = "SI"

      # No documentation available.
      #
      SJ = "SJ"

      # No documentation available.
      #
      SK = "SK"

      # No documentation available.
      #
      SL = "SL"

      # No documentation available.
      #
      SM = "SM"

      # No documentation available.
      #
      SN = "SN"

      # No documentation available.
      #
      SO = "SO"

      # No documentation available.
      #
      SR = "SR"

      # No documentation available.
      #
      SS = "SS"

      # No documentation available.
      #
      ST = "ST"

      # No documentation available.
      #
      SV = "SV"

      # No documentation available.
      #
      SX = "SX"

      # No documentation available.
      #
      SY = "SY"

      # No documentation available.
      #
      SZ = "SZ"

      # No documentation available.
      #
      TC = "TC"

      # No documentation available.
      #
      TD = "TD"

      # No documentation available.
      #
      TF = "TF"

      # No documentation available.
      #
      TG = "TG"

      # No documentation available.
      #
      TH = "TH"

      # No documentation available.
      #
      TJ = "TJ"

      # No documentation available.
      #
      TK = "TK"

      # No documentation available.
      #
      TL = "TL"

      # No documentation available.
      #
      TM = "TM"

      # No documentation available.
      #
      TN = "TN"

      # No documentation available.
      #
      TO = "TO"

      # No documentation available.
      #
      TP = "TP"

      # No documentation available.
      #
      TR = "TR"

      # No documentation available.
      #
      TT = "TT"

      # No documentation available.
      #
      TV = "TV"

      # No documentation available.
      #
      TW = "TW"

      # No documentation available.
      #
      TZ = "TZ"

      # No documentation available.
      #
      UA = "UA"

      # No documentation available.
      #
      UG = "UG"

      # No documentation available.
      #
      US = "US"

      # No documentation available.
      #
      UY = "UY"

      # No documentation available.
      #
      UZ = "UZ"

      # No documentation available.
      #
      VA = "VA"

      # No documentation available.
      #
      VC = "VC"

      # No documentation available.
      #
      VE = "VE"

      # No documentation available.
      #
      VG = "VG"

      # No documentation available.
      #
      VI = "VI"

      # No documentation available.
      #
      VN = "VN"

      # No documentation available.
      #
      VU = "VU"

      # No documentation available.
      #
      WF = "WF"

      # No documentation available.
      #
      WS = "WS"

      # No documentation available.
      #
      YE = "YE"

      # No documentation available.
      #
      YT = "YT"

      # No documentation available.
      #
      ZA = "ZA"

      # No documentation available.
      #
      ZM = "ZM"

      # No documentation available.
      #
      ZW = "ZW"
    end

    # @!attribute domain_name
    #   <p>Name of the domain to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request.
    #   			To query the operation status, use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    DeleteDomainOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DeleteTagsForDomainRequest includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The domain for which you want to delete one or more tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_to_delete
    #   <p>A list of tag keys to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteTagsForDomainInput = ::Struct.new(
      :domain_name,
      :tags_to_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagsForDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain that you want to disable automatic renewal for.</p>
    #
    #   @return [String]
    #
    DisableDomainAutoRenewInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableDomainAutoRenewOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DisableDomainTransferLock request includes the following element.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to remove the transfer lock for.</p>
    #
    #   @return [String]
    #
    DisableDomainTransferLockInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DisableDomainTransferLock response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    DisableDomainTransferLockOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainAvailability
    #
    module DomainAvailability
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      AVAILABLE_RESERVED = "AVAILABLE_RESERVED"

      # No documentation available.
      #
      AVAILABLE_PREORDER = "AVAILABLE_PREORDER"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"

      # No documentation available.
      #
      UNAVAILABLE_PREMIUM = "UNAVAILABLE_PREMIUM"

      # No documentation available.
      #
      UNAVAILABLE_RESTRICTED = "UNAVAILABLE_RESTRICTED"

      # No documentation available.
      #
      RESERVED = "RESERVED"

      # No documentation available.
      #
      DONT_KNOW = "DONT_KNOW"
    end

    # <p>The number of domains has exceeded the allowed threshold for the account.</p>
    #
    # @!attribute message
    #   <p>The number of domains has exceeded the allowed threshold for the account.</p>
    #
    #   @return [String]
    #
    DomainLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the domain price associated with a TLD.</p>
    #
    # @!attribute name
    #   <p>The name of the TLD for which the prices apply.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_price
    #   <p>The price for domain registration with Route 53.</p>
    #
    #   @return [PriceWithCurrency]
    #
    # @!attribute transfer_price
    #   <p>The price for transferring the domain registration to Route 53.</p>
    #
    #   @return [PriceWithCurrency]
    #
    # @!attribute renewal_price
    #   <p>The price for renewing domain registration with Route 53.</p>
    #
    #   @return [PriceWithCurrency]
    #
    # @!attribute change_ownership_price
    #   <p>The price for changing domain ownership.</p>
    #
    #   @return [PriceWithCurrency]
    #
    # @!attribute restoration_price
    #   <p>The price for restoring the domain with Route 53.</p>
    #
    #   @return [PriceWithCurrency]
    #
    DomainPrice = ::Struct.new(
      :name,
      :registration_price,
      :transfer_price,
      :renewal_price,
      :change_ownership_price,
      :restoration_price,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about one suggested domain name.</p>
    #
    # @!attribute domain_name
    #   <p>A suggested domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute availability
    #   <p>Whether the domain name is available for registering.</p>
    #   		       <note>
    #               <p>You can register only the domains that are designated as <code>AVAILABLE</code>.</p>
    #            </note>
    #   		       <p>Valid values:</p>
    #   		       <dl>
    #               <dt>AVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is available.</p>
    #               </dd>
    #               <dt>AVAILABLE_RESERVED</dt>
    #               <dd>
    #                  <p>The domain name is reserved under specific conditions.</p>
    #               </dd>
    #               <dt>AVAILABLE_PREORDER</dt>
    #               <dd>
    #                  <p>The domain name is available and can be preordered.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>The TLD registry didn't reply with a definitive answer about whether the domain name is available.
    #   					Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance.
    #   					Try again later.</p>
    #               </dd>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>The TLD registry didn't return a response in the expected amount of time. When the response is delayed,
    #   					it usually takes just a few extra seconds. You can resubmit the request immediately.</p>
    #               </dd>
    #               <dt>RESERVED</dt>
    #               <dd>
    #                  <p>The domain name has been reserved for another person or organization.</p>
    #               </dd>
    #               <dt>UNAVAILABLE</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_PREMIUM</dt>
    #               <dd>
    #                  <p>The domain name is not available.</p>
    #               </dd>
    #               <dt>UNAVAILABLE_RESTRICTED</dt>
    #               <dd>
    #                  <p>The domain name is forbidden.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [String]
    #
    DomainSuggestion = ::Struct.new(
      :domain_name,
      :availability,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about one domain.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that the summary information applies to.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_renew
    #   <p>Indicates whether the domain is automatically renewed upon expiration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute transfer_lock
    #   <p>Indicates whether a domain is locked from unauthorized transfer to another party.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute expiry
    #   <p>Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    DomainSummary = ::Struct.new(
      :domain_name,
      :auto_renew,
      :transfer_lock,
      :expiry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains information about whether the specified domain can be transferred to Route 53.</p>
    #
    # @!attribute transferable
    #   <p>Whether the domain name can be transferred to Route 53.</p>
    #   		       <note>
    #               <p>You can transfer only domains that have a value of <code>TRANSFERABLE</code> for <code>Transferable</code>.</p>
    #            </note>
    #   		
    #   		       <p>Valid values:</p>
    #   		       <dl>
    #               <dt>TRANSFERABLE</dt>
    #               <dd>
    #                  <p>The domain name can be transferred to Route 53.</p>
    #               </dd>
    #               <dt>UNTRANSFERRABLE</dt>
    #               <dd>
    #                  <p>The domain name can't be transferred to Route 53.</p>
    #               </dd>
    #               <dt>DONT_KNOW</dt>
    #               <dd>
    #                  <p>Reserved for future use.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["TRANSFERABLE", "UNTRANSFERABLE", "DONT_KNOW"]
    #
    #   @return [String]
    #
    DomainTransferability = ::Struct.new(
      :transferable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is already in progress for the domain.</p>
    #
    # @!attribute message
    #   <p>The request is already in progress for the domain.</p>
    #
    #   @return [String]
    #
    DuplicateRequest = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain that you want to enable automatic renewal for.</p>
    #
    #   @return [String]
    #
    EnableDomainAutoRenewInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableDomainAutoRenewOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request to set the transfer lock for the specified domain.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to set the transfer lock for.</p>
    #
    #   @return [String]
    #
    EnableDomainTransferLockInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The EnableDomainTransferLock response includes the following elements.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
    #
    #   @return [String]
    #
    EnableDomainTransferLockOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>ExtraParam includes the following elements.</p>
    #
    # @!attribute name
    #   <p>The name of an additional parameter that is required by a top-level domain. Here are the top-level domains that require
    #   			additional parameters and the names of the parameters that they require:</p>
    #
    #   		       <dl>
    #               <dt>.com.au and .net.au</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>AU_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AU_ID_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ABN</code> (Australian business number)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ACN</code> (Australian company number)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TM</code> (Trademark number)</p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.ca</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>BRAND_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CA_BUSINESS_ENTITY_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>BANK</code> (Bank)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMERCIAL_COMPANY</code> (Commercial company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMPANY</code> (Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATION</code> (Cooperation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATIVE</code> (Cooperative)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPRIX</code> (Cooprix)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CORP</code> (Corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CREDIT_UNION</code> (Credit union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOMIA</code> (Federation of mutual insurance associations)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INC</code> (Incorporated)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTD</code> (Limited)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTEE</code> (Limitée)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLC</code> (Limited liability corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLP</code> (Limited liability partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTE</code> (Lte.)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MBA</code> (Mutual benefit association)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MIC</code> (Mutual insurance company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NFP</code> (Not-for-profit corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SA</code> (S.A.)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_COMPANY</code> (Savings company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_UNION</code> (Savings union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SARL</code> (Société à responsabilité limitée)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRUST</code> (Trust)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ULC</code> (Unlimited liability corporation)</p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                     <li>
    #                        <p>
    #                           <code>CA_LEGAL_TYPE</code>
    #                        </p>
    #   							              <p>When <code>ContactType</code> is <code>PERSON</code>, valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ABO</code> (Aboriginal Peoples indigenous to Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CCT</code> (Canadian citizen)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LGR</code> (Legal Representative of a Canadian Citizen or Permanent Resident)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>RES</code> (Permanent resident of Canada)</p>
    #                           </li>
    #                        </ul>
    #
    #   							              <p>When <code>ContactType</code> is a value other than <code>PERSON</code>, valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ASS</code> (Canadian unincorporated association)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CCO</code> (Canadian corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>EDU</code> (Canadian educational institution)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOV</code> (Government or government entity in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>HOP</code> (Canadian Hospital)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INB</code> (Indian Band recognized by the Indian Act of Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LAM</code> (Canadian Library, Archive, or Museum)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MAJ</code> (Her/His Majesty the Queen/King)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OMK</code> (Official mark registered in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PLT</code> (Canadian Political Party)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PRT</code> (Partnership Registered in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TDM</code> (Trademark registered in Canada)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRD</code> (Canadian Trade Union)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRS</code> (Trust established in Canada)</p>
    #                           </li>
    #                        </ul>
    #
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.es</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>ES_IDENTIFICATION</code>
    #                        </p>
    #   							              <p>The value of <code>ES_IDENTIFICATION</code> depends on the following values:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>The value of <code>ES_LEGAL_FORM</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>The value of <code>ES_IDENTIFICATION_TYPE</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #   							
    #   							              <p>
    #                           <b>If <code>ES_LEGAL_FORM</code> is any value other than <code>INDIVIDUAL</code>:</b>
    #                        </p>
    #   							              <ul>
    #                           <li>
    #                              <p>Specify 1 letter + 8 numbers (CIF [Certificado de Identificación Fiscal])</p>
    #                           </li>
    #                           <li>
    #                              <p>Example: B12345678</p>
    #                           </li>
    #                        </ul>
    #   							
    #   							              <p>
    #                           <b>If <code>ES_LEGAL_FORM</code> is <code>INDIVIDUAL</code>, the value that you specify for
    #   								<code>ES_IDENTIFICATION</code> depends on the value of <code>ES_IDENTIFICATION_TYPE</code>:</b>
    #                        </p>
    #   							              <ul>
    #                           <li>
    #   									                  <p>If <code>ES_IDENTIFICATION_TYPE</code> is <code>DNI_AND_NIF</code> (for Spanish contacts):</p>
    #   									                  <ul>
    #                                 <li>
    #                                    <p>Specify 8 numbers + 1 letter (DNI [Documento Nacional de Identidad], NIF [Número de Identificación Fiscal])</p>
    #                                 </li>
    #                                 <li>
    #                                    <p>Example: 12345678M</p>
    #                                 </li>
    #                              </ul>
    #   								                </li>
    #                           <li>
    #   									                  <p>If <code>ES_IDENTIFICATION_TYPE</code> is <code>NIE</code> (for foreigners with legal residence):</p>
    #   									                  <ul>
    #                                 <li>
    #                                    <p>Specify 1 letter + 7 numbers + 1 letter ( NIE [Número de Identidad de Extranjero])</p>
    #                                 </li>
    #                                 <li>
    #                                    <p>Example: Y1234567X</p>
    #                                 </li>
    #                              </ul>
    #   								                </li>
    #                           <li>
    #   									                  <p>If <code>ES_IDENTIFICATION_TYPE</code> is <code>OTHER</code> (for contacts outside of Spain):</p>
    #   									                  <ul>
    #                                 <li>
    #                                    <p>Specify a passport number, drivers license number, or national identity card number</p>
    #                                 </li>
    #                              </ul>
    #   								                </li>
    #                        </ul>
    #   						            </li>
    #                     <li>
    #                        <p>
    #                           <code>ES_IDENTIFICATION_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>DNI_AND_NIF</code> (For Spanish contacts)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NIE</code> (For foreigners with legal residence)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER</code> (For contacts outside of Spain)</p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                     <li>
    #                        <p>
    #                           <code>ES_LEGAL_FORM</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CENTRAL_GOVERNMENT_BODY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CIVIL_SOCIETY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMUNITY_OF_OWNERS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COMMUNITY_PROPERTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CONSULATE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>COOPERATIVE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>DESIGNATION_OF_ORIGIN_SUPERVISORY_COUNCIL</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ECONOMIC_INTEREST_GROUP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>EMBASSY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ENTITY_MANAGING_NATURAL_AREAS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FARM_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOUNDATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GENERAL_AND_LIMITED_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GENERAL_PARTNERSHIP</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INDIVIDUAL</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LOCAL_AUTHORITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LOCAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>MUTUAL_INSURANCE_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NATIONAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ORDER_OR_RELIGIOUS_INSTITUTION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHERS (Only for contacts outside of Spain)</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>POLITICAL_PARTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PROFESSIONAL_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_LAW_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>REGIONAL_GOVERNMENT_BODY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>REGIONAL_PUBLIC_ENTITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SAVINGS_BANK</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPANISH_OFFICE</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_ASSOCIATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_FEDERATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SPORTS_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TEMPORARY_ALLIANCE_OF_ENTERPRISES</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TRADE_UNION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>WORKER_OWNED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>WORKER_OWNED_LIMITED_COMPANY</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #   							
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.eu</dt>
    #               <dd>
    #   		            <ul>
    #                     <li>
    #                        <p>
    #                           <code> EU_COUNTRY_OF_CITIZENSHIP</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   		          </dd>
    #               <dt>.fi</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_BUSINESS_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_NATIONALITY</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>FINNISH</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NOT_FINNISH</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                     <li>
    #                        <p>
    #                           <code>FI_ORGANIZATION_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>COMPANY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>CORPORATION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOVERNMENT</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INSTITUTION</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>POLITICAL_PARTY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_COMMUNITY</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>TOWNSHIP</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.fr</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_CITY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_COUNTRY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DEPARTMENT</code>: Specify the INSEE code that corresponds with the department where the contact was born.
    #   							If the contact was born somewhere other than France or its overseas departments, specify <code>99</code>. For more information,
    #   							including a list of departments and the corresponding INSEE numbers, see the Wikipedia entry
    #   							<a href="https://en.wikipedia.org/wiki/Departments_of_France">Departments of France</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>BRAND_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.it</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>IT_NATIONALITY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IT_PIN</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IT_REGISTRANT_ENTITY_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>FOREIGNERS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FREELANCE_WORKERS</code> (Freelance workers and professionals)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ITALIAN_COMPANIES</code> (Italian companies and one-person companies)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>NON_PROFIT_ORGANIZATIONS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER_SUBJECTS</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PUBLIC_ORGANIZATIONS</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.ru</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_DATE_IN_YYYY_MM_DD</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RU_PASSPORT_DATA</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.se</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>BIRTH_COUNTRY</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SE_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.sg</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>SG_ID_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   				        </dd>
    #               <dt>.co.uk, .me.uk, and .org.uk</dt>
    #               <dd>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <code>UK_CONTACT_TYPE</code>
    #                        </p>
    #   							              <p>Valid values include the following:</p>
    #   							              <ul>
    #                           <li>
    #                              <p>
    #                                 <code>CRC</code> (UK Corporation by Royal Charter)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FCORP</code> (Non-UK Corporation)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FIND</code> (Non-UK Individual, representing self)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>FOTHER</code> (Non-UK Entity that does not fit into any other category)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>GOV</code> (UK Government Body)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>IND</code> (UK Individual (representing self))</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>IP</code> (UK Industrial/Provident Registered Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LLP</code> (UK Limited Liability Partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>LTD</code> (UK Limited Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>OTHER</code> (UK Entity that does not fit into any other category)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PLC</code> (UK Public Limited Company)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>PTNR</code> (UK Partnership)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>RCHAR</code> (UK Registered Charity)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>SCH</code> (UK School)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>STAT</code> (UK Statutory Body)</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>STRA</code> (UK Sole Trader)</p>
    #                           </li>
    #                        </ul>
    #   						            </li>
    #                     <li>
    #                        <p>
    #                           <code>UK_COMPANY_NUMBER</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #   				        </dd>
    #            </dl>
    #
    #   		       <p>In addition, many TLDs require a <code>VAT_NUMBER</code>.</p>
    #
    #   Enum, one of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that corresponds with the name of an extra parameter.</p>
    #
    #   @return [String]
    #
    ExtraParam = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::ExtraParam "\
          "name=#{name || 'nil'}, "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ExtraParamName
    #
    module ExtraParamName
      # No documentation available.
      #
      DUNS_NUMBER = "DUNS_NUMBER"

      # No documentation available.
      #
      BRAND_NUMBER = "BRAND_NUMBER"

      # No documentation available.
      #
      BIRTH_DEPARTMENT = "BIRTH_DEPARTMENT"

      # No documentation available.
      #
      BIRTH_DATE_IN_YYYY_MM_DD = "BIRTH_DATE_IN_YYYY_MM_DD"

      # No documentation available.
      #
      BIRTH_COUNTRY = "BIRTH_COUNTRY"

      # No documentation available.
      #
      BIRTH_CITY = "BIRTH_CITY"

      # No documentation available.
      #
      DOCUMENT_NUMBER = "DOCUMENT_NUMBER"

      # No documentation available.
      #
      AU_ID_NUMBER = "AU_ID_NUMBER"

      # No documentation available.
      #
      AU_ID_TYPE = "AU_ID_TYPE"

      # No documentation available.
      #
      CA_LEGAL_TYPE = "CA_LEGAL_TYPE"

      # No documentation available.
      #
      CA_BUSINESS_ENTITY_TYPE = "CA_BUSINESS_ENTITY_TYPE"

      # No documentation available.
      #
      CA_LEGAL_REPRESENTATIVE = "CA_LEGAL_REPRESENTATIVE"

      # No documentation available.
      #
      CA_LEGAL_REPRESENTATIVE_CAPACITY = "CA_LEGAL_REPRESENTATIVE_CAPACITY"

      # No documentation available.
      #
      ES_IDENTIFICATION = "ES_IDENTIFICATION"

      # No documentation available.
      #
      ES_IDENTIFICATION_TYPE = "ES_IDENTIFICATION_TYPE"

      # No documentation available.
      #
      ES_LEGAL_FORM = "ES_LEGAL_FORM"

      # No documentation available.
      #
      FI_BUSINESS_NUMBER = "FI_BUSINESS_NUMBER"

      # No documentation available.
      #
      ONWER_FI_ID_NUMBER = "FI_ID_NUMBER"

      # No documentation available.
      #
      FI_NATIONALITY = "FI_NATIONALITY"

      # No documentation available.
      #
      FI_ORGANIZATION_TYPE = "FI_ORGANIZATION_TYPE"

      # No documentation available.
      #
      IT_NATIONALITY = "IT_NATIONALITY"

      # No documentation available.
      #
      IT_PIN = "IT_PIN"

      # No documentation available.
      #
      IT_REGISTRANT_ENTITY_TYPE = "IT_REGISTRANT_ENTITY_TYPE"

      # No documentation available.
      #
      RU_PASSPORT_DATA = "RU_PASSPORT_DATA"

      # No documentation available.
      #
      SE_ID_NUMBER = "SE_ID_NUMBER"

      # No documentation available.
      #
      SG_ID_NUMBER = "SG_ID_NUMBER"

      # No documentation available.
      #
      VAT_NUMBER = "VAT_NUMBER"

      # No documentation available.
      #
      UK_CONTACT_TYPE = "UK_CONTACT_TYPE"

      # No documentation available.
      #
      UK_COMPANY_NUMBER = "UK_COMPANY_NUMBER"

      # No documentation available.
      #
      EU_COUNTRY_OF_CITIZENSHIP = "EU_COUNTRY_OF_CITIZENSHIP"
    end

    # <p>Information for the filtering of a list of domains returned by
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html">ListDomains</a>.</p>
    #
    # @!attribute name
    #   <p>Name of the field which should be used for filtering the list of domains.</p>
    #
    #   Enum, one of: ["DomainName", "Expiry"]
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The operator values for filtering domain names. The values can be:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>LE</code>: Less than, or equal to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code>: Greater than, or equal to</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code>: Begins with</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["LE", "GE", "BEGINS_WITH"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p> An array of strings presenting values to compare. Only 1 item in the list is currently supported.</p>
    #
    #   @return [Array<String>]
    #
    FilterCondition = ::Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.</p>
    #
    #   @return [String]
    #
    GetContactReachabilityStatusInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name for which you requested the reachability status.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Whether the registrant contact has responded. Values include the following:</p>
    #   		       <dl>
    #               <dt>PENDING</dt>
    #               <dd>
    #                  <p>We sent the confirmation email and haven't received a response yet.</p>
    #               </dd>
    #               <dt>DONE</dt>
    #               <dd>
    #                  <p>We sent the email and got confirmation from the registrant contact.</p>
    #               </dd>
    #               <dt>EXPIRED</dt>
    #               <dd>
    #                  <p>The time limit expired before the registrant contact responded.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["PENDING", "DONE", "EXPIRED"]
    #
    #   @return [String]
    #
    GetContactReachabilityStatusOutput = ::Struct.new(
      :domain_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GetDomainDetail request includes the following element.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get detailed information about.</p>
    #
    #   @return [String]
    #
    GetDomainDetailInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GetDomainDetail response includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of a domain.</p>
    #
    #   @return [String]
    #
    # @!attribute nameservers
    #   <p>The
    #   			name of the domain.</p>
    #
    #   @return [Array<Nameserver>]
    #
    # @!attribute auto_renew
    #   <p>Specifies whether the domain registration is set to renew automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute admin_contact
    #   <p>Provides details about the domain administrative contact.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute registrant_contact
    #   <p>Provides details about the domain registrant.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute tech_contact
    #   <p>Provides details about the domain technical contact.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute admin_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS
    #   			queries. If the value is <code>true</code>, WHOIS ("who is") queries return contact
    #   			information either for Amazon Registrar (for .com, .net, and .org domains) or for our
    #   			registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute registrant_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tech_privacy
    #   <p>Specifies whether contact information is concealed from WHOIS queries. If the value is <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If the value is <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute registrar_name
    #   <p>Name of the registrar of the domain as identified in the registry. Domains with a .com, .net, or .org TLD are registered by
    #   			Amazon Registrar. All other domains are registered by our registrar associate, Gandi. The value for domains that are registered by
    #   			Gandi is <code>"GANDI SAS"</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute who_is_server
    #   <p>The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute registrar_url
    #   <p>Web address of the registrar.</p>
    #
    #   @return [String]
    #
    # @!attribute abuse_contact_email
    #   <p>Email address to contact to report incorrect contact information for a domain, to report that the domain
    #   			is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.</p>
    #
    #   @return [String]
    #
    # @!attribute abuse_contact_phone
    #   <p>Phone number for reporting abuse.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_domain_id
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date when the domain was created as found in the response to a WHOIS query. The date and time is in
    #   			Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The last updated date of the domain as found in the response to a WHOIS query. The date and time is in
    #   			Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_date
    #   <p>The date when the registration for the domain is set to expire. The date and time is in
    #   			Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute reseller
    #   <p>Reseller of the domain. Domains registered or transferred using Route 53 domains will have <code>"Amazon"</code>
    #   			as the reseller. </p>
    #
    #   @return [String]
    #
    # @!attribute dns_sec
    #   <p>Deprecated.</p>
    #
    #   @return [String]
    #
    # @!attribute status_list
    #   <p>An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes.</p>
    #   		       <p>ICANN, the organization that maintains a central database of domain names, has developed a set of domain name
    #   			status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name,
    #   			transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars
    #   			use this same set of status codes.</p>
    #   		       <p>For a current list of domain name status codes and an explanation of what each code means, go to the
    #   			<a href="https://www.icann.org/">ICANN website</a> and search for <code>epp status codes</code>.
    #   			(Search on the ICANN website; web searches sometimes return an old version of the document.)</p>
    #
    #   @return [Array<String>]
    #
    GetDomainDetailOutput = ::Struct.new(
      :domain_name,
      :nameservers,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      :registrar_name,
      :who_is_server,
      :registrar_url,
      :abuse_contact_email,
      :abuse_contact_phone,
      :registry_domain_id,
      :creation_date,
      :updated_date,
      :expiration_date,
      :reseller,
      :dns_sec,
      :status_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::GetDomainDetailOutput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "nameservers=#{nameservers || 'nil'}, "\
          "auto_renew=#{auto_renew || 'nil'}, "\
          "admin_contact=\"[SENSITIVE]\", "\
          "registrant_contact=\"[SENSITIVE]\", "\
          "tech_contact=\"[SENSITIVE]\", "\
          "admin_privacy=#{admin_privacy || 'nil'}, "\
          "registrant_privacy=#{registrant_privacy || 'nil'}, "\
          "tech_privacy=#{tech_privacy || 'nil'}, "\
          "registrar_name=#{registrar_name || 'nil'}, "\
          "who_is_server=#{who_is_server || 'nil'}, "\
          "registrar_url=#{registrar_url || 'nil'}, "\
          "abuse_contact_email=#{abuse_contact_email || 'nil'}, "\
          "abuse_contact_phone=#{abuse_contact_phone || 'nil'}, "\
          "registry_domain_id=#{registry_domain_id || 'nil'}, "\
          "creation_date=#{creation_date || 'nil'}, "\
          "updated_date=#{updated_date || 'nil'}, "\
          "expiration_date=#{expiration_date || 'nil'}, "\
          "reseller=#{reseller || 'nil'}, "\
          "dns_sec=#{dns_sec || 'nil'}, "\
          "status_list=#{status_list || 'nil'}>"
      end
    end

    # @!attribute domain_name
    #   <p>A domain name that you want to use as the basis for a list of possible domain names. The top-level domain (TLD), such as .com,
    #   			must be a TLD that Route 53 supports. For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use
    #   			supports internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			</p>
    #
    #   @return [String]
    #
    # @!attribute suggestion_count
    #   <p>The number of suggested domain names that you want Route 53 to return. Specify a value between 1 and 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute only_available
    #   <p>If <code>OnlyAvailable</code> is <code>true</code>, Route 53 returns only domain names that are available.
    #   			If <code>OnlyAvailable</code> is <code>false</code>, Route 53 returns domain names without checking whether they're
    #   			available to be registered. To determine whether the domain is available, you can call <code>checkDomainAvailability</code>
    #   			for each suggestion.</p>
    #
    #   @return [Boolean]
    #
    GetDomainSuggestionsInput = ::Struct.new(
      :domain_name,
      :suggestion_count,
      :only_available,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.suggestion_count ||= 0
      end
    end

    # @!attribute suggestions_list
    #   <p>A list of possible domain names. If you specified <code>true</code> for <code>OnlyAvailable</code> in the request,
    #   			the list contains only domains that are available for registration.</p>
    #
    #   @return [Array<DomainSuggestion>]
    #
    GetDomainSuggestionsOutput = ::Struct.new(
      :suggestions_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
    # 			request includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>The identifier for the operation for which you want to get the status. Route 53 returned the identifier
    #   			in the response to the original request.</p>
    #
    #   @return [String]
    #
    GetOperationDetailInput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GetOperationDetail response includes the following elements.</p>
    #
    # @!attribute operation_id
    #   <p>The identifier for the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the requested operation in the system.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Detailed information on the status including possible errors.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of a domain.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of operation that was requested.</p>
    #
    #   Enum, one of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute submitted_date
    #   <p>The date when the request was submitted.</p>
    #
    #   @return [Time]
    #
    GetOperationDetailOutput = ::Struct.new(
      :operation_id,
      :status,
      :message,
      :domain_name,
      :type,
      :submitted_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested item is not acceptable. For example, for APIs that accept a domain name, the request might specify a domain name
    # 			that doesn't belong to the account that submitted the request. For <code>AcceptDomainTransferFromAnotherAwsAccount</code>,
    # 			the password might be invalid.</p>
    #
    # @!attribute message
    #   <p>The requested item is not acceptable. For example, for an OperationId it might refer to the ID of an operation
    #   			that is already completed. For a domain name, it might not be a valid domain name or belong to the requester account.</p>
    #
    #   @return [String]
    #
    InvalidInput = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListDomainsAttributeName
    #
    module ListDomainsAttributeName
      # No documentation available.
      #
      DomainName = "DomainName"

      # No documentation available.
      #
      Expiry = "Expiry"
    end

    # <p>The ListDomains request includes the following elements.</p>
    #
    # @!attribute filter_conditions
    #   <p>A complex type that contains information about the filters applied during the <code>ListDomains</code> request. The filter conditions can
    #   			include domain name and domain expiration.</p>
    #
    #   @return [Array<FilterCondition>]
    #
    # @!attribute sort_condition
    #   <p>A complex type that contains information about the requested ordering of domains in the returned list.</p>
    #
    #   @return [SortCondition]
    #
    # @!attribute marker
    #   <p>For an initial request for a list of domains, omit this element. If the number of domains
    #   			that are associated with the current Amazon Web Services account is greater than the value that you specified for
    #   			<code>MaxItems</code>, you can use <code>Marker</code> to return additional domains. Get the value of
    #   			<code>NextPageMarker</code> from the previous response, and submit another request that includes the
    #   			value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #   		       <p>Constraints: The marker must match the value specified in the previous request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Number of domains to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    #   @return [Integer]
    #
    ListDomainsInput = ::Struct.new(
      :filter_conditions,
      :sort_condition,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ListDomains response includes the following elements.</p>
    #
    # @!attribute domains
    #   <p>A list of domains.</p>
    #
    #   @return [Array<DomainSummary>]
    #
    # @!attribute next_page_marker
    #   <p>If there are more domains than you specified for <code>MaxItems</code> in the request, submit another
    #   			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
    #
    #   @return [String]
    #
    ListDomainsOutput = ::Struct.new(
      :domains,
      :next_page_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ListOperations request includes the following elements.</p>
    #
    # @!attribute submitted_since
    #   <p>An optional parameter that lets you get information about all the operations that you submitted after a specified date and time.
    #   			Specify the date and time in Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute marker
    #   <p>For an initial request for a list of operations, omit this element. If the number of operations that are
    #   			not yet complete is greater than the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code>
    #   			to return additional operations. Get the value of <code>NextPageMarker</code> from the previous response,
    #   			and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Number of domains to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    #   @return [Integer]
    #
    ListOperationsInput = ::Struct.new(
      :submitted_since,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ListOperations response includes the following elements.</p>
    #
    # @!attribute operations
    #   <p>Lists summaries of the operations.</p>
    #
    #   @return [Array<OperationSummary>]
    #
    # @!attribute next_page_marker
    #   <p>If there are more operations than you specified for <code>MaxItems</code> in the request, submit another
    #   			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
    #
    #   @return [String]
    #
    ListOperationsOutput = ::Struct.new(
      :operations,
      :next_page_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tld
    #   <p>The TLD for which you want to receive the pricing information. For example.
    #   				<code>.net</code>.</p>
    #   		       <p>If a <code>Tld</code> value is not provided, a list of prices for all TLDs supported by Route 53
    #   		is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>For an initial request for a list of prices, omit this element.
    #   			If the number of prices that are not yet complete is greater than the value that you specified for <code>MaxItems</code>,
    #   			you can use <code>Marker</code> to return additional prices. Get the value of <code>NextPageMarker</code> from the previous response,
    #   			and submit another request that includes the value of <code>NextPageMarker</code> in the <code>Marker</code> element. </p>
    #   		       <p>Used only for all TLDs. If you specify a TLD, don't specify a <code>Marker</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Number of <code>Prices</code> to be returned.</p>
    #   		       <p>Used only for all TLDs. If you specify a TLD, don't specify a <code>MaxItems</code>.</p>
    #
    #   @return [Integer]
    #
    ListPricesInput = ::Struct.new(
      :tld,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prices
    #   <p>A complex type that includes all the pricing information. If you specify a TLD, this array
    #   			contains only the pricing for that TLD.</p>
    #
    #   @return [Array<DomainPrice>]
    #
    # @!attribute next_page_marker
    #   <p>If there are more prices than you specified for <code>MaxItems</code> in the request, submit another request and include the value of
    #   			<code>NextPageMarker</code> in the value of <code>Marker</code>. </p>
    #   		       <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   			<code>NextPageMarker</code>.</p>
    #
    #   @return [String]
    #
    ListPricesOutput = ::Struct.new(
      :prices,
      :next_page_marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ListTagsForDomainRequest includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The domain for which you want to get a list of tags.</p>
    #
    #   @return [String]
    #
    ListTagsForDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ListTagsForDomain response includes the following elements.</p>
    #
    # @!attribute tag_list
    #   <p>A list of the tags that are associated with the specified domain.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForDomainOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Nameserver includes the following elements.</p>
    #
    # @!attribute name
    #   <p>The fully qualified host name of the name server.</p>
    #   		       <p>Constraint: Maximum 255 characters</p>
    #
    #   @return [String]
    #
    # @!attribute glue_ips
    #   <p>Glue IP address of a name server entry. Glue IP addresses are required only when the name of the name server
    #   			is a subdomain of the domain. For example, if your domain is example.com and the name server for the domain is
    #   			ns.example.com, you need to specify the IP address for ns.example.com.</p>
    #   		       <p>Constraints: The list can contain only one IPv4 and one IPv6 address.</p>
    #
    #   @return [Array<String>]
    #
    Nameserver = ::Struct.new(
      :name,
      :glue_ips,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
    #
    # @!attribute message
    #   <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
    #
    #   @return [String]
    #
    OperationLimitExceeded = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperationStatus
    #
    module OperationStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      SUCCESSFUL = "SUCCESSFUL"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>OperationSummary includes the following elements.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier returned to track the requested action.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the requested operation in the system.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type of the action requested.</p>
    #
    #   Enum, one of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN"]
    #
    #   @return [String]
    #
    # @!attribute submitted_date
    #   <p>The date when the request was submitted.</p>
    #
    #   @return [Time]
    #
    OperationSummary = ::Struct.new(
      :operation_id,
      :status,
      :type,
      :submitted_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperationType
    #
    module OperationType
      # No documentation available.
      #
      REGISTER_DOMAIN = "REGISTER_DOMAIN"

      # No documentation available.
      #
      DELETE_DOMAIN = "DELETE_DOMAIN"

      # No documentation available.
      #
      TRANSFER_IN_DOMAIN = "TRANSFER_IN_DOMAIN"

      # No documentation available.
      #
      UPDATE_DOMAIN_CONTACT = "UPDATE_DOMAIN_CONTACT"

      # No documentation available.
      #
      UPDATE_NAMESERVER = "UPDATE_NAMESERVER"

      # No documentation available.
      #
      CHANGE_PRIVACY_PROTECTION = "CHANGE_PRIVACY_PROTECTION"

      # No documentation available.
      #
      DOMAIN_LOCK = "DOMAIN_LOCK"

      # No documentation available.
      #
      ENABLE_AUTORENEW = "ENABLE_AUTORENEW"

      # No documentation available.
      #
      DISABLE_AUTORENEW = "DISABLE_AUTORENEW"

      # No documentation available.
      #
      ADD_DNSSEC = "ADD_DNSSEC"

      # No documentation available.
      #
      REMOVE_DNSSEC = "REMOVE_DNSSEC"

      # No documentation available.
      #
      EXPIRE_DOMAIN = "EXPIRE_DOMAIN"

      # No documentation available.
      #
      TRANSFER_OUT_DOMAIN = "TRANSFER_OUT_DOMAIN"

      # No documentation available.
      #
      CHANGE_DOMAIN_OWNER = "CHANGE_DOMAIN_OWNER"

      # No documentation available.
      #
      RENEW_DOMAIN = "RENEW_DOMAIN"

      # No documentation available.
      #
      PUSH_DOMAIN = "PUSH_DOMAIN"

      # No documentation available.
      #
      INTERNAL_TRANSFER_OUT_DOMAIN = "INTERNAL_TRANSFER_OUT_DOMAIN"

      # No documentation available.
      #
      INTERNAL_TRANSFER_IN_DOMAIN = "INTERNAL_TRANSFER_IN_DOMAIN"
    end

    # Includes enum constants for Operator
    #
    module Operator
      # No documentation available.
      #
      LE = "LE"

      # No documentation available.
      #
      GE = "GE"

      # No documentation available.
      #
      BEGINS_WITH = "BEGINS_WITH"
    end

    # <p>Currency-specific price information.</p>
    #
    # @!attribute price
    #   <p>The price of a domain, in a specific currency.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency
    #   <p>The currency specifier.</p>
    #
    #   @return [String]
    #
    PriceWithCurrency = ::Struct.new(
      :price,
      :currency,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.price ||= 0
      end
    end

    # Includes enum constants for ReachabilityStatus
    #
    module ReachabilityStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      DONE = "DONE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # <p>The RegisterDomain request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #   		       <p>Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports
    #   			internationalized domain names, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a>.
    #   			For more information, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html domain-name-format-idns">Formatting Internationalized Domain Names</a>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year.
    #   			The maximum period depends on the top-level domain. For the range of valid values for your domain, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>Default: 1</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not (<code>false</code>).
    #   			Autorenewal only takes effect after the account is charged.</p>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute admin_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute tech_contact
    #   <p>Provides detailed contact information. For information about the values that you specify for each element, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (the domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    RegisterDomainInput = ::Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::RegisterDomainInput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "idn_lang_code=#{idn_lang_code || 'nil'}, "\
          "duration_in_years=#{duration_in_years || 'nil'}, "\
          "auto_renew=#{auto_renew || 'nil'}, "\
          "admin_contact=\"[SENSITIVE]\", "\
          "registrant_contact=\"[SENSITIVE]\", "\
          "tech_contact=\"[SENSITIVE]\", "\
          "privacy_protect_admin_contact=#{privacy_protect_admin_contact || 'nil'}, "\
          "privacy_protect_registrant_contact=#{privacy_protect_registrant_contact || 'nil'}, "\
          "privacy_protect_tech_contact=#{privacy_protect_tech_contact || 'nil'}>"
      end
    end

    # <p>The RegisterDomain response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    RegisterDomainOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The RejectDomainTransferFromAnotherAwsAccount request includes the following element.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account submitted a
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>
    #   			request.
    #   		</p>
    #
    #   @return [String]
    #
    RejectDomainTransferFromAnotherAwsAccountInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The RejectDomainTransferFromAnotherAwsAccount response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>The identifier that <code>TransferDomainToAnotherAwsAccount</code> returned to track the progress of the request.
    #   			Because the transfer request was rejected, the value is no longer valid, and you can't use <code>GetOperationDetail</code>
    #   			to query the operation status.</p>
    #
    #   @return [String]
    #
    RejectDomainTransferFromAnotherAwsAccountOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>RenewDomain</code> request includes the number of years that you want to renew for and the current expiration year.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to renew.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_years
    #   <p>The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain.
    #   			For the range of valid values for your domain, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>Default: 1</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_expiry_year
    #   <p>The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.</p>
    #
    #   @return [Integer]
    #
    RenewDomainInput = ::Struct.new(
      :domain_name,
      :duration_in_years,
      :current_expiry_year,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.current_expiry_year ||= 0
      end
    end

    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    RenewDomainOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.</p>
    #
    #   @return [String]
    #
    ResendContactReachabilityEmailInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name for which you requested a confirmation email.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address for the registrant contact at the time that we sent the verification email.</p>
    #
    #   @return [String]
    #
    # @!attribute is_already_verified
    #   <p>
    #               <code>True</code> if the email address for the registrant contact has already been verified, and <code>false</code> otherwise.
    #   			If the email address has already been verified, we don't send another confirmation email.</p>
    #
    #   @return [Boolean]
    #
    ResendContactReachabilityEmailOutput = ::Struct.new(
      :domain_name,
      :email_address,
      :is_already_verified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request for the authorization code for the specified domain. To transfer a domain to another registrar, you provide
    # 			this value to the new registrar.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to get an authorization code for.</p>
    #
    #   @return [String]
    #
    RetrieveDomainAuthCodeInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The RetrieveDomainAuthCode response includes the following element.</p>
    #
    # @!attribute auth_code
    #   <p>The authorization code for the domain.</p>
    #
    #   @return [String]
    #
    RetrieveDomainAuthCodeOutput = ::Struct.new(
      :auth_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::RetrieveDomainAuthCodeOutput "\
          "auth_code=\"[SENSITIVE]\">"
      end
    end

    # <p>Information for sorting a list of domains.</p>
    #
    # @!attribute name
    #   <p>Field to be used for sorting the list of domains. It can be either the name or the expiration for a domain. Note that if
    #   			<code>filterCondition</code> is used in the same
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains__ListDomains.html">ListDomains</a>
    #   			 call, the field used for sorting has to be the same as the field used for filtering.</p>
    #
    #   Enum, one of: ["DomainName", "Expiry"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order for a list of domains. Either ascending (ASC) or descending (DES).</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortCondition = ::Struct.new(
      :name,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>The top-level domain does not support this operation.</p>
    #
    # @!attribute message
    #   <p>The top-level domain does not support this operation.</p>
    #
    #   @return [String]
    #
    TLDRulesViolation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Each tag includes the following elements.</p>
    #
    # @!attribute key
    #   <p>The key (name) of a tag.</p>
    #   		       <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p>
    #   		       <p>Constraints: Each key can be 1-128 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a tag.</p>
    #   		       <p>Valid values: A-Z, a-z, 0-9, space, ".:/=+\-@"</p>
    #   		       <p>Constraints: Each value can be 0-256 characters long.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The TransferDomain request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports.
    #   			For a list of supported TLDs, see
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the
    #   			<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>The domain name can contain only the following characters:</p>
    #   		       <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label. </p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in <code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute idn_lang_code
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered for a minimum of one year.
    #   			The maximum period depends on the top-level domain.</p>
    #   		       <p>Default: 1</p>
    #
    #   @return [Integer]
    #
    # @!attribute nameservers
    #   <p>Contains details for the host and glue IP addresses.</p>
    #
    #   @return [Array<Nameserver>]
    #
    # @!attribute auth_code
    #   <p>The authorization code for the domain. You get this value from the current registrar.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (true) or not (false). Autorenewal only takes effect
    #   			after the account is charged.</p>
    #   		       <p>Default: true</p>
    #
    #   @return [Boolean]
    #
    # @!attribute admin_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute tech_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #   		       <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    TransferDomainInput = ::Struct.new(
      :domain_name,
      :idn_lang_code,
      :duration_in_years,
      :nameservers,
      :auth_code,
      :auto_renew,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      :privacy_protect_admin_contact,
      :privacy_protect_registrant_contact,
      :privacy_protect_tech_contact,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::TransferDomainInput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "idn_lang_code=#{idn_lang_code || 'nil'}, "\
          "duration_in_years=#{duration_in_years || 'nil'}, "\
          "nameservers=#{nameservers || 'nil'}, "\
          "auth_code=\"[SENSITIVE]\", "\
          "auto_renew=#{auto_renew || 'nil'}, "\
          "admin_contact=\"[SENSITIVE]\", "\
          "registrant_contact=\"[SENSITIVE]\", "\
          "tech_contact=\"[SENSITIVE]\", "\
          "privacy_protect_admin_contact=#{privacy_protect_admin_contact || 'nil'}, "\
          "privacy_protect_registrant_contact=#{privacy_protect_registrant_contact || 'nil'}, "\
          "privacy_protect_tech_contact=#{privacy_protect_tech_contact || 'nil'}>"
      end
    end

    # <p>The TransferDomain response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    TransferDomainOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The TransferDomainToAnotherAwsAccount request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to transfer from the current Amazon Web Services account to another account.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the Amazon Web Services account that you want to transfer the domain to, for example, <code>111122223333</code>.</p>
    #
    #   @return [String]
    #
    TransferDomainToAnotherAwsAccountInput = ::Struct.new(
      :domain_name,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>TransferDomainToAnotherAwsAccount</code> response includes the following elements.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>To finish transferring a domain to another Amazon Web Services account, the account that the domain is being transferred to must submit an
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>
    #   			request. The request must include the value of the <code>Password</code> element that was returned in the
    #   			<code>TransferDomainToAnotherAwsAccount</code> response.</p>
    #
    #   @return [String]
    #
    TransferDomainToAnotherAwsAccountOutput = ::Struct.new(
      :operation_id,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Transferable
    #
    module Transferable
      # No documentation available.
      #
      TRANSFERABLE = "TRANSFERABLE"

      # No documentation available.
      #
      UNTRANSFERABLE = "UNTRANSFERABLE"

      # No documentation available.
      #
      DONT_KNOW = "DONT_KNOW"
    end

    # <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
    #
    # @!attribute message
    #   <p>Amazon Route 53 does not support this top-level domain (TLD).</p>
    #
    #   @return [String]
    #
    UnsupportedTLD = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateDomainContact request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update contact information for.</p>
    #
    #   @return [String]
    #
    # @!attribute admin_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute registrant_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    # @!attribute tech_contact
    #   <p>Provides detailed contact information.</p>
    #
    #   @return [ContactDetail]
    #
    UpdateDomainContactInput = ::Struct.new(
      :domain_name,
      :admin_contact,
      :registrant_contact,
      :tech_contact,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::UpdateDomainContactInput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "admin_contact=\"[SENSITIVE]\", "\
          "registrant_contact=\"[SENSITIVE]\", "\
          "tech_contact=\"[SENSITIVE]\">"
      end
    end

    # <p>The UpdateDomainContact response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    UpdateDomainContactOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateDomainContactPrivacy request includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to update the privacy setting for.</p>
    #
    #   @return [String]
    #
    # @!attribute admin_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the admin contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    #   @return [Boolean]
    #
    # @!attribute registrant_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the registrant contact (domain owner).</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    #   @return [Boolean]
    #
    # @!attribute tech_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify <code>true</code>,
    #   			WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains)
    #   			or for our registrar associate, Gandi (for all other TLDs). If you specify <code>false</code>,
    #   			WHOIS queries return the information that you entered for the technical contact.</p>
    #   		       <note>
    #   			         <p>You must specify the same privacy setting for the administrative, registrant, and technical contacts.</p>
    #   		       </note>
    #
    #   @return [Boolean]
    #
    UpdateDomainContactPrivacyInput = ::Struct.new(
      :domain_name,
      :admin_privacy,
      :registrant_privacy,
      :tech_privacy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateDomainContactPrivacy response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.</p>
    #
    #   @return [String]
    #
    UpdateDomainContactPrivacyOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Replaces the current set of name servers for the domain with the specified set of name servers.
    # 			If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain.</p>
    # 		       <p>If successful, this operation returns an operation ID that you can use to track the progress and
    # 			completion of the action. If the request is not completed successfully, the domain registrant will be notified by email. </p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain that you want to change name servers for.</p>
    #
    #   @return [String]
    #
    # @!attribute fi_auth_key
    #   <p>The authorization key for .fi domains</p>
    #
    #   @deprecated
    #
    #   @return [String]
    #
    # @!attribute nameservers
    #   <p>A list of new name servers for the domain.</p>
    #
    #   @return [Array<Nameserver>]
    #
    UpdateDomainNameserversInput = ::Struct.new(
      :domain_name,
      :fi_auth_key,
      :nameservers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Route53Domains::Types::UpdateDomainNameserversInput "\
          "domain_name=#{domain_name || 'nil'}, "\
          "fi_auth_key=\"[SENSITIVE]\", "\
          "nameservers=#{nameservers || 'nil'}>"
      end
    end

    # <p>The UpdateDomainNameservers response includes the following element.</p>
    #
    # @!attribute operation_id
    #   <p>Identifier for tracking the progress of the request. To query the operation status, use
    #   			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    #
    #   @return [String]
    #
    UpdateDomainNameserversOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The UpdateTagsForDomainRequest includes the following elements.</p>
    #
    # @!attribute domain_name
    #   <p>The domain for which you want to add or update tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags_to_update
    #   <p>A list of the tag keys and values that you want to add or update. If you specify a key
    #   			that already exists, the corresponding value will be replaced.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateTagsForDomainInput = ::Struct.new(
      :domain_name,
      :tags_to_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateTagsForDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ViewBilling request includes the following elements.</p>
    #
    # @!attribute start
    #   <p>The beginning date and time for the time period for which you want a list of billing records. Specify the date and time
    #   			in Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute end
    #   <p>The end date and time for the time period for which you want a list of billing records. Specify the date and time
    #   			in Unix time format and Coordinated Universal time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute marker
    #   <p>For an initial request for a list of billing records, omit this element. If the number of billing records
    #   			that are associated with the current Amazon Web Services account during the specified period is greater than the value that
    #   			you specified for <code>MaxItems</code>, you can use <code>Marker</code> to return additional billing records.
    #   			Get the value of <code>NextPageMarker</code> from the previous response, and submit another request that includes
    #   			the value of <code>NextPageMarker</code> in the <code>Marker</code> element.
    #   		</p>
    #   		       <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was returned in the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>The number of billing records to be returned.</p>
    #   		       <p>Default: 20</p>
    #
    #   @return [Integer]
    #
    ViewBillingInput = ::Struct.new(
      :start,
      :end,
      :marker,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ViewBilling response includes the following elements.</p>
    #
    # @!attribute next_page_marker
    #   <p>If there are more billing records than you specified for <code>MaxItems</code> in the request, submit another
    #   			request and include the value of <code>NextPageMarker</code> in the value of <code>Marker</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute billing_records
    #   <p>A summary of billing records.</p>
    #
    #   @return [Array<BillingRecord>]
    #
    ViewBillingOutput = ::Struct.new(
      :next_page_marker,
      :billing_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
