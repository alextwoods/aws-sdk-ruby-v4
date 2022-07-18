# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Codeartifact
  module Types

    # <p>
    #         The operation did not succeed because of an unauthorized access attempt.
    #       </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         Contains details about a package version asset.
    #        </p>
    #
    # @!attribute name
    #   <p>
    #            The name of the asset.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>
    #         The size of the asset.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute hashes
    #   <p>
    #         The hashes of the asset.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    AssetSummary = ::Struct.new(
      :name,
      :size,
      :hashes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The name of the repository to which the external connection is added.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute external_connection
    #   <p>
    #         The name of the external connection to add to the repository. The following values are supported:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>public:npmjs</code> - for the npm public repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:nuget-org</code> - for the NuGet Gallery.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:pypi</code> - for the Python Package Index.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-central</code> - for Maven Central.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-googleandroid</code> - for the Google Android repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-gradleplugins</code> - for the Gradle plugins repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-commonsware</code> - for the CommonsWare Android repository.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AssociateExternalConnectionInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the connected repository after processing the request.
    #          </p>
    #
    #   @return [RepositoryDescription]
    #
    AssociateExternalConnectionOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         The operation did not succeed because prerequisites are not met.
    #       </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #
    #   Enum, one of: ["domain", "repository", "package", "package-version", "asset"]
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the source and destination repositories.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute source_repository
    #   <p>
    #            The name of the repository that contains the package versions to copy.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute destination_repository
    #   <p>
    #         The name of the repository into which package versions are copied.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         The format of the package that is copied.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package that is copied.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>
    #           The versions of the package to copy.
    #         </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute version_revisions
    #   <p>
    #          A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation
    #         succeeds if the specified versions in the source repository match the specified package version revision.
    #       </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute allow_overwrite
    #   <p>
    #          Set to true to overwrite a package version that already exists in the destination repository.
    #          If set to false and the package version already exists in the destination repository,
    #          the package version is returned in the <code>failedVersions</code> field of the response with
    #          an <code>ALREADY_EXISTS</code> error code.
    #        </p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_from_upstream
    #   <p> Set to true to copy packages from repositories that are upstream from the source
    #         repository to the destination repository. The default setting is false. For more information,
    #         see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with
    #           upstream repositories</a>. </p>
    #
    #   @return [Boolean]
    #
    CopyPackageVersionsInput = ::Struct.new(
      :domain,
      :domain_owner,
      :source_repository,
      :destination_repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :allow_overwrite,
      :include_from_upstream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of the package versions that were successfully copied to your repository.
    #       </p>
    #
    #   @return [Hash<String, SuccessfulPackageVersionInfo>]
    #
    # @!attribute failed_versions
    #   <p>
    #         A map of package versions that failed to copy and their error codes. The possible error codes are in
    #         the <code>PackageVersionError</code> data type. They are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, PackageVersionError>]
    #
    CopyPackageVersionsOutput = ::Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p> The name of the domain to create. All domain names in an Amazon Web Services Region that are in the
    #         same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do
    #         not use sensitive information in a domain name because it is publicly discoverable. </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p> The encryption key for the domain. This is used to encrypt content stored in a domain.
    #         An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key
    #         alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have
    #           <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption
    #         key that is used. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html API_DescribeKey_RequestSyntax">DescribeKey</a> in the <i>Key Management Service API Reference</i>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">Key Management Service API Permissions
    #           Reference</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            <important>
    #               <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your
    #           domain. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric
    #             keys</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the domain.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDomainInput = ::Struct.new(
      :domain,
      :encryption_key,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           Contains information about the created domain after processing the request.
    #         </p>
    #
    #   @return [DomainDescription]
    #
    CreateDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the created repository.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The name of the repository to create. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         A description of the created repository.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #
    #   @return [Array<UpstreamRepository>]
    #
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the repository.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRepositoryInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the created repository after processing the request.
    #         </p>
    #
    #   @return [RepositoryDescription]
    #
    CreateRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain to delete.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    DeleteDomainInput = ::Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           Contains information about the deleted domain after processing the request.
    #          </p>
    #
    #   @return [DomainDescription]
    #
    DeleteDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain associated with the resource policy to be deleted.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision
    #   <p>
    #           The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #
    #   @return [String]
    #
    DeleteDomainPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      :policy_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>
    #           Information about the deleted resource policy after processing the request.
    #         </p>
    #
    #   @return [ResourcePolicy]
    #
    DeleteDomainPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the package to delete.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #           The name of the repository that contains the package versions to delete.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #           The format of the package versions to delete.
    #         </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #           The name of the package with the versions to delete.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>
    #           An array of strings that specify the versions of the package to delete.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute expected_status
    #   <p>
    #           The expected status of the package version to delete.
    #         </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    DeletePackageVersionsInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :expected_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #          A list of the package versions that were successfully deleted. The
    #          status of every successful version will be <code>Deleted</code>.
    #        </p>
    #
    #   @return [Hash<String, SuccessfulPackageVersionInfo>]
    #
    # @!attribute failed_versions
    #   <p>
    #          A <code>PackageVersionError</code> object that contains a map of errors codes for the
    #          deleted package that failed. The possible error codes are:
    #        </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, PackageVersionError>]
    #
    DeletePackageVersionsOutput = ::Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository to delete.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The name of the repository to delete. </p>
    #
    #   @return [String]
    #
    DeleteRepositoryInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the deleted repository after processing the request.
    #          </p>
    #
    #   @return [RepositoryDescription]
    #
    DeleteRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the repository associated with the resource policy to be deleted.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The name of the repository that is associated with the resource policy to be deleted
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision
    #   <p>
    #         The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
    #         prevents others from accidentally overwriting your changes to the repository's resource policy.
    #       </p>
    #
    #   @return [String]
    #
    DeleteRepositoryPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>
    #         Information about the deleted policy after processing the request.
    #       </p>
    #
    #   @return [ResourcePolicy]
    #
    DeleteRepositoryPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            A string that specifies the name of the requested domain.
    #        </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    DescribeDomainInput = ::Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #          Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you
    #          add one or more repositories.
    #         </p>
    #
    #   @return [DomainDescription]
    #
    DescribeDomainOutput = ::Struct.new(
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The name of the repository that contains the package version. </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the requested package version.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p> The name of the requested package version. </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    DescribePackageVersionInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute package_version
    #   <p>
    #         A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a>
    #         object that contains information about the requested package version.
    #       </p>
    #
    #   @return [PackageVersionDescription]
    #
    DescribePackageVersionOutput = ::Struct.new(
      :package_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository to describe.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #           A string that specifies the name of the requested repository.
    #          </p>
    #
    #   @return [String]
    #
    DescribeRepositoryInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #            A <code>RepositoryDescription</code> object that contains the requested repository information.
    #          </p>
    #
    #   @return [RepositoryDescription]
    #
    DescribeRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository from which to remove the external
    #         repository. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>The name of the repository from which the external connection will be removed. </p>
    #
    #   @return [String]
    #
    # @!attribute external_connection
    #   <p>The name of the external connection to be removed from the repository. </p>
    #
    #   @return [String]
    #
    DisassociateExternalConnectionInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #         The repository associated with the removed external connection.
    #       </p>
    #
    #   @return [RepositoryDescription]
    #
    DisassociateExternalConnectionOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository you want to dispose.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the package versions you want to dispose.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format that specifies the type of package versions you want to dispose.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package with the versions you want to dispose.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>
    #         The versions of the package you want to dispose.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute version_revisions
    #   <p>
    #         The revisions of the package versions you want to dispose.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute expected_status
    #   <p>
    #         The expected status of the package version to dispose.
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    DisposePackageVersionsInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :expected_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of the package versions that were successfully disposed.
    #       </p>
    #
    #   @return [Hash<String, SuccessfulPackageVersionInfo>]
    #
    # @!attribute failed_versions
    #   <p>
    #         A <code>PackageVersionError</code> object that contains a map of errors codes for the
    #         disposed package versions that failed. The possible error codes are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, PackageVersionError>]
    #
    DisposePackageVersionsOutput = ::Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #        Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you
    #        add one or more repositories.
    #       </p>
    #
    # @!attribute name
    #   <p>
    #            The name of the domain.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p> The Amazon Web Services account ID that owns the domain. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the domain. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #           The current status of a domain.
    #         </p>
    #
    #   Enum, one of: ["Active", "Deleted"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>
    #         A timestamp that represents the date and time the domain was created.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute encryption_key
    #   <p> The ARN of an Key Management Service (KMS) key associated with a domain. </p>
    #
    #   @return [String]
    #
    # @!attribute repository_count
    #   <p>
    #         The number of repositories in the domain.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute asset_size_bytes
    #   <p>
    #         The total size of all assets in the domain.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute s3_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket that is used to store package assets in the domain.</p>
    #
    #   @return [String]
    #
    DomainDescription = ::Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key,
      :repository_count,
      :asset_size_bytes,
      :s3_bucket_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.repository_count ||= 0
        self.asset_size_bytes ||= 0
      end
    end

    # Includes enum constants for DomainStatus
    #
    module DomainStatus
      # No documentation available.
      #
      ACTIVE = "Active"

      # No documentation available.
      #
      DELETED = "Deleted"
    end

    # <p> Information about a domain, including its name, Amazon Resource Name (ARN), and status.
    #       The <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html">ListDomains</a> operation returns a list of <code>DomainSummary</code>
    #       objects. </p>
    #
    # @!attribute name
    #   <p>
    #         The name of the domain.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>
    #         The ARN of the domain.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #         A string that contains the status of the domain.
    #       </p>
    #
    #   Enum, one of: ["Active", "Deleted"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>
    #         A timestamp that contains the date and time the domain was created.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute encryption_key
    #   <p>
    #         The key used to encrypt the domain.
    #       </p>
    #
    #   @return [String]
    #
    DomainSummary = ::Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExternalConnectionStatus
    #
    module ExternalConnectionStatus
      # No documentation available.
      #
      AVAILABLE = "Available"
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that is in scope for the generated authorization token.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute duration_seconds
    #   <p>The time, in seconds, that the generated authorization token is valid. Valid values are
    #       <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours).
    #       A value of <code>0</code> will set the expiration of the authorization token to the same expiration of
    #       the user's role's temporary credentials.</p>
    #
    #   @return [Integer]
    #
    GetAuthorizationTokenInput = ::Struct.new(
      :domain,
      :domain_owner,
      :duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorization_token
    #   <p>
    #           The returned authentication token.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>
    #         A timestamp that specifies the date and time the authorization token expires.
    #       </p>
    #
    #   @return [Time]
    #
    GetAuthorizationTokenOutput = ::Struct.new(
      :authorization_token,
      :expiration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain to which the resource policy is attached.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    GetDomainPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>
    #           The returned resource policy.
    #         </p>
    #
    #   @return [ResourcePolicy]
    #
    GetDomainPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The repository that contains the package version with the requested asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package version with the requested asset file.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package that contains the requested asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute asset
    #   <p>
    #         The name of the requested asset.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version_revision
    #   <p>
    #           The name of the package version revision that contains the requested asset.
    #       </p>
    #
    #   @return [String]
    #
    GetPackageVersionAssetInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :asset,
      :package_version_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset
    #   <p> The binary file, or asset, that is downloaded.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_name
    #   <p>
    #         The name of the asset that is downloaded.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version_revision
    #   <p>
    #         The name of the package version revision that contains the downloaded asset.
    #       </p>
    #
    #   @return [String]
    #
    GetPackageVersionAssetOutput = ::Struct.new(
      :asset,
      :asset_name,
      :package_version,
      :package_version_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested readme file.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The repository that contains the package with the requested readme file.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package version with the requested readme file.
    #       </p>
    #            <note>
    #               <p>Although <code>maven</code> is
    #         listed as a valid value, CodeArtifact does not support displaying readme files for Maven packages.</p>
    #            </note>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package version that contains the requested readme file.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    GetPackageVersionReadmeInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute format
    #   <p>
    #         The format of the package with the requested readme file.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package that contains the returned readme file.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #         The version of the package with the requested readme file.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute readme
    #   <p>
    #         The text of the returned readme file.
    #       </p>
    #
    #   @return [String]
    #
    GetPackageVersionReadmeOutput = ::Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :readme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository.
    #        </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #            The name of the repository.
    #        </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         Returns which endpoint of a repository to return. A repository has one endpoint for each
    #         package format.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    GetRepositoryEndpointInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_endpoint
    #   <p>
    #            A string that specifies the URL of the returned endpoint.
    #        </p>
    #
    #   @return [String]
    #
    GetRepositoryEndpointOutput = ::Struct.new(
      :repository_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain containing the repository whose associated resource policy is to be retrieved.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #           The name of the repository whose associated resource policy is to be retrieved.
    #         </p>
    #
    #   @return [String]
    #
    GetRepositoryPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>
    #           The returned resource policy.
    #         </p>
    #
    #   @return [ResourcePolicy]
    #
    GetRepositoryPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HashAlgorithm
    #
    module HashAlgorithm
      # No documentation available.
      #
      MD5 = "MD5"

      # No documentation available.
      #
      SHA1 = "SHA-1"

      # No documentation available.
      #
      SHA256 = "SHA-256"

      # No documentation available.
      #
      SHA512 = "SHA-512"
    end

    # <p> The operation did not succeed because of an error that occurred inside CodeArtifact. </p>
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

    # <p>
    #         Details of the license data.
    #       </p>
    #
    # @!attribute name
    #   <p>
    #           Name of the license.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>
    #           The URL for license data.
    #         </p>
    #
    #   @return [String]
    #
    LicenseInfo = ::Struct.new(
      :name,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListDomainsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domains
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html">DomainSummary</a> objects.
    #        </p>
    #
    #   @return [Array<DomainSummary>]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListDomainsOutput = ::Struct.new(
      :domains,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository associated with the package version assets.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the package that contains the returned package version assets.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         The format of the package that contains the returned package version assets.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #            The name of the package that contains the returned package version assets.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackageVersionAssetsInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute format
    #   <p>
    #         The format of the package that contains the returned package version assets.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package that contains the returned package version assets.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #         The version of the package associated with the returned assets.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute assets
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">AssetSummary</a> objects.
    #       </p>
    #
    #   @return [Array<AssetSummary>]
    #
    ListPackageVersionAssetsOutput = ::Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :assets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the requested package version dependencies.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the requested package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         The format of the package with the requested dependencies.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package versions' package.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackageVersionDependenciesInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package that contains the returned dependencies.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package that contains the returned package versions dependencies.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #         The version of the package that is specified in the request.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute dependencies
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html">PackageDependency</a> objects.
    #       </p>
    #
    #   @return [Array<PackageDependency>]
    #
    ListPackageVersionDependenciesOutput = ::Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :dependencies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository that contains the returned package versions.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #            The name of the repository that contains the package.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         The format of the returned packages.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package for which you want to return a list of package versions.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #         A string that specifies the status of the package versions to include in the returned list.
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>
    #         How to sort the returned list of package versions.
    #       </p>
    #
    #   Enum, one of: ["PUBLISHED_TIME"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackageVersionsInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :status,
      :sort_by,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_display_version
    #   <p>
    #         The default package version to display. This depends on the package format:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             For Maven and PyPI packages, it's the most recently published package version.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             For npm packages, it's the version referenced by the
    #             <code>latest</code> tag. If the  <code>latest</code> tag is not set, it's the most recently published package version.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format of the package.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #            The name of the package.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>
    #           The returned list of
    #           <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html">PackageVersionSummary</a>
    #           objects.
    #          </p>
    #
    #   @return [Array<PackageVersionSummary>]
    #
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackageVersionsOutput = ::Struct.new(
      :default_display_version,
      :format,
      :namespace,
      :package,
      :versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the repository that contains the requested list of packages.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #            The name of the repository from which packages are to be listed.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         The format of the packages.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package_prefix
    #   <p>
    #         A prefix used to filter returned packages. Only packages with names that start with
    #         <code>packagePrefix</code> are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackagesInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute packages
    #   <p>
    #           The list of returned <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html">PackageSummary</a>
    #           objects.
    #          </p>
    #
    #   @return [Array<PackageSummary>]
    #
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListPackagesOutput = ::Struct.new(
      :packages,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the returned list of repositories.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute administrator_account
    #   <p>
    #            Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute repository_prefix
    #   <p>
    #         A prefix used to filter returned repositories. Only repositories with names that start with
    #         <code>repositoryPrefix</code> are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListRepositoriesInDomainInput = ::Struct.new(
      :domain,
      :domain_owner,
      :administrator_account,
      :repository_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repositories
    #   <p>
    #          The returned list of repositories.
    #        </p>
    #
    #   @return [Array<RepositorySummary>]
    #
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListRepositoriesInDomainOutput = ::Struct.new(
      :repositories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_prefix
    #   <p> A prefix used to filter returned repositories. Only repositories with names that start
    #         with <code>repositoryPrefix</code> are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListRepositoriesInput = ::Struct.new(
      :repository_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repositories
    #   <p>
    #           The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a>
    #           objects.
    #          </p>
    #
    #   @return [Array<RepositorySummary>]
    #
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #
    #   @return [String]
    #
    ListRepositoriesOutput = ::Struct.new(
      :repositories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         Details about a package dependency.
    #       </p>
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #           The name of the package that this package depends on.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute dependency_type
    #   <p> The type of a package dependency. The possible values depend on the package type.
    #         Example types are <code>compile</code>, <code>runtime</code>, and <code>test</code> for Maven
    #         packages, and <code>dev</code>, <code>prod</code>, and <code>optional</code> for npm packages. </p>
    #
    #   @return [String]
    #
    # @!attribute version_requirement
    #   <p>
    #           The required version, or version range, of the package that this package depends on. The version format
    #           is specific to the package type. For example, the following are possible valid required versions: <code>1.2.3</code>,
    #           <code>^2.3.4</code>, or <code>4.x</code>.
    #         </p>
    #
    #   @return [String]
    #
    PackageDependency = ::Struct.new(
      :namespace,
      :package,
      :dependency_type,
      :version_requirement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PackageFormat
    #
    module PackageFormat
      # No documentation available.
      #
      NPM = "npm"

      # No documentation available.
      #
      PYPI = "pypi"

      # No documentation available.
      #
      MAVEN = "maven"

      # No documentation available.
      #
      NUGET = "nuget"
    end

    # <p>
    #       Details about a package, including its format, namespace, and name. The
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackages.html">ListPackages</a>
    #       operation returns a list of <code>PackageSummary</code> objects.
    #     </p>
    #
    # @!attribute format
    #   <p>
    #         The format of the package.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package.
    #       </p>
    #
    #   @return [String]
    #
    PackageSummary = ::Struct.new(
      :format,
      :namespace,
      :package,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Details about a package version.
    #     </p>
    #
    # @!attribute format
    #   <p>
    #         The format of the package version.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package_name
    #   <p>
    #         The name of the requested package.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>
    #         The name of the package that is displayed. The <code>displayName</code> varies depending
    #         on the package version's format. For example, if an npm package is named <code>ui</code>,
    #         is in the namespace <code>vue</code>, and has the format <code>npm</code>, then
    #         the <code>displayName</code> is <code>@vue/ui</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #         The version of the package.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>
    #         A summary of the package version. The summary is extracted from the package. The information in and
    #         detail level of the summary depends on the package version's format.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute home_page
    #   <p>
    #         The homepage associated with the package.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute source_code_repository
    #   <p>
    #         The repository for the source code in the package version, or the source code used to build it.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute published_time
    #   <p>
    #         A timestamp that contains the date and time the package version was published.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute licenses
    #   <p>
    #         Information about licenses associated with the package version.
    #       </p>
    #
    #   @return [Array<LicenseInfo>]
    #
    # @!attribute revision
    #   <p>
    #         The revision of the package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #         A string that contains the status of the package version.
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    PackageVersionDescription = ::Struct.new(
      :format,
      :namespace,
      :package_name,
      :display_name,
      :version,
      :summary,
      :home_page,
      :source_code_repository,
      :published_time,
      :licenses,
      :revision,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #        An error associated with package.
    #    </p>
    #
    # @!attribute error_code
    #   <p> The error code associated with the error. Valid error codes are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>
    #            The error message associated with the error.
    #        </p>
    #
    #   @return [String]
    #
    PackageVersionError = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PackageVersionErrorCode
    #
    module PackageVersionErrorCode
      # No documentation available.
      #
      ALREADY_EXISTS = "ALREADY_EXISTS"

      # No documentation available.
      #
      MISMATCHED_REVISION = "MISMATCHED_REVISION"

      # No documentation available.
      #
      MISMATCHED_STATUS = "MISMATCHED_STATUS"

      # No documentation available.
      #
      NOT_ALLOWED = "NOT_ALLOWED"

      # No documentation available.
      #
      NOT_FOUND = "NOT_FOUND"

      # No documentation available.
      #
      SKIPPED = "SKIPPED"
    end

    # Includes enum constants for PackageVersionSortType
    #
    module PackageVersionSortType
      # No documentation available.
      #
      PUBLISHED_TIME = "PUBLISHED_TIME"
    end

    # Includes enum constants for PackageVersionStatus
    #
    module PackageVersionStatus
      # No documentation available.
      #
      PUBLISHED = "Published"

      # No documentation available.
      #
      UNFINISHED = "Unfinished"

      # No documentation available.
      #
      UNLISTED = "Unlisted"

      # No documentation available.
      #
      ARCHIVED = "Archived"

      # No documentation available.
      #
      DISPOSED = "Disposed"

      # No documentation available.
      #
      DELETED = "Deleted"
    end

    # <p>
    #        Details about a package version, including its status, version, and revision. The
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a>
    #        operation returns a list of <code>PackageVersionSummary</code> objects.
    #      </p>
    #
    # @!attribute version
    #   <p>
    #           Information about a package version.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>
    #         The revision associated with a package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #         A string that contains the status of the package version. It can be one of the following:
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    PackageVersionSummary = ::Struct.new(
      :version,
      :revision,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain on which to set the resource policy.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision
    #   <p>
    #           The current revision of the resource policy to be set. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided domain. </p>
    #
    #   @return [String]
    #
    PutDomainPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      :policy_revision,
      :policy_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p> The resource policy that was set after processing the request. </p>
    #
    #   @return [ResourcePolicy]
    #
    PutDomainPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain containing the repository to set the resource policy on.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The name of the repository to set the resource policy on. </p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision
    #   <p>
    #           Sets the revision of the resource policy that specifies permissions to access the repository.
    #           This revision is used for optimistic locking, which prevents others from overwriting your
    #           changes to the repository's resource policy.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided repository. </p>
    #
    #   @return [String]
    #
    PutRepositoryPermissionsPolicyInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision,
      :policy_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p> The resource policy that was set after processing the request. </p>
    #
    #   @return [ResourcePolicy]
    #
    PutRepositoryPermissionsPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The details of a repository stored in CodeArtifact. A CodeArtifact repository contains a set of
    #       package versions, each of which maps to a set of assets. Repositories are polyglot—a single
    #       repository can contain packages of any supported type. Each repository exposes endpoints for
    #       fetching and publishing packages using tools like the <code>npm</code> CLI, the Maven CLI
    #         (<code>mvn</code>), and <code>pip</code>. You can create up to 100 repositories per Amazon Web Services
    #       account. </p>
    #
    # @!attribute name
    #   <p>
    #           The name of the repository.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute administrator_account
    #   <p> The 12-digit account number of the Amazon Web Services account that manages the repository. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>
    #           The name of the domain that contains the repository.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the repository. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         A text description of the repository.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #
    #   @return [Array<UpstreamRepositoryInfo>]
    #
    # @!attribute external_connections
    #   <p>
    #         An array of external connections associated with the repository.
    #       </p>
    #
    #   @return [Array<RepositoryExternalConnectionInfo>]
    #
    RepositoryDescription = ::Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      :upstreams,
      :external_connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         Contains information about the external connection of a repository.
    #       </p>
    #
    # @!attribute external_connection_name
    #   <p> The name of the external connection associated with a repository. </p>
    #
    #   @return [String]
    #
    # @!attribute package_format
    #   <p>
    #           The package format associated with a repository's external connection. The valid package formats are:
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>npm</code>: A Node Package Manager (npm) package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pypi</code>: A Python Package Index (PyPI) package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>nuget</code>: A NuGet package.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #           The status of the external connection of a repository. There is one valid value, <code>Available</code>.
    #         </p>
    #
    #   Enum, one of: ["Available"]
    #
    #   @return [String]
    #
    RepositoryExternalConnectionInfo = ::Struct.new(
      :external_connection_name,
      :package_format,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Details about a repository, including its Amazon Resource Name (ARN), description, and
    #       domain information. The <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListRepositories.html">ListRepositories</a> operation returns a list of
    #         <code>RepositorySummary</code> objects. </p>
    #
    # @!attribute name
    #   <p>
    #            The name of the repository.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute administrator_account
    #   <p>
    #            The Amazon Web Services account ID that manages the repository.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>
    #            The name of the domain that contains the repository.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The ARN of the repository. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The description of the repository.
    #       </p>
    #
    #   @return [String]
    #
    RepositorySummary = ::Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       The operation did not succeed because the resource requested is not found in the service.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #
    #   Enum, one of: ["domain", "repository", "package", "package-version", "asset"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         An CodeArtifact resource policy that contains a resource ARN, document details, and a revision.
    #       </p>
    #
    # @!attribute resource_arn
    #   <p>
    #           The ARN of the resource associated with the resource policy
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>
    #           The current revision of the resource policy.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute document
    #   <p>
    #         The resource policy formatted in JSON.
    #       </p>
    #
    #   @return [String]
    #
    ResourcePolicy = ::Struct.new(
      :resource_arn,
      :revision,
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      DOMAIN = "domain"

      # No documentation available.
      #
      REPOSITORY = "repository"

      # No documentation available.
      #
      PACKAGE = "package"

      # No documentation available.
      #
      PACKAGE_VERSION = "package-version"

      # No documentation available.
      #
      ASSET = "asset"
    end

    # <p>
    #         The operation did not succeed because it would have exceeded a service limit for your account.
    #       </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #
    #   Enum, one of: ["domain", "repository", "package", "package-version", "asset"]
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Contains the revision and status of a package version.
    #     </p>
    #
    # @!attribute revision
    #   <p>
    #         The revision of a package version.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #         The status of a package version.
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    SuccessfulPackageVersionInfo = ::Struct.new(
      :revision,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag is a key-value pair that can be used to manage, search for, or filter resources in CodeArtifact.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       The operation did not succeed because too many requests are sent to the service.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>
    #         The time period, in seconds, to wait before retrying the request.
    #       </p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package versions with a status to be updated.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #         The repository that contains the package versions with the status you want to update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package with the statuses to update.
    #       </p>
    #
    #   Enum, one of: ["npm", "pypi", "maven", "nuget"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>
    #         The namespace of the package. The package component that specifies its
    #         namespace depends on its type. For example:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             A Python package does not contain a corresponding component, so
    #             Python packages do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute package
    #   <p>
    #         The name of the package with the version statuses to update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>
    #         An array of strings that specify the versions of the package with the statuses to update.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute version_revisions
    #   <p> A map of package versions and package version revisions. The map <code>key</code> is the
    #         package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the
    #         package version revision. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute expected_status
    #   <p> The package version’s expected status before it is updated. If
    #           <code>expectedStatus</code> is provided, the package version's status is updated only if its
    #         status at the time <code>UpdatePackageVersionsStatus</code> is called matches
    #           <code>expectedStatus</code>. </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    # @!attribute target_status
    #   <p>
    #         The status you want to change the package version status to.
    #       </p>
    #
    #   Enum, one of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    #   @return [String]
    #
    UpdatePackageVersionsStatusInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :expected_status,
      :target_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of <code>PackageVersionError</code> objects, one for each package version with
    #         a status that failed to update.
    #       </p>
    #
    #   @return [Hash<String, SuccessfulPackageVersionInfo>]
    #
    # @!attribute failed_versions
    #   <p> A list of <code>SuccessfulPackageVersionInfo</code> objects, one for each package version
    #         with a status that successfully updated. </p>
    #
    #   @return [Hash<String, PackageVersionError>]
    #
    UpdatePackageVersionsStatusOutput = ::Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain associated with the repository to update.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>
    #            The name of the repository to update.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #            An updated repository description.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #
    #   @return [Array<UpstreamRepository>]
    #
    UpdateRepositoryInput = ::Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>
    #            The updated repository.
    #          </p>
    #
    #   @return [RepositoryDescription]
    #
    UpdateRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #        Information about an upstream repository. A list of <code>UpstreamRepository</code> objects is an input parameter to
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html">CreateRepository</a>
    #        and <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html">UpdateRepository</a>.
    #      </p>
    #
    # @!attribute repository_name
    #   <p> The name of an upstream repository. </p>
    #
    #   @return [String]
    #
    UpstreamRepository = ::Struct.new(
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #         Information about an upstream repository.
    #       </p>
    #
    # @!attribute repository_name
    #   <p> The name of an upstream repository. </p>
    #
    #   @return [String]
    #
    UpstreamRepositoryInfo = ::Struct.new(
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       The operation did not succeed because a parameter in the request was sent with an invalid value.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>
    #
    #       </p>
    #
    #   Enum, one of: ["CANNOT_PARSE", "ENCRYPTION_KEY_ERROR", "FIELD_VALIDATION_FAILED", "UNKNOWN_OPERATION", "OTHER"]
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
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      ENCRYPTION_KEY_ERROR = "ENCRYPTION_KEY_ERROR"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

  end
end
