# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EBS
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["UNAUTHORIZED_ACCOUNT", "DEPENDENCY_ACCESS_DENIED"]
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessDeniedExceptionReason
    #
    module AccessDeniedExceptionReason
      # No documentation available.
      #
      UNAUTHORIZED_ACCOUNT = "UNAUTHORIZED_ACCOUNT"

      # No documentation available.
      #
      DEPENDENCY_ACCESS_DENIED = "DEPENDENCY_ACCESS_DENIED"
    end

    # <p>A block of data in an Amazon Elastic Block Store snapshot.</p>
    #
    # @!attribute block_index
    #   <p>The block index.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_token
    #   <p>The block token for the block index.</p>
    #
    #   @return [String]
    #
    Block = ::Struct.new(
      :block_index,
      :block_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A block of data in an Amazon Elastic Block Store snapshot that is different from another snapshot of
    #             the same volume/snapshot lineage.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute block_index
    #   <p>The block index.</p>
    #
    #   @return [Integer]
    #
    # @!attribute first_block_token
    #   <p>The block token for the block index of the <code>FirstSnapshotId</code> specified in
    #               the <code>ListChangedBlocks</code> operation. This value is absent if the first snapshot
    #               does not have the changed block that is on the second snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute second_block_token
    #   <p>The block token for the block index of the <code>SecondSnapshotId</code> specified in
    #               the <code>ListChangedBlocks</code> operation.</p>
    #
    #   @return [String]
    #
    ChangedBlock = ::Struct.new(
      :block_index,
      :first_block_token,
      :second_block_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::ChangedBlock [SENSITIVE]>"
      end
    end

    # Includes enum constants for ChecksumAggregationMethod
    #
    module ChecksumAggregationMethod
      # No documentation available.
      #
      CHECKSUM_AGGREGATION_LINEAR = "LINEAR"
    end

    # Includes enum constants for ChecksumAlgorithm
    #
    module ChecksumAlgorithm
      # No documentation available.
      #
      CHECKSUM_ALGORITHM_SHA256 = "SHA256"
    end

    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute changed_blocks_count
    #   <p>The number of blocks that were written to the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute checksum
    #   <p>An aggregated Base-64 SHA256 checksum based on the checksums of each written
    #               block.</p>
    #           <p>To generate the aggregated checksum using the linear aggregation method, arrange the
    #               checksums for each written block in ascending order of their block index, concatenate
    #               them to form a single string, and then generate the checksum on the entire string using
    #               the SHA256 algorithm.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    #
    #   Enum, one of: ["SHA256"]
    #
    #   @return [String]
    #
    # @!attribute checksum_aggregation_method
    #   <p>The aggregation method used to generate the checksum. Currently, the only supported
    #               aggregation method is <code>LINEAR</code>.</p>
    #
    #   Enum, one of: ["LINEAR"]
    #
    #   @return [String]
    #
    CompleteSnapshotInput = ::Struct.new(
      :snapshot_id,
      :changed_blocks_count,
      :checksum,
      :checksum_algorithm,
      :checksum_aggregation_method,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the snapshot.</p>
    #
    #   Enum, one of: ["completed", "pending", "error"]
    #
    #   @return [String]
    #
    CompleteSnapshotOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have reached the limit for concurrent API requests. For more information, see
    #                 <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapi-performance">Optimizing performance of the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud
    #                 User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request uses the same client token as a previous, but non-identical
    #             request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_id
    #   <p>The ID of the snapshot containing the block from which to get data.</p>
    #           <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use the
    #                   KMS key that was used to encrypt the snapshot. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute block_index
    #   <p>The block index of the block in which to read the data. A block index is a logical
    #               index in units of <code>512</code> KiB blocks. To identify the block index, divide
    #               the logical offset of the data in the logical volume by the block size (logical offset
    #               of data/<code>524288</code>). The logical offset of the data must be <code>512</code>
    #               KiB aligned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_token
    #   <p>The block token of the block from which to get data. You can obtain the <code>BlockToken</code>
    #               by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>
    #
    #   @return [String]
    #
    GetSnapshotBlockInput = ::Struct.new(
      :snapshot_id,
      :block_index,
      :block_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_length
    #   <p>The size of the data in the block.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_data
    #   <p>The data content of the block.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum
    #   <p>The checksum generated for the block, which is Base64 encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm used to generate the checksum for the block, such as SHA256.</p>
    #
    #   Enum, one of: ["SHA256"]
    #
    #   @return [String]
    #
    GetSnapshotBlockOutput = ::Struct.new(
      :data_length,
      :block_data,
      :checksum,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::GetSnapshotBlockOutput "\
          "data_length=#{data_length || 'nil'}, "\
          "block_data=\"[SENSITIVE]\", "\
          "checksum=#{checksum || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # <p>An internal error has occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute first_snapshot_id
    #   <p>The ID of the first snapshot to use for the comparison.</p>
    #           <important>
    #               <p>The <code>FirstSnapshotID</code> parameter must be specified with a
    #                       <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute second_snapshot_id
    #   <p>The ID of the second snapshot to use for the comparison.</p>
    #           <important>
    #               <p>The <code>SecondSnapshotId</code> parameter must be specified with a
    #                       <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #           <p>Even if additional blocks can be retrieved from the snapshot, the request can
    #               return less blocks than <b>MaxResults</b> or an empty
    #               array of blocks.</p>
    #           <p>To retrieve the next set of blocks from the snapshot, make another request with
    #               the returned <b>NextToken</b> value. The value of
    #               <b>NextToken</b> is <code>null</code> when there are no
    #               more blocks to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute starting_block_index
    #   <p>The block index from which the comparison should start.</p>
    #           <p>The list in the response will start from this block index or the next valid block
    #               index in the snapshots.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    #   @return [Integer]
    #
    ListChangedBlocksInput = ::Struct.new(
      :first_snapshot_id,
      :second_snapshot_id,
      :next_token,
      :max_results,
      :starting_block_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute changed_blocks
    #   <p>An array of objects containing information about the changed blocks.</p>
    #
    #   @return [Array<ChangedBlock>]
    #
    # @!attribute expiry_time
    #   <p>The time when the <code>BlockToken</code> expires.</p>
    #
    #   @return [Time]
    #
    # @!attribute volume_size
    #   <p>The size of the volume in GB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_size
    #   <p>The size of the blocks in the snapshot, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there
    #               are no more results to return.</p>
    #
    #   @return [String]
    #
    ListChangedBlocksOutput = ::Struct.new(
      :changed_blocks,
      :expiry_time,
      :volume_size,
      :block_size,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_id
    #   <p>The ID of the snapshot from which to get block indexes and block tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of blocks to be returned by the request.</p>
    #           <p>Even if additional blocks can be retrieved from the snapshot, the request can
    #               return less blocks than <b>MaxResults</b> or an empty
    #               array of blocks.</p>
    #           <p>To retrieve the next set of blocks from the snapshot, make another request with
    #               the returned <b>NextToken</b> value. The value of
    #               <b>NextToken</b> is <code>null</code> when there are no
    #               more blocks to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute starting_block_index
    #   <p>The block index from which the list should start. The list in the response will start
    #               from this block index or the next valid block index in the snapshot.</p>
    #           <p>If you specify <b>NextToken</b>, then
    #               <b>StartingBlockIndex</b> is ignored.</p>
    #
    #   @return [Integer]
    #
    ListSnapshotBlocksInput = ::Struct.new(
      :snapshot_id,
      :next_token,
      :max_results,
      :starting_block_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute blocks
    #   <p>An array of objects containing information about the blocks.</p>
    #
    #   @return [Array<Block>]
    #
    # @!attribute expiry_time
    #   <p>The time when the <code>BlockToken</code> expires.</p>
    #
    #   @return [Time]
    #
    # @!attribute volume_size
    #   <p>The size of the volume in GB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_size
    #   <p>The size of the blocks in the snapshot, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there
    #               are no more results to return.</p>
    #
    #   @return [String]
    #
    ListSnapshotBlocksOutput = ::Struct.new(
      :blocks,
      :expiry_time,
      :volume_size,
      :block_size,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::ListSnapshotBlocksOutput "\
          "blocks=\"[SENSITIVE]\", "\
          "expiry_time=#{expiry_time || 'nil'}, "\
          "volume_size=#{volume_size || 'nil'}, "\
          "block_size=#{block_size || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #           <important>
    #               <p>If the specified snapshot is encrypted, you must have permission to use
    #                   the KMS key that was used to encrypt the snapshot. For more information,
    #                   see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>..</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute block_index
    #   <p>The block index of the block in which to write the data. A block index is a logical
    #       	index in units of <code>512</code> KiB blocks. To identify the block index, divide
    #           	the logical offset of the data in the logical volume by the block size (logical offset of
    #           	data/<code>524288</code>). The logical offset of the data must be <code>512</code>
    #           	KiB aligned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_data
    #   <p>The data to write to the block.</p>
    #           <p>The block data is not signed as part of the Signature Version 4 signing process. As a
    #               result, you must generate and provide a Base64-encoded SHA256 checksum for the block
    #               data using the <b>x-amz-Checksum</b> header. Also, you
    #           	must specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b>
    #           	header. The checksum that you provide is part of the Signature Version 4 signing process.
    #           	It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity
    #           	of the data. If the checksums do not correspond, the request fails. For more information,
    #           	see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html ebsapis-using-checksums">
    #                   Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User
    #                   Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute data_length
    #   <p>The size of the data to write to the block, in bytes. Currently, the only supported
    #               size is <code>524288</code> bytes.</p>
    #           <p>Valid values: <code>524288</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute progress
    #   <p>The progress of the write process, as a percentage.</p>
    #
    #   @return [Integer]
    #
    # @!attribute checksum
    #   <p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are
    #               supported.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm used to generate the checksum. Currently, the only supported algorithm
    #               is <code>SHA256</code>.</p>
    #
    #   Enum, one of: ["SHA256"]
    #
    #   @return [String]
    #
    PutSnapshotBlockInput = ::Struct.new(
      :snapshot_id,
      :block_index,
      :block_data,
      :data_length,
      :progress,
      :checksum,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::PutSnapshotBlockInput "\
          "snapshot_id=#{snapshot_id || 'nil'}, "\
          "block_index=#{block_index || 'nil'}, "\
          "block_data=\"[SENSITIVE]\", "\
          "data_length=#{data_length || 'nil'}, "\
          "progress=#{progress || 'nil'}, "\
          "checksum=#{checksum || 'nil'}, "\
          "checksum_algorithm=#{checksum_algorithm || 'nil'}>"
      end
    end

    # @!attribute checksum
    #   <p>The SHA256 checksum generated for the block data by Amazon EBS.</p>
    #
    #   @return [String]
    #
    # @!attribute checksum_algorithm
    #   <p>The algorithm used by Amazon EBS to generate the checksum.</p>
    #
    #   Enum, one of: ["SHA256"]
    #
    #   @return [String]
    #
    PutSnapshotBlockOutput = ::Struct.new(
      :checksum,
      :checksum_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of API requests has exceed the maximum allowed API request throttling
    #             limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["ACCOUNT_THROTTLED", "DEPENDENCY_REQUEST_THROTTLED", "RESOURCE_LEVEL_THROTTLE"]
    #
    #   @return [String]
    #
    RequestThrottledException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequestThrottledExceptionReason
    #
    module RequestThrottledExceptionReason
      # No documentation available.
      #
      ACCOUNT_THROTTLED = "ACCOUNT_THROTTLED"

      # No documentation available.
      #
      DEPENDENCY_REQUEST_THROTTLED = "DEPENDENCY_REQUEST_THROTTLED"

      # No documentation available.
      #
      RESOURCE_LEVEL_THROTTLE = "RESOURCE_LEVEL_THROTTLE"
    end

    # <p>The specified resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["SNAPSHOT_NOT_FOUND", "DEPENDENCY_RESOURCE_NOT_FOUND"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceNotFoundExceptionReason
    #
    module ResourceNotFoundExceptionReason
      # No documentation available.
      #
      SNAPSHOT_NOT_FOUND = "SNAPSHOT_NOT_FOUND"

      # No documentation available.
      #
      DEPENDENCY_RESOURCE_NOT_FOUND = "DEPENDENCY_RESOURCE_NOT_FOUND"
    end

    # <p>Your current service quotas do not allow you to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #
    #   Enum, one of: ["DEPENDENCY_SERVICE_QUOTA_EXCEEDED"]
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceQuotaExceededExceptionReason
    #
    module ServiceQuotaExceededExceptionReason
      # No documentation available.
      #
      DEPENDENCY_SERVICE_QUOTA_EXCEEDED = "DEPENDENCY_SERVICE_QUOTA_EXCEEDED"
    end

    # @!attribute volume_size
    #   <p>The size of the volume, in GiB. The maximum size is <code>65536</code> GiB (64
    #               TiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute parent_snapshot_id
    #   <p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating
    #               the first snapshot for an on-premises volume, omit this parameter.</p>
    #           <p>You can't specify <b>ParentSnapshotId</b> and
    #               <b>Encrypted</b> in the same request. If you specify both
    #               parameters, the request fails with <code>ValidationException</code>.</p>
    #
    #
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #           <important>
    #               <p>If you specify an encrypted parent snapshot, you must have permission to use the
    #                   KMS key that was used to encrypt the parent snapshot. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the snapshot.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute description
    #   <p>A description for the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. Idempotency ensures that an API request completes only once. With an idempotent
    #               request, if the original request completes successfully. The subsequent retries with the same
    #               client token return the result from the original successful request and they have no additional
    #               effect.</p>
    #           <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html">
    #       		Idempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Indicates whether to encrypt the snapshot.</p>
    #
    #           <p>You can't specify <b>Encrypted</b> and <b>
    #               ParentSnapshotId</b> in the same request. If you specify both parameters, the
    #               request fails with <code>ValidationException</code>.</p>
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #               Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #
    #
    #           <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to be used to encrypt the snapshot.</p>
    #
    #           <p>The encryption status of the snapshot depends on the values that you specify for
    #               <b>Encrypted</b>, <b>KmsKeyArn</b>,
    #               and <b>ParentSnapshotId</b>, and whether your Amazon Web Services account
    #               is enabled for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html encryption-by-default">
    #                   encryption by default</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapis-using-encryption.html">
    #                       Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #
    #           <important>
    #               <p>To create an encrypted snapshot, you must have permission to use the KMS key. For
    #                   more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebsapi-permissions.html ebsapi-kms-permissions">
    #                       Permissions to use Key Management Service keys</a> in the <i>Amazon Elastic Compute Cloud User
    #                           Guide</i>.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute timeout
    #   <p>The amount of time (in minutes) after which the snapshot is automatically cancelled
    #               if:</p>
    #           <ul>
    #               <li>
    #                   <p>No blocks are written to the snapshot.</p>
    #               </li>
    #               <li>
    #                   <p>The snapshot is not completed after writing the last block of data.</p>
    #               </li>
    #            </ul>
    #           <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>
    #
    #   @return [Integer]
    #
    StartSnapshotInput = ::Struct.new(
      :volume_size,
      :parent_snapshot_id,
      :tags,
      :description,
      :client_token,
      :encrypted,
      :kms_key_arn,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::StartSnapshotInput "\
          "volume_size=#{volume_size || 'nil'}, "\
          "parent_snapshot_id=#{parent_snapshot_id || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "encrypted=#{encrypted || 'nil'}, "\
          "kms_key_arn=\"[SENSITIVE]\", "\
          "timeout=#{timeout || 'nil'}>"
      end
    end

    # @!attribute description
    #   <p>The description of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the snapshot owner.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the snapshot.</p>
    #
    #   Enum, one of: ["completed", "pending", "error"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute volume_size
    #   <p>The size of the volume, in GiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute block_size
    #   <p>The size of the blocks in the snapshot, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html"> Tagging your Amazon EC2
    #                   resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute parent_snapshot_id
    #   <p>The ID of the parent snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key used to encrypt the snapshot.</p>
    #
    #   @return [String]
    #
    StartSnapshotOutput = ::Struct.new(
      :description,
      :snapshot_id,
      :owner_id,
      :status,
      :start_time,
      :volume_size,
      :block_size,
      :tags,
      :parent_snapshot_id,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::EBS::Types::StartSnapshotOutput "\
          "description=#{description || 'nil'}, "\
          "snapshot_id=#{snapshot_id || 'nil'}, "\
          "owner_id=#{owner_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "start_time=#{start_time || 'nil'}, "\
          "volume_size=#{volume_size || 'nil'}, "\
          "block_size=#{block_size || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "parent_snapshot_id=#{parent_snapshot_id || 'nil'}, "\
          "kms_key_arn=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      COMPLETED = "completed"

      # No documentation available.
      #
      PENDING = "pending"

      # No documentation available.
      #
      ERROR = "error"
    end

    # <p>Describes a tag.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
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

    # <p>The input fails to satisfy the constraints of the EBS direct APIs.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #
    #   Enum, one of: ["INVALID_CUSTOMER_KEY", "INVALID_PAGE_TOKEN", "INVALID_BLOCK_TOKEN", "INVALID_SNAPSHOT_ID", "UNRELATED_SNAPSHOTS", "INVALID_BLOCK", "INVALID_CONTENT_ENCODING", "INVALID_TAG", "INVALID_DEPENDENCY_REQUEST", "INVALID_PARAMETER_VALUE", "INVALID_VOLUME_SIZE", "CONFLICTING_BLOCK_UPDATE"]
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      INVALID_CUSTOMER_KEY = "INVALID_CUSTOMER_KEY"

      # No documentation available.
      #
      INVALID_PAGE_TOKEN = "INVALID_PAGE_TOKEN"

      # No documentation available.
      #
      INVALID_BLOCK_TOKEN = "INVALID_BLOCK_TOKEN"

      # No documentation available.
      #
      INVALID_SNAPSHOT_ID = "INVALID_SNAPSHOT_ID"

      # No documentation available.
      #
      UNRELATED_SNAPSHOTS = "UNRELATED_SNAPSHOTS"

      # No documentation available.
      #
      INVALID_BLOCK = "INVALID_BLOCK"

      # No documentation available.
      #
      INVALID_CONTENT_ENCODING = "INVALID_CONTENT_ENCODING"

      # No documentation available.
      #
      INVALID_TAG = "INVALID_TAG"

      # No documentation available.
      #
      INVALID_DEPENDENCY_REQUEST = "INVALID_DEPENDENCY_REQUEST"

      # No documentation available.
      #
      INVALID_PARAMETER_VALUE = "INVALID_PARAMETER_VALUE"

      # No documentation available.
      #
      INVALID_VOLUME_SIZE = "INVALID_VOLUME_SIZE"

      # No documentation available.
      #
      CONFLICTING_BLOCK_UPDATE = "CONFLICTING_BLOCK_UPDATE"
    end

  end
end
