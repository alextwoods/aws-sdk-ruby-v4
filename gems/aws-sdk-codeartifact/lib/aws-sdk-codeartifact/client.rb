# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Codeartifact
  # An API client for CodeArtifactControlPlaneService
  # See {#initialize} for a full list of supported configuration options
  # <p> CodeArtifact is a fully managed artifact repository compatible with language-native
  #       package managers and build tools such as npm, Apache Maven, pip, and dotnet. You can use CodeArtifact to
  #       share packages with development teams and pull packages. Packages can be pulled from both
  #       public and CodeArtifact repositories. You can also create an upstream relationship between a CodeArtifact
  #       repository and another repository, which effectively merges their contents from the point of
  #       view of a package manager client. </p>
  #
  #          <p>
  #             <b>CodeArtifact Components</b>
  #          </p>
  #          <p>Use the information in this guide to help you work with the following CodeArtifact components:</p>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Repository</b>: A CodeArtifact repository contains a set of <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version">package
  #             versions</a>, each of which maps to a set of assets, or files. Repositories are
  #           polyglot, so a single repository can contain packages of any supported type. Each
  #           repository exposes endpoints for fetching and publishing packages using tools like the
  #             <b>
  #                      <code>npm</code>
  #                   </b> CLI, the Maven CLI (<b>
  #                      <code>mvn</code>
  #                   </b>), Python CLIs (<b>
  #                      <code>pip</code>
  #                   </b> and <code>twine</code>), and NuGet CLIs (<code>nuget</code> and <code>dotnet</code>).</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Domain</b>: Repositories are aggregated into a higher-level entity known as a
  #             <i>domain</i>. All package assets and metadata are stored in the domain,
  #             but are consumed through repositories. A given package asset, such as a Maven JAR file, is
  #             stored once per domain, no matter how many repositories it's present in. All of the assets
  #             and metadata in a domain are encrypted with the same customer master key (CMK) stored in
  #             Key Management Service (KMS).</p>
  #                <p>Each repository is a member of a single domain and can't be moved to a
  #             different domain.</p>
  #                <p>The domain allows organizational policy to be applied across multiple
  #             repositories, such as which accounts can access repositories in the domain, and
  #             which public repositories can be used as sources of packages.</p>
  #                <p>Although an organization can have multiple domains, we recommend a single production
  #             domain that contains all published artifacts so that teams can find and share packages
  #             across their organization.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Package</b>: A <i>package</i> is a bundle of software and the metadata required to
  #           resolve dependencies and install the software. CodeArtifact supports <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html">npm</a>, <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html">PyPI</a>, <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven">Maven</a>, and <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-nuget">NuGet</a> package formats.</p>
  #                <p>In CodeArtifact, a package consists of:</p>
  #                <ul>
  #                   <li>
  #                      <p>A <i>name</i> (for example, <code>webpack</code> is the name of a
  #               popular npm package)</p>
  #                   </li>
  #                   <li>
  #                      <p>An optional namespace (for example, <code>@types</code> in <code>@types/node</code>)</p>
  #                   </li>
  #                   <li>
  #                      <p>A set of versions (for example, <code>1.0.0</code>, <code>1.0.1</code>,
  #                 <code>1.0.2</code>, etc.)</p>
  #                   </li>
  #                   <li>
  #                      <p> Package-level metadata (for example, npm tags)</p>
  #                   </li>
  #                </ul>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Package version</b>: A version of a package, such as <code>@types/node 12.6.9</code>. The version number
  #           format and semantics vary for different package formats. For example, npm package versions
  #           must conform to the <a href="https://semver.org/">Semantic Versioning
  #             specification</a>. In CodeArtifact, a package version consists of the version identifier,
  #           metadata at the package version level, and a set of assets.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Upstream repository</b>: One repository is <i>upstream</i> of another when the package versions in
  #           it can be accessed from the repository endpoint of the downstream repository, effectively
  #           merging the contents of the two repositories from the point of view of a client. CodeArtifact
  #           allows creating an upstream relationship between two repositories.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Asset</b>: An individual file stored in CodeArtifact associated with a package version, such as an npm
  #             <code>.tgz</code> file or Maven POM and JAR files.</p>
  #             </li>
  #          </ul>
  #
  #          <p>CodeArtifact supports these operations:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>AssociateExternalConnection</code>: Adds an existing external
  #           connection to a repository.
  #         </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>CopyPackageVersions</code>: Copies package versions from one
  #           repository to another repository in the same domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>CreateDomain</code>: Creates a domain</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>CreateRepository</code>: Creates a CodeArtifact repository in a domain. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteDomain</code>: Deletes a domain. You cannot delete a domain that contains
  #           repositories. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteDomainPermissionsPolicy</code>: Deletes the resource policy that is set on a domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeletePackageVersions</code>: Deletes versions of a package. After a package has
  #           been deleted, it can be republished, but its assets and metadata cannot be restored
  #           because they have been permanently removed from storage.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteRepository</code>: Deletes a repository.
  #         </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteRepositoryPermissionsPolicy</code>: Deletes the resource policy that is set on a repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeDomain</code>: Returns a <code>DomainDescription</code> object that
  #           contains information about the requested domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribePackageVersion</code>: Returns a <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a>
  #           object that contains details about a package version. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeRepository</code>: Returns a <code>RepositoryDescription</code> object
  #           that contains detailed information about the requested repository. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DisposePackageVersions</code>: Disposes versions of a package. A package version
  #           with the status <code>Disposed</code> cannot be restored because they have been
  #           permanently removed from storage.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DisassociateExternalConnection</code>: Removes an existing external connection from a repository.
  #         </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetAuthorizationToken</code>: Generates a temporary authorization token for accessing repositories in the domain. The token expires the authorization period has passed.
  #           The default authorization period is 12 hours and can be customized to any length with a maximum of 12 hours.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetDomainPermissionsPolicy</code>: Returns the policy of a resource
  #           that is attached to the specified domain. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetPackageVersionAsset</code>: Returns the contents of an asset that is in a package version. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetPackageVersionReadme</code>: Gets the readme file or descriptive text for a package version.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetRepositoryEndpoint</code>: Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each
  #           package format:
  #         </p>
  #                <ul>
  #                   <li>
  #                      <p>
  #                         <code>maven</code>
  #                      </p>
  #                   </li>
  #                   <li>
  #                      <p>
  #                         <code>npm</code>
  #                      </p>
  #                   </li>
  #                   <li>
  #                      <p>
  #                         <code>nuget</code>
  #                      </p>
  #                   </li>
  #                   <li>
  #                      <p>
  #                         <code>pypi</code>
  #                      </p>
  #                   </li>
  #                </ul>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>GetRepositoryPermissionsPolicy</code>: Returns the resource policy that is set on a repository.
  #         </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListDomains</code>: Returns a list of <code>DomainSummary</code> objects. Each
  #           returned <code>DomainSummary</code> object contains information about a domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListPackages</code>: Lists the packages in a repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListPackageVersionAssets</code>: Lists the assets for a given package version.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListPackageVersionDependencies</code>: Returns a list of the direct dependencies for a
  #           package version. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListPackageVersions</code>: Returns a list of package versions for a specified
  #           package in a repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListRepositories</code>: Returns a list of repositories owned by the Amazon Web Services account that called this method.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListRepositoriesInDomain</code>: Returns a list of the repositories in a domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>PutDomainPermissionsPolicy</code>: Attaches a resource policy to a domain.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>PutRepositoryPermissionsPolicy</code>: Sets the resource policy on a repository
  #           that specifies permissions to access it. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdatePackageVersionsStatus</code>: Updates the status of one or more versions of a package.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateRepository</code>: Updates the properties of a repository.</p>
  #             </li>
  #          </ul>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::Codeartifact::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds an existing external connection to a repository. One external connection is allowed
    #       per repository.</p>
    #          <note>
    #             <p>A repository can have one or more upstream repositories, or an external connection.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateExternalConnectionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository.</p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The name of the repository to which the external connection is added.
    #       </p>
    #
    # @option params [String] :external_connection
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
    # @return [Types::AssociateExternalConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_external_connection(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     external_connection: 'externalConnection' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateExternalConnectionOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def associate_external_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateExternalConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateExternalConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateExternalConnection
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::AssociateExternalConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateExternalConnection,
        stubs: @stubs,
        params_class: Params::AssociateExternalConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_external_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Copies package versions from one repository to another repository in the same domain.
    #       </p>
    #          <note>
    #             <p>
    #         You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #       </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CopyPackageVersionsInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the source and destination repositories.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :source_repository
    #   <p>
    #            The name of the repository that contains the package versions to copy.
    #          </p>
    #
    # @option params [String] :destination_repository
    #   <p>
    #         The name of the repository into which package versions are copied.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         The format of the package that is copied.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package that is copied.
    #       </p>
    #
    # @option params [Array<String>] :versions
    #   <p>
    #           The versions of the package to copy.
    #         </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    #
    # @option params [Hash<String, String>] :version_revisions
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
    # @option params [Boolean] :allow_overwrite
    #   <p>
    #          Set to true to overwrite a package version that already exists in the destination repository.
    #          If set to false and the package version already exists in the destination repository,
    #          the package version is returned in the <code>failedVersions</code> field of the response with
    #          an <code>ALREADY_EXISTS</code> error code.
    #        </p>
    #
    # @option params [Boolean] :include_from_upstream
    #   <p> Set to true to copy packages from repositories that are upstream from the source
    #         repository to the destination repository. The default setting is false. For more information,
    #         see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with
    #           upstream repositories</a>. </p>
    #
    # @return [Types::CopyPackageVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_package_versions(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     source_repository: 'sourceRepository', # required
    #     destination_repository: 'destinationRepository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     versions: [
    #       'member'
    #     ],
    #     version_revisions: {
    #       'key' => 'value'
    #     },
    #     allow_overwrite: false,
    #     include_from_upstream: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyPackageVersionsOutput
    #   resp.data.successful_versions #=> Hash<String, SuccessfulPackageVersionInfo>
    #   resp.data.successful_versions['key'] #=> Types::SuccessfulPackageVersionInfo
    #   resp.data.successful_versions['key'].revision #=> String
    #   resp.data.successful_versions['key'].status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   resp.data.failed_versions #=> Hash<String, PackageVersionError>
    #   resp.data.failed_versions['key'] #=> Types::PackageVersionError
    #   resp.data.failed_versions['key'].error_code #=> String, one of ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"]
    #   resp.data.failed_versions['key'].error_message #=> String
    #
    def copy_package_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyPackageVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyPackageVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyPackageVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CopyPackageVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyPackageVersions,
        stubs: @stubs,
        params_class: Params::CopyPackageVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_package_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a domain. CodeArtifact <i>domains</i> make it easier to manage multiple repositories across an
    #         organization. You can use a domain to apply permissions across many
    #         repositories owned by different Amazon Web Services accounts. An asset is stored only once
    #         in a domain, even if it's in multiple repositories.
    #     </p>
    #
    #          <p>Although you can have multiple domains, we recommend a single production domain that contains all
    #         published artifacts so that your development teams can find and share packages. You can use a second
    #         pre-production domain to test changes to the production domain configuration.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainInput}.
    #
    # @option params [String] :domain
    #   <p> The name of the domain to create. All domain names in an Amazon Web Services Region that are in the
    #         same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do
    #         not use sensitive information in a domain name because it is publicly discoverable. </p>
    #
    # @option params [String] :encryption_key
    #   <p> The encryption key for the domain. This is used to encrypt content stored in a domain.
    #         An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key
    #         alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have
    #           <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption
    #         key that is used. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax">DescribeKey</a> in the <i>Key Management Service API Reference</i>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">Key Management Service API Permissions
    #           Reference</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            <important>
    #               <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your
    #           domain. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric
    #             keys</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            </important>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tag key-value pairs for the domain.</p>
    #
    # @return [Types::CreateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain(
    #     domain: 'domain', # required
    #     encryption_key: 'encryptionKey',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainOutput
    #   resp.data.domain #=> Types::DomainDescription
    #   resp.data.domain.name #=> String
    #   resp.data.domain.owner #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.status #=> String, one of ["Active", "Deleted"]
    #   resp.data.domain.created_time #=> Time
    #   resp.data.domain.encryption_key #=> String
    #   resp.data.domain.repository_count #=> Integer
    #   resp.data.domain.asset_size_bytes #=> Integer
    #   resp.data.domain.s3_bucket_arn #=> String
    #
    def create_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomain
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomain,
        stubs: @stubs,
        params_class: Params::CreateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Creates a repository.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateRepositoryInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the created repository.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p> The name of the repository to create. </p>
    #
    # @option params [String] :description
    #   <p>
    #         A description of the created repository.
    #       </p>
    #
    # @option params [Array<UpstreamRepository>] :upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tag key-value pairs for the repository.</p>
    #
    # @return [Types::CreateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     description: 'description',
    #     upstreams: [
    #       {
    #         repository_name: 'repositoryName' # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRepositoryOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def create_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRepository,
        stubs: @stubs,
        params_class: Params::CreateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain
    #          with repositories, first delete its repositories.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain to delete.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
    #   resp.data.domain #=> Types::DomainDescription
    #   resp.data.domain.name #=> String
    #   resp.data.domain.owner #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.status #=> String, one of ["Active", "Deleted"]
    #   resp.data.domain.created_time #=> Time
    #   resp.data.domain.encryption_key #=> String
    #   resp.data.domain.repository_count #=> Integer
    #   resp.data.domain.asset_size_bytes #=> Integer
    #   resp.data.domain.s3_bucket_arn #=> String
    #
    def delete_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomain
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomain,
        stubs: @stubs,
        params_class: Params::DeleteDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Deletes the resource policy set on a domain.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain associated with the resource policy to be deleted.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :policy_revision
    #   <p>
    #           The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #
    # @return [Types::DeleteDomainPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     policy_revision: 'policyRevision'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def delete_domain_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomainPermissionsPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteDomainPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomainPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::DeleteDomainPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes one or more versions of a package. A deleted package version cannot be restored
    #       in your repository. If you want to remove a package version from your repository and be able
    #       to restore it later, set its status to <code>Archived</code>. Archived packages cannot be
    #       downloaded from a repository and don't show up with list package APIs (for example,
    #           <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListackageVersions</a>), but you can restore them using <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html">UpdatePackageVersionsStatus</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeletePackageVersionsInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the package to delete.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #           The name of the repository that contains the package versions to delete.
    #         </p>
    #
    # @option params [String] :format
    #   <p>
    #           The format of the package versions to delete.
    #         </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #           The name of the package with the versions to delete.
    #         </p>
    #
    # @option params [Array<String>] :versions
    #   <p>
    #           An array of strings that specify the versions of the package to delete.
    #         </p>
    #
    # @option params [String] :expected_status
    #   <p>
    #           The expected status of the package version to delete.
    #         </p>
    #
    # @return [Types::DeletePackageVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package_versions(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     versions: [
    #       'member'
    #     ], # required
    #     expected_status: 'Published' # accepts ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePackageVersionsOutput
    #   resp.data.successful_versions #=> Hash<String, SuccessfulPackageVersionInfo>
    #   resp.data.successful_versions['key'] #=> Types::SuccessfulPackageVersionInfo
    #   resp.data.successful_versions['key'].revision #=> String
    #   resp.data.successful_versions['key'].status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   resp.data.failed_versions #=> Hash<String, PackageVersionError>
    #   resp.data.failed_versions['key'] #=> Types::PackageVersionError
    #   resp.data.failed_versions['key'].error_code #=> String, one of ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"]
    #   resp.data.failed_versions['key'].error_message #=> String
    #
    def delete_package_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePackageVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePackageVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePackageVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeletePackageVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePackageVersions,
        stubs: @stubs,
        params_class: Params::DeletePackageVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_package_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Deletes a repository.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository to delete.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p> The name of the repository to delete. </p>
    #
    # @return [Types::DeleteRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def delete_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepository
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepository,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Deletes the resource policy that is set on a repository. After a resource policy is deleted, the
    #         permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate.
    #       </p>
    #          <important>
    #             <p>
    #          Use <code>DeleteRepositoryPermissionsPolicy</code> with caution. After a policy is deleted, Amazon Web Services users, roles, and accounts lose permissions to perform
    #          the repository actions granted by the deleted policy.
    #        </p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the repository associated with the resource policy to be deleted.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that is associated with the resource policy to be deleted
    #       </p>
    #
    # @option params [String] :policy_revision
    #   <p>
    #         The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
    #         prevents others from accidentally overwriting your changes to the repository's resource policy.
    #       </p>
    #
    # @return [Types::DeleteRepositoryPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     policy_revision: 'policyRevision'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def delete_repository_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepositoryPermissionsPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DeleteRepositoryPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepositoryPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html">DomainDescription</a>
    #       object that contains information about the requested domain.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            A string that specifies the name of the requested domain.
    #        </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @return [Types::DescribeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainOutput
    #   resp.data.domain #=> Types::DomainDescription
    #   resp.data.domain.name #=> String
    #   resp.data.domain.owner #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.status #=> String, one of ["Active", "Deleted"]
    #   resp.data.domain.created_time #=> Time
    #   resp.data.domain.encryption_key #=> String
    #   resp.data.domain.repository_count #=> Integer
    #   resp.data.domain.asset_size_bytes #=> Integer
    #   resp.data.domain.s3_bucket_arn #=> String
    #
    def describe_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomain
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomain,
        stubs: @stubs,
        params_class: Params::DescribeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #        Returns a
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a>
    #        object that contains information about the requested package version.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackageVersionInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p> The name of the repository that contains the package version. </p>
    #
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the requested package version.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p> The name of the requested package version. </p>
    #
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    # @return [Types::DescribePackageVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_version(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     package_version: 'packageVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackageVersionOutput
    #   resp.data.package_version #=> Types::PackageVersionDescription
    #   resp.data.package_version.format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.package_version.namespace #=> String
    #   resp.data.package_version.package_name #=> String
    #   resp.data.package_version.display_name #=> String
    #   resp.data.package_version.version #=> String
    #   resp.data.package_version.summary #=> String
    #   resp.data.package_version.home_page #=> String
    #   resp.data.package_version.source_code_repository #=> String
    #   resp.data.package_version.published_time #=> Time
    #   resp.data.package_version.licenses #=> Array<LicenseInfo>
    #   resp.data.package_version.licenses[0] #=> Types::LicenseInfo
    #   resp.data.package_version.licenses[0].name #=> String
    #   resp.data.package_version.licenses[0].url #=> String
    #   resp.data.package_version.revision #=> String
    #   resp.data.package_version.status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #
    def describe_package_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackageVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackageVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackageVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DescribePackageVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackageVersion,
        stubs: @stubs,
        params_class: Params::DescribePackageVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_package_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a <code>RepositoryDescription</code> object that contains detailed information
    #         about the requested repository.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRepositoryInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository to describe.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #           A string that specifies the name of the requested repository.
    #          </p>
    #
    # @return [Types::DescribeRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRepositoryOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def describe_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRepository
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRepository,
        stubs: @stubs,
        params_class: Params::DescribeRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Removes an existing external connection from a repository.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateExternalConnectionInput}.
    #
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository from which to remove the external
    #         repository. </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>The name of the repository from which the external connection will be removed. </p>
    #
    # @option params [String] :external_connection
    #   <p>The name of the external connection to be removed from the repository. </p>
    #
    # @return [Types::DisassociateExternalConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_external_connection(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     external_connection: 'externalConnection' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateExternalConnectionOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def disassociate_external_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateExternalConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateExternalConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateExternalConnection
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisassociateExternalConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateExternalConnection,
        stubs: @stubs,
        params_class: Params::DisassociateExternalConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_external_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes the assets in package versions and sets the package versions' status to <code>Disposed</code>.
    #       A disposed package version cannot be restored in your repository because its assets are deleted.
    #     </p>
    #
    #          <p>
    #       To view all disposed package versions in a repository, use <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a> and set the
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax">status</a> parameter
    #       to <code>Disposed</code>.
    #     </p>
    #
    #          <p>
    #       To view information about a disposed package version, use <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html">DescribePackageVersion</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DisposePackageVersionsInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository you want to dispose.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the package versions you want to dispose.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of package versions you want to dispose.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package with the versions you want to dispose.
    #       </p>
    #
    # @option params [Array<String>] :versions
    #   <p>
    #         The versions of the package you want to dispose.
    #       </p>
    #
    # @option params [Hash<String, String>] :version_revisions
    #   <p>
    #         The revisions of the package versions you want to dispose.
    #       </p>
    #
    # @option params [String] :expected_status
    #   <p>
    #         The expected status of the package version to dispose.
    #       </p>
    #
    # @return [Types::DisposePackageVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dispose_package_versions(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     versions: [
    #       'member'
    #     ], # required
    #     version_revisions: {
    #       'key' => 'value'
    #     },
    #     expected_status: 'Published' # accepts ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisposePackageVersionsOutput
    #   resp.data.successful_versions #=> Hash<String, SuccessfulPackageVersionInfo>
    #   resp.data.successful_versions['key'] #=> Types::SuccessfulPackageVersionInfo
    #   resp.data.successful_versions['key'].revision #=> String
    #   resp.data.successful_versions['key'].status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   resp.data.failed_versions #=> Hash<String, PackageVersionError>
    #   resp.data.failed_versions['key'] #=> Types::PackageVersionError
    #   resp.data.failed_versions['key'].error_code #=> String, one of ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"]
    #   resp.data.failed_versions['key'].error_message #=> String
    #
    def dispose_package_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisposePackageVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisposePackageVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisposePackageVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::DisposePackageVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisposePackageVersions,
        stubs: @stubs,
        params_class: Params::DisposePackageVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :dispose_package_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Generates a temporary authorization token for accessing repositories in the domain.
    #         This API requires the <code>codeartifact:GetAuthorizationToken</code> and <code>sts:GetServiceBearerToken</code> permissions.
    #         For more information about authorization tokens, see
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html">CodeArtifact authentication and tokens</a>.
    #       </p>
    #          <note>
    #             <p>CodeArtifact authorization tokens are valid for a period of 12 hours when created with the <code>login</code> command.
    #          You can call <code>login</code> periodically to refresh the token. When
    #          you create an authorization token with the <code>GetAuthorizationToken</code> API, you can set a custom authorization period,
    #          up to a maximum of 12 hours, with the <code>durationSeconds</code> parameter.</p>
    #             <p>The authorization period begins after <code>login</code>
    #          or <code>GetAuthorizationToken</code> is called. If <code>login</code> or <code>GetAuthorizationToken</code> is called while
    #          assuming a role, the token lifetime is independent of the maximum session duration
    #          of the role. For example, if you call <code>sts assume-role</code> and specify a session duration of 15 minutes, then
    #          generate a CodeArtifact authorization token, the token will be valid for the full authorization period
    #          even though this is longer than the 15-minute session duration.</p>
    #             <p>See
    #          <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a>
    #          for more information on controlling session duration. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetAuthorizationTokenInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that is in scope for the generated authorization token.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The time, in seconds, that the generated authorization token is valid. Valid values are
    #       <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours).
    #       A value of <code>0</code> will set the expiration of the authorization token to the same expiration of
    #       the user's role's temporary credentials.</p>
    #
    # @return [Types::GetAuthorizationTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     duration_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAuthorizationTokenOutput
    #   resp.data.authorization_token #=> String
    #   resp.data.expiration #=> Time
    #
    def get_authorization_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAuthorizationTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAuthorizationTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAuthorizationToken
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetAuthorizationToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAuthorizationToken,
        stubs: @stubs,
        params_class: Params::GetAuthorizationTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_authorization_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Returns the resource policy attached to the specified domain.
    #       </p>
    #          <note>
    #             <p>
    #          The policy is a resource-based policy, not an identity-based policy. For more information, see
    #          <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html">Identity-based policies
    #            and resource-based policies </a> in the <i>IAM User Guide</i>.
    #        </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDomainPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain to which the resource policy is attached.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @return [Types::GetDomainPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def get_domain_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainPermissionsPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDomainPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::GetDomainPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns an asset (or file) that is in a package. For example, for a Maven package version, use
    #       <code>GetPackageVersionAsset</code> to download a <code>JAR</code> file, a <code>POM</code> file,
    #       or any other assets in the package version.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetPackageVersionAssetInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested asset.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package version with the requested asset.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package version with the requested asset file.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package that contains the requested asset.
    #       </p>
    #
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    # @option params [String] :asset
    #   <p>
    #         The name of the requested asset.
    #       </p>
    #
    # @option params [String] :package_version_revision
    #   <p>
    #           The name of the package version revision that contains the requested asset.
    #       </p>
    #
    # @return [Types::GetPackageVersionAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_asset(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     package_version: 'packageVersion', # required
    #     asset: 'asset', # required
    #     package_version_revision: 'packageVersionRevision'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPackageVersionAssetOutput
    #   resp.data.asset #=> String
    #   resp.data.asset_name #=> String
    #   resp.data.package_version #=> String
    #   resp.data.package_version_revision #=> String
    #
    def get_package_version_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPackageVersionAssetInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPackageVersionAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPackageVersionAsset
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::GetPackageVersionAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPackageVersionAsset,
        stubs: @stubs,
        params_class: Params::GetPackageVersionAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_package_version_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Gets the readme file or descriptive text for a package version.
    #       </p>
    #          <p>
    #        The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::GetPackageVersionReadmeInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested readme file.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package with the requested readme file.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package version with the requested readme file.
    #       </p>
    #            <note>
    #               <p>Although <code>maven</code> is
    #         listed as a valid value, CodeArtifact does not support displaying readme files for Maven packages.</p>
    #            </note>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package version that contains the requested readme file.
    #       </p>
    #
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    # @return [Types::GetPackageVersionReadmeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_readme(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     package_version: 'packageVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPackageVersionReadmeOutput
    #   resp.data.format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.namespace #=> String
    #   resp.data.package #=> String
    #   resp.data.version #=> String
    #   resp.data.version_revision #=> String
    #   resp.data.readme #=> String
    #
    def get_package_version_readme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPackageVersionReadmeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPackageVersionReadmeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPackageVersionReadme
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetPackageVersionReadme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPackageVersionReadme,
        stubs: @stubs,
        params_class: Params::GetPackageVersionReadmeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_package_version_readme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each
    #       package format:
    #     </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>maven</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>npm</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>nuget</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>pypi</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryEndpointInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository.
    #        </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #            The name of the repository.
    #        </p>
    #
    # @option params [String] :format
    #   <p>
    #         Returns which endpoint of a repository to return. A repository has one endpoint for each
    #         package format.
    #       </p>
    #
    # @return [Types::GetRepositoryEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_endpoint(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm' # required - accepts ["npm", "pypi", "maven", "nuget"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryEndpointOutput
    #   resp.data.repository_endpoint #=> String
    #
    def get_repository_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositoryEndpoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetRepositoryEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositoryEndpoint,
        stubs: @stubs,
        params_class: Params::GetRepositoryEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Returns the resource policy that is set on a repository.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain containing the repository whose associated resource policy is to be retrieved.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #           The name of the repository whose associated resource policy is to be retrieved.
    #         </p>
    #
    # @return [Types::GetRepositoryPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def get_repository_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositoryPermissionsPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetRepositoryPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositoryPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::GetRepositoryPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">DomainSummary</a> objects for all domains owned by the Amazon Web Services account that makes
    #       this call. Each returned <code>DomainSummary</code> object contains information about a
    #       domain. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.domains #=> Array<DomainSummary>
    #   resp.data.domains[0] #=> Types::DomainSummary
    #   resp.data.domains[0].name #=> String
    #   resp.data.domains[0].owner #=> String
    #   resp.data.domains[0].arn #=> String
    #   resp.data.domains[0].status #=> String, one of ["Active", "Deleted"]
    #   resp.data.domains[0].created_time #=> Time
    #   resp.data.domains[0].encryption_key #=> String
    #   resp.data.next_token #=> String
    #
    def list_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomains
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomains,
        stubs: @stubs,
        params_class: Params::ListDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #        Returns a list of
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">AssetSummary</a>
    #        objects for assets in a package version.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::ListPackageVersionAssetsInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository associated with the package version assets.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the package that contains the returned package version assets.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         The format of the package that contains the returned package version assets.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #            The name of the package that contains the returned package version assets.
    #          </p>
    #
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListPackageVersionAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_version_assets(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     package_version: 'packageVersion', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackageVersionAssetsOutput
    #   resp.data.format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.namespace #=> String
    #   resp.data.package #=> String
    #   resp.data.version #=> String
    #   resp.data.version_revision #=> String
    #   resp.data.next_token #=> String
    #   resp.data.assets #=> Array<AssetSummary>
    #   resp.data.assets[0] #=> Types::AssetSummary
    #   resp.data.assets[0].name #=> String
    #   resp.data.assets[0].size #=> Integer
    #   resp.data.assets[0].hashes #=> Hash<String, String>
    #   resp.data.assets[0].hashes['key'] #=> String
    #
    def list_package_version_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackageVersionAssetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackageVersionAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackageVersionAssets
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackageVersionAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackageVersionAssets,
        stubs: @stubs,
        params_class: Params::ListPackageVersionAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_package_version_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns the direct dependencies for a package version. The dependencies are returned as
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html">PackageDependency</a>
    #           objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package
    #           format (for example, the <code>package.json</code> file for npm packages and the <code>pom.xml</code> file
    #         for Maven). Any package version dependencies that are not listed in the configuration file are not returned.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListPackageVersionDependenciesInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the requested package version dependencies.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the requested package version.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         The format of the package with the requested dependencies.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package versions' package.
    #       </p>
    #
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListPackageVersionDependenciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_version_dependencies(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     package_version: 'packageVersion', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackageVersionDependenciesOutput
    #   resp.data.format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.namespace #=> String
    #   resp.data.package #=> String
    #   resp.data.version #=> String
    #   resp.data.version_revision #=> String
    #   resp.data.next_token #=> String
    #   resp.data.dependencies #=> Array<PackageDependency>
    #   resp.data.dependencies[0] #=> Types::PackageDependency
    #   resp.data.dependencies[0].namespace #=> String
    #   resp.data.dependencies[0].package #=> String
    #   resp.data.dependencies[0].dependency_type #=> String
    #   resp.data.dependencies[0].version_requirement #=> String
    #
    def list_package_version_dependencies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackageVersionDependenciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackageVersionDependenciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackageVersionDependencies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackageVersionDependencies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackageVersionDependencies,
        stubs: @stubs,
        params_class: Params::ListPackageVersionDependenciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_package_version_dependencies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Returns a list of
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html">PackageVersionSummary</a>
    #         objects for package versions in a repository that match the request parameters.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListPackageVersionsInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository that contains the returned package versions.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #            The name of the repository that contains the package.
    #          </p>
    #
    # @option params [String] :format
    #   <p>
    #         The format of the returned packages.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package for which you want to return a list of package versions.
    #       </p>
    #
    # @option params [String] :status
    #   <p>
    #         A string that specifies the status of the package versions to include in the returned list.
    #       </p>
    #
    # @option params [String] :sort_by
    #   <p>
    #         How to sort the returned list of package versions.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListPackageVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_versions(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     status: 'Published', # accepts ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #     sort_by: 'PUBLISHED_TIME', # accepts ["PUBLISHED_TIME"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackageVersionsOutput
    #   resp.data.default_display_version #=> String
    #   resp.data.format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.namespace #=> String
    #   resp.data.package #=> String
    #   resp.data.versions #=> Array<PackageVersionSummary>
    #   resp.data.versions[0] #=> Types::PackageVersionSummary
    #   resp.data.versions[0].version #=> String
    #   resp.data.versions[0].revision #=> String
    #   resp.data.versions[0].status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   resp.data.next_token #=> String
    #
    def list_package_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackageVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackageVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackageVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackageVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackageVersions,
        stubs: @stubs,
        params_class: Params::ListPackageVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_package_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Returns a list of
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html">PackageSummary</a>
    #         objects for packages in a repository that match the request parameters.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListPackagesInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the repository that contains the requested list of packages.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #            The name of the repository from which packages are to be listed.
    #          </p>
    #
    # @option params [String] :format
    #   <p>
    #         The format of the packages.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package_prefix
    #   <p>
    #         A prefix used to filter returned packages. Only packages with names that start with
    #         <code>packagePrefix</code> are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListPackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package_prefix: 'packagePrefix',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackagesOutput
    #   resp.data.packages #=> Array<PackageSummary>
    #   resp.data.packages[0] #=> Types::PackageSummary
    #   resp.data.packages[0].format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.packages[0].namespace #=> String
    #   resp.data.packages[0].package #=> String
    #   resp.data.next_token #=> String
    #
    def list_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackages
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackages,
        stubs: @stubs,
        params_class: Params::ListPackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #        Returns a list of
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a>
    #        objects. Each <code>RepositorySummary</code> contains information about a repository in the specified Amazon Web Services account and that matches the input
    #        parameters.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoriesInput}.
    #
    # @option params [String] :repository_prefix
    #   <p> A prefix used to filter returned repositories. Only repositories with names that start
    #         with <code>repositoryPrefix</code> are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories(
    #     repository_prefix: 'repositoryPrefix',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoriesOutput
    #   resp.data.repositories #=> Array<RepositorySummary>
    #   resp.data.repositories[0] #=> Types::RepositorySummary
    #   resp.data.repositories[0].name #=> String
    #   resp.data.repositories[0].administrator_account #=> String
    #   resp.data.repositories[0].domain_name #=> String
    #   resp.data.repositories[0].domain_owner #=> String
    #   resp.data.repositories[0].arn #=> String
    #   resp.data.repositories[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositories
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositories,
        stubs: @stubs,
        params_class: Params::ListRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #        Returns a list of
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a>
    #        objects. Each <code>RepositorySummary</code> contains information about a repository in the specified domain and that matches the input
    #        parameters.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoriesInDomainInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the returned list of repositories.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :administrator_account
    #   <p>
    #            Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.
    #          </p>
    #
    # @option params [String] :repository_prefix
    #   <p>
    #         A prefix used to filter returned repositories. Only repositories with names that start with
    #         <code>repositoryPrefix</code> are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #
    # @return [Types::ListRepositoriesInDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories_in_domain(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     administrator_account: 'administratorAccount',
    #     repository_prefix: 'repositoryPrefix',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoriesInDomainOutput
    #   resp.data.repositories #=> Array<RepositorySummary>
    #   resp.data.repositories[0] #=> Types::RepositorySummary
    #   resp.data.repositories[0].name #=> String
    #   resp.data.repositories[0].administrator_account #=> String
    #   resp.data.repositories[0].domain_name #=> String
    #   resp.data.repositories[0].domain_owner #=> String
    #   resp.data.repositories[0].arn #=> String
    #   resp.data.repositories[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_repositories_in_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoriesInDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoriesInDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositoriesInDomain
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListRepositoriesInDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositoriesInDomain,
        stubs: @stubs,
        params_class: Params::ListRepositoriesInDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repositories_in_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in CodeArtifact.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Sets a resource policy on a domain that specifies permissions to access it.
    #       </p>
    #          <p>
    #        When you call <code>PutDomainPermissionsPolicy</code>, the resource policy on the domain is ignored when evaluting permissions.
    #        This ensures that the owner of a domain cannot lock themselves out of the domain, which would prevent them from being
    #        able to update the resource policy.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::PutDomainPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain on which to set the resource policy.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :policy_revision
    #   <p>
    #           The current revision of the resource policy to be set. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #
    # @option params [String] :policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided domain. </p>
    #
    # @return [Types::PutDomainPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_domain_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     policy_revision: 'policyRevision',
    #     policy_document: 'policyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDomainPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def put_domain_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDomainPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDomainPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDomainPermissionsPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutDomainPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDomainPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::PutDomainPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_domain_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #         Sets the resource policy on a repository that specifies permissions to access it.
    #       </p>
    #          <p>
    #        When you call <code>PutRepositoryPermissionsPolicy</code>, the resource policy on the repository is ignored when evaluting permissions.
    #        This ensures that the owner of a repository cannot lock themselves out of the repository, which would prevent them from being
    #        able to update the resource policy.
    #      </p>
    #
    # @param [Hash] params
    #   See {Types::PutRepositoryPermissionsPolicyInput}.
    #
    # @option params [String] :domain
    #   <p>
    #           The name of the domain containing the repository to set the resource policy on.
    #         </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p> The name of the repository to set the resource policy on. </p>
    #
    # @option params [String] :policy_revision
    #   <p>
    #           Sets the revision of the resource policy that specifies permissions to access the repository.
    #           This revision is used for optimistic locking, which prevents others from overwriting your
    #           changes to the repository's resource policy.
    #         </p>
    #
    # @option params [String] :policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided repository. </p>
    #
    # @return [Types::PutRepositoryPermissionsPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_permissions_policy(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     policy_revision: 'policyRevision',
    #     policy_document: 'policyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRepositoryPermissionsPolicyOutput
    #   resp.data.policy #=> Types::ResourcePolicy
    #   resp.data.policy.resource_arn #=> String
    #   resp.data.policy.revision #=> String
    #   resp.data.policy.document #=> String
    #
    def put_repository_permissions_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRepositoryPermissionsPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRepositoryPermissionsPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRepositoryPermissionsPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutRepositoryPermissionsPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRepositoryPermissionsPolicy,
        stubs: @stubs,
        params_class: Params::PutRepositoryPermissionsPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_repository_permissions_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for a resource in CodeArtifact.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a resource in CodeArtifact.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates the status of one or more versions of a package. Using <code>UpdatePackageVersionsStatus</code>,
    #       you can update the status of package versions to <code>Archived</code>, <code>Published</code>, or <code>Unlisted</code>.
    #       To set the status of a package version to <code>Disposed</code>, use
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html">DisposePackageVersions</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePackageVersionsStatusInput}.
    #
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package versions with a status to be updated.
    #       </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package versions with the status you want to update.
    #       </p>
    #
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package with the statuses to update.
    #       </p>
    #
    # @option params [String] :namespace
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
    # @option params [String] :package
    #   <p>
    #         The name of the package with the version statuses to update.
    #       </p>
    #
    # @option params [Array<String>] :versions
    #   <p>
    #         An array of strings that specify the versions of the package with the statuses to update.
    #       </p>
    #
    # @option params [Hash<String, String>] :version_revisions
    #   <p> A map of package versions and package version revisions. The map <code>key</code> is the
    #         package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the
    #         package version revision. </p>
    #
    # @option params [String] :expected_status
    #   <p> The package version’s expected status before it is updated. If
    #           <code>expectedStatus</code> is provided, the package version's status is updated only if its
    #         status at the time <code>UpdatePackageVersionsStatus</code> is called matches
    #           <code>expectedStatus</code>. </p>
    #
    # @option params [String] :target_status
    #   <p>
    #         The status you want to change the package version status to.
    #       </p>
    #
    # @return [Types::UpdatePackageVersionsStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_versions_status(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     format: 'npm', # required - accepts ["npm", "pypi", "maven", "nuget"]
    #     namespace: 'namespace',
    #     package: 'package', # required
    #     versions: [
    #       'member'
    #     ], # required
    #     version_revisions: {
    #       'key' => 'value'
    #     },
    #     expected_status: 'Published', # accepts ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #     target_status: 'Published' # required - accepts ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePackageVersionsStatusOutput
    #   resp.data.successful_versions #=> Hash<String, SuccessfulPackageVersionInfo>
    #   resp.data.successful_versions['key'] #=> Types::SuccessfulPackageVersionInfo
    #   resp.data.successful_versions['key'].revision #=> String
    #   resp.data.successful_versions['key'].status #=> String, one of ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   resp.data.failed_versions #=> Hash<String, PackageVersionError>
    #   resp.data.failed_versions['key'] #=> Types::PackageVersionError
    #   resp.data.failed_versions['key'].error_code #=> String, one of ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"]
    #   resp.data.failed_versions['key'].error_message #=> String
    #
    def update_package_versions_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePackageVersionsStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePackageVersionsStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePackageVersionsStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException]),
        data_parser: Parsers::UpdatePackageVersionsStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePackageVersionsStatus,
        stubs: @stubs,
        params_class: Params::UpdatePackageVersionsStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_package_versions_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Update the properties of a repository.
    #        </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRepositoryInput}.
    #
    # @option params [String] :domain
    #   <p>
    #            The name of the domain associated with the repository to update.
    #          </p>
    #
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include
    #           dashes or spaces.
    #         </p>
    #
    # @option params [String] :repository
    #   <p>
    #            The name of the repository to update.
    #          </p>
    #
    # @option params [String] :description
    #   <p>
    #            An updated repository description.
    #          </p>
    #
    # @option params [Array<UpstreamRepository>] :upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #
    # @return [Types::UpdateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository(
    #     domain: 'domain', # required
    #     domain_owner: 'domainOwner',
    #     repository: 'repository', # required
    #     description: 'description',
    #     upstreams: [
    #       {
    #         repository_name: 'repositoryName' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRepositoryOutput
    #   resp.data.repository #=> Types::RepositoryDescription
    #   resp.data.repository.name #=> String
    #   resp.data.repository.administrator_account #=> String
    #   resp.data.repository.domain_name #=> String
    #   resp.data.repository.domain_owner #=> String
    #   resp.data.repository.arn #=> String
    #   resp.data.repository.description #=> String
    #   resp.data.repository.upstreams #=> Array<UpstreamRepositoryInfo>
    #   resp.data.repository.upstreams[0] #=> Types::UpstreamRepositoryInfo
    #   resp.data.repository.upstreams[0].repository_name #=> String
    #   resp.data.repository.external_connections #=> Array<RepositoryExternalConnectionInfo>
    #   resp.data.repository.external_connections[0] #=> Types::RepositoryExternalConnectionInfo
    #   resp.data.repository.external_connections[0].external_connection_name #=> String
    #   resp.data.repository.external_connections[0].package_format #=> String, one of ["npm", "pypi", "maven", "nuget"]
    #   resp.data.repository.external_connections[0].status #=> String, one of ["Available"]
    #
    def update_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRepository,
        stubs: @stubs,
        params_class: Params::UpdateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      StringIO.new
    end
  end
end
