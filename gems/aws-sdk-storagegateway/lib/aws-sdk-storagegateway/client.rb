# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:storagegateway)

module Aws::StorageGateway
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :storagegateway

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Activates the gateway you previously deployed on your host. For more
    # information, see [ Activate the AWS Storage Gateway][1]. In the
    # activation process, you specify information such as the you want to
    # use for storing snapshots, the time zone for scheduled snapshots the
    # gateway snapshot schedule window, an activation key, and a name for
    # your gateway. The activation process also associates your gateway with
    # your account; for more information, see UpdateGatewayInformation.
    #
    # <note markdown="1"> You must turn on the gateway VM before you can activate your gateway.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedActivateGateway-common.html
    #
    # @option params [required, String] :activation_key
    #   Your gateway activation key. You can obtain the activation key by
    #   sending an HTTP GET request with redirects enabled to the gateway IP
    #   address (port 80). The redirect URL returned in the response provides
    #   you the activation key for your gateway in the query string parameter
    #   `activationKey`. It may also include other activation-related
    #   parameters, however, these are merely defaults -- the arguments you
    #   pass to the `ActivateGateway` API call determine the actual
    #   configuration of your gateway.
    #
    # @option params [required, String] :gateway_name
    #   The name you configured for your gateway.
    #
    # @option params [required, String] :gateway_timezone
    #   A value that indicates the time zone you want to set for the gateway.
    #   The time zone is used, for example, for scheduling snapshots and your
    #   gateway's maintenance schedule.
    #
    # @option params [required, String] :gateway_region
    #   A value that indicates the region where you want to store the snapshot
    #   backups. The gateway region specified must be the same region as the
    #   region in your `Host` header in the request. For more information
    #   about available regions and endpoints for AWS Storage Gateway, see
    #   [Regions and Endpoints][1] in the *Amazon Web Services Glossary*.
    #
    #   Valid Values: "us-east-1", "us-west-1", "us-west-2",
    #   "eu-west-1", "eu-central-1", "ap-northeast-1",
    #   "ap-northeast-2", "ap-southeast-1", "ap-southeast-2",
    #   "sa-east-1"
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region
    #
    # @option params [String] :gateway_type
    #   A value that defines the type of gateway to activate. The type
    #   specified is critical to all later functions of the gateway and cannot
    #   be changed after activation. The default value is `STORED`.
    #
    # @option params [String] :tape_drive_type
    #   The value that indicates the type of tape drive to use for
    #   gateway-VTL. This field is optional.
    #
    #   Valid Values: "IBM-ULT3580-TD5"
    #
    # @option params [String] :medium_changer_type
    #   The value that indicates the type of medium changer to use for
    #   gateway-VTL. This field is optional.
    #
    #   Valid Values: "STK-L700", "AWS-Gateway-VTL"
    #
    # @return [Types::ActivateGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_gateway({
    #     activation_key: "ActivationKey", # required
    #     gateway_name: "GatewayName", # required
    #     gateway_timezone: "GatewayTimezone", # required
    #     gateway_region: "RegionId", # required
    #     gateway_type: "GatewayType",
    #     tape_drive_type: "TapeDriveType",
    #     medium_changer_type: "MediumChangerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ActivateGateway AWS API Documentation
    #
    # @overload activate_gateway(params = {})
    # @param [Hash] params ({})
    def activate_gateway(params = {}, options = {})
      req = build_request(:activate_gateway, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as cache for a
    # cached-volume gateway. This operation is supported only for the
    # gateway-cached volume architecture (see [Storage Gateway
    # Concepts][1]).
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add cache, and one or more disk IDs that you want to
    # configure as cache.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, Array<String>] :disk_ids
    #
    # @return [Types::AddCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddCacheOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_cache({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddCache AWS API Documentation
    #
    # @overload add_cache(params = {})
    # @param [Hash] params ({})
    def add_cache(params = {}, options = {})
      req = build_request(:add_cache, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource. You use tags to add
    # metadata to resources, which you can use to categorize these
    # resources. For example, you can categorize resources by purpose,
    # owner, environment, or team. Each tag consists of a key and a value,
    # which you define. You can add tags to the following AWS Storage
    # Gateway resources:
    #
    # * Storage gateways of all types
    #
    # ^
    # ^
    #
    # * Storage Volumes
    #
    # ^
    # ^
    #
    # * Virtual Tapes
    #
    # ^
    #
    # You can create a maximum of 10 tags for each resource. Virtual tapes
    # and storage volumes that are recovered to a new gateway maintain their
    # tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value pair that represents the tag you want to add to the
    #   resource. The value can be an empty string.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @.
    #
    #    </note>
    #
    # @return [Types::AddTagsToResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddTagsToResourceOutput#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as upload buffer for a
    # specified gateway. This operation is supported for both the
    # gateway-stored and gateway-cached volume architectures.
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add upload buffer, and one or more disk IDs that you
    # want to configure as upload buffer.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, Array<String>] :disk_ids
    #
    # @return [Types::AddUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddUploadBufferOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_upload_buffer({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddUploadBuffer AWS API Documentation
    #
    # @overload add_upload_buffer(params = {})
    # @param [Hash] params ({})
    def add_upload_buffer(params = {}, options = {})
      req = build_request(:add_upload_buffer, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as working storage for a
    # gateway. This operation is supported only for the gateway-stored
    # volume architecture. This operation is deprecated in cached-volumes
    # API version 20120630. Use AddUploadBuffer instead.
    #
    # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
    # the AddUploadBuffer operation to add upload buffer to a stored-volume
    # gateway.
    #
    #  </note>
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add working storage, and one or more disk IDs that
    # you want to configure as working storage.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, Array<String>] :disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string have a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #
    # @return [Types::AddWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddWorkingStorageOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_working_storage({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddWorkingStorage AWS API Documentation
    #
    # @overload add_working_storage(params = {})
    # @param [Hash] params ({})
    def add_working_storage(params = {}, options = {})
      req = build_request(:add_working_storage, params)
      req.send_request(options)
    end

    # Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
    # after the archiving process is initiated.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
    #   archiving for.
    #
    # @return [Types::CancelArchivalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelArchivalOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_archival({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelArchival AWS API Documentation
    #
    # @overload cancel_archival(params = {})
    # @param [Hash] params ({})
    def cancel_archival(params = {}, options = {})
      req = build_request(:cancel_archival, params)
      req.send_request(options)
    end

    # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
    # to a gateway after the retrieval process is initiated. The virtual
    # tape is returned to the VTS.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
    #   retrieval for.
    #
    # @return [Types::CancelRetrievalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelRetrievalOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_retrieval({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelRetrieval AWS API Documentation
    #
    # @overload cancel_retrieval(params = {})
    # @param [Hash] params ({})
    def cancel_retrieval(params = {}, options = {})
      req = build_request(:cancel_retrieval, params)
      req.send_request(options)
    end

    # Creates a cached volume on a specified cached gateway. This operation
    # is supported only for the gateway-cached volume architecture.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create a
    # cached volume. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # In the request, you must specify the gateway, size of the volume in
    # bytes, the iSCSI target name, an IP address on which to expose the
    # target, and a unique client token. In response, AWS Storage Gateway
    # creates the volume and returns information about it. This information
    # includes the volume Amazon Resource Name (ARN), its size, and the
    # iSCSI target ARN that initiators can use to connect to the volume
    # target.
    #
    # Optionally, you can provide the ARN for an existing volume as the
    # `SourceVolumeARN` for this cached volume, which creates an exact copy
    # of the existing volume’s latest recovery point. The
    # `VolumeSizeInBytes` value must be equal to or larger than the size of
    # the copied volume, in bytes.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, Integer] :volume_size_in_bytes
    #
    # @option params [String] :snapshot_id
    #
    # @option params [required, String] :target_name
    #
    # @option params [String] :source_volume_arn
    #   The ARN for an existing volume. Specifying this ARN makes the new
    #   volume into an exact copy of the specified existing volume's latest
    #   recovery point. The `VolumeSizeInBytes` value for this new volume must
    #   be equal to or larger than the size of the existing volume, in bytes.
    #
    # @option params [required, String] :network_interface_id
    #
    # @option params [required, String] :client_token
    #
    # @return [Types::CreateCachediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCachediSCSIVolumeOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateCachediSCSIVolumeOutput#target_arn #target_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cached_iscsi_volume({
    #     gateway_arn: "GatewayARN", # required
    #     volume_size_in_bytes: 1, # required
    #     snapshot_id: "SnapshotId",
    #     target_name: "TargetName", # required
    #     source_volume_arn: "VolumeARN",
    #     network_interface_id: "NetworkInterfaceId", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateCachediSCSIVolume AWS API Documentation
    #
    # @overload create_cached_iscsi_volume(params = {})
    # @param [Hash] params ({})
    def create_cached_iscsi_volume(params = {}, options = {})
      req = build_request(:create_cached_iscsi_volume, params)
      req.send_request(options)
    end

    # Creates a file share on an existing file gateway. In Storage Gateway,
    # a file share is a file system mount point backed by Amazon S3 cloud
    # storage. Storage Gateway exposes file shares using a Network File
    # System (NFS) interface.
    #
    # @option params [required, String] :client_token
    #   A unique string value that you supply that is used by file gateway to
    #   ensure idempotent file share creation.
    #
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   File share default values. Optional.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the file gateway on which you want
    #   to create a file share.
    #
    # @option params [Boolean] :kms_encrypted
    #   True to use Amazon S3 server side encryption with your own AWS KMS
    #   key, or false to use a key managed by Amazon S3. Optional.
    #
    # @option params [String] :kms_key
    #   The KMS key used for Amazon S3 server side encryption. This value can
    #   only be set when KmsEncrypted is true. Optional.
    #
    # @option params [required, String] :role
    #   The ARN of the AWS Identity and Access Management (IAM) role that a
    #   file gateway assumes when it accesses the underlying storage.
    #
    # @option params [required, String] :location_arn
    #   The ARN of the backend storage used for storing file data.
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   file gateway. Possible values are S3\_STANDARD or S3\_STANDARD\_IA. If
    #   this field is not populated, the default value S3\_STANDARD is used.
    #   Optional.
    #
    # @option params [Array<String>] :client_list
    #   The list of clients that are allowed to access the file gateway. The
    #   list must contain either valid IP addresses or valid CIDR blocks.
    #
    # @return [Types::CreateNFSFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNFSFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nfs_file_share({
    #     client_token: "ClientToken", # required
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1,
    #     },
    #     gateway_arn: "GatewayARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     default_storage_class: "StorageClass",
    #     client_list: ["IPV4AddressCIDR"],
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateNFSFileShare AWS API Documentation
    #
    # @overload create_nfs_file_share(params = {})
    # @param [Hash] params ({})
    def create_nfs_file_share(params = {}, options = {})
      req = build_request(:create_nfs_file_share, params)
      req.send_request(options)
    end

    # Initiates a snapshot of a volume.
    #
    # AWS Storage Gateway provides the ability to back up point-in-time
    # snapshots of your data to Amazon Simple Storage (S3) for durable
    # off-site recovery, as well as import the data to an Amazon Elastic
    # Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You
    # can take snapshots of your gateway volume on a scheduled or ad-hoc
    # basis. This API enables you to take ad-hoc snapshot. For more
    # information, see [Working With Snapshots in the AWS Storage Gateway
    # Console][1].
    #
    # In the CreateSnapshot request you identify the volume by providing its
    # Amazon Resource Name (ARN). You must also provide description for the
    # snapshot. When AWS Storage Gateway takes the snapshot of specified
    # volume, the snapshot and description appears in the AWS Storage
    # Gateway Console. In response, AWS Storage Gateway returns you a
    # snapshot ID. You can use this snapshot ID to check the snapshot
    # progress or later use it when you want to create a volume from a
    # snapshot.
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
    # more information, see DescribeSnapshots or DeleteSnapshot in the [EC2
    # API reference][2].
    #
    #  </note>
    #
    # Volume and snapshot IDs are changing to a longer length ID format. For
    # more information, see the important note on the [Welcome][3] page.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html
    # [3]: http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @option params [required, String] :snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the AWS Storage Gateway snapshot **Details** pane,
    #   **Description** field
    #
    # @return [Types::CreateSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateSnapshotOutput#snapshot_id #snapshot_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Initiates a snapshot of a gateway from a volume recovery point. This
    # operation is supported only for the gateway-cached volume
    # architecture.
    #
    # A volume recovery point is a point in time at which all data of the
    # volume is consistent and from which you can create a snapshot. To get
    # a list of volume recovery point for gateway-cached volumes, use
    # ListVolumeRecoveryPoints.
    #
    # In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify
    # the volume by providing its Amazon Resource Name (ARN). You must also
    # provide a description for the snapshot. When AWS Storage Gateway takes
    # a snapshot of the specified volume, the snapshot and its description
    # appear in the AWS Storage Gateway console. In response, AWS Storage
    # Gateway returns you a snapshot ID. You can use this snapshot ID to
    # check the snapshot progress or later use it when you want to create a
    # volume from a snapshot.
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
    # more information, in *Amazon Elastic Compute Cloud API Reference*.
    #
    #  </note>
    #
    # @option params [required, String] :volume_arn
    #
    # @option params [required, String] :snapshot_description
    #
    # @return [Types::CreateSnapshotFromVolumeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#snapshot_id #snapshot_id} => String
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_recovery_point_time #volume_recovery_point_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_from_volume_recovery_point({
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #   resp.volume_arn #=> String
    #   resp.volume_recovery_point_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotFromVolumeRecoveryPoint AWS API Documentation
    #
    # @overload create_snapshot_from_volume_recovery_point(params = {})
    # @param [Hash] params ({})
    def create_snapshot_from_volume_recovery_point(params = {}, options = {})
      req = build_request(:create_snapshot_from_volume_recovery_point, params)
      req.send_request(options)
    end

    # Creates a volume on a specified gateway. This operation is supported
    # only for the gateway-stored volume architecture.
    #
    # The size of the volume to create is inferred from the disk size. You
    # can choose to preserve existing data on the disk, create volume from
    # an existing snapshot, or create an empty volume. If you choose to
    # create an empty gateway volume, then any existing data on the disk is
    # erased.
    #
    # In the request you must specify the gateway and the disk information
    # on which you are creating the volume. In response, AWS Storage Gateway
    # creates the volume and returns volume information such as the volume
    # Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
    # initiators can use to connect to the volume target.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, String] :disk_id
    #   The unique identifier for the gateway local disk that is configured as
    #   a stored volume. Use [ListLocalDisks][1] to list disk IDs for a
    #   gateway.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html
    #
    # @option params [String] :snapshot_id
    #   The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as
    #   the new stored volume. Specify this field if you want to create the
    #   iSCSI storage volume from a snapshot otherwise do not include this
    #   field. To list snapshots for your account use [DescribeSnapshots][1]
    #   in the *Amazon Elastic Compute Cloud API Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #
    # @option params [required, Boolean] :preserve_existing_data
    #   Specify this field as true if you want to preserve the data on the
    #   local disk. Otherwise, specifying this field as false creates an empty
    #   volume.
    #
    #   Valid Values: true, false
    #
    # @option params [required, String] :target_name
    #   The name of the iSCSI target used by initiators to connect to the
    #   target and as a suffix for the target ARN. For example, specifying
    #   `TargetName` as *myvolume* results in the target ARN of
    #   arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume.
    #   The target name must be unique across all volumes of a gateway.
    #
    # @option params [required, String] :network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Only IPv4 addresses are accepted. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #
    # @return [Types::CreateStorediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorediSCSIVolumeOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateStorediSCSIVolumeOutput#volume_size_in_bytes #volume_size_in_bytes} => Integer
    #   * {Types::CreateStorediSCSIVolumeOutput#target_arn #target_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stored_iscsi_volume({
    #     gateway_arn: "GatewayARN", # required
    #     disk_id: "DiskId", # required
    #     snapshot_id: "SnapshotId",
    #     preserve_existing_data: false, # required
    #     target_name: "TargetName", # required
    #     network_interface_id: "NetworkInterfaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.volume_size_in_bytes #=> Integer
    #   resp.target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateStorediSCSIVolume AWS API Documentation
    #
    # @overload create_stored_iscsi_volume(params = {})
    # @param [Hash] params ({})
    def create_stored_iscsi_volume(params = {}, options = {})
      req = build_request(:create_stored_iscsi_volume, params)
      req.send_request(options)
    end

    # Creates a virtual tape by using your own barcode. You write data to
    # the virtual tape and then archive the tape.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create a
    # virtual tape. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tape with. Use the ListGateways operation to
    #   return a list of gateways for your account and region.
    #
    # @option params [required, Integer] :tape_size_in_bytes
    #   The size, in bytes, of the virtual tape that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 byte).
    #
    #    </note>
    #
    # @option params [required, String] :tape_barcode
    #   The barcode that you want to assign to the tape.
    #
    # @return [Types::CreateTapeWithBarcodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTapeWithBarcodeOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tape_with_barcode({
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     tape_barcode: "TapeBarcode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapeWithBarcode AWS API Documentation
    #
    # @overload create_tape_with_barcode(params = {})
    # @param [Hash] params ({})
    def create_tape_with_barcode(params = {}, options = {})
      req = build_request(:create_tape_with_barcode, params)
      req.send_request(options)
    end

    # Creates one or more virtual tapes. You write data to the virtual tapes
    # and then archive the tapes.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create
    # virtual tapes. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tapes with. Use the ListGateways operation to
    #   return a list of gateways for your account and region.
    #
    # @option params [required, Integer] :tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 byte).
    #
    #    </note>
    #
    # @option params [required, String] :client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #
    #   <note markdown="1"> Using the same `ClientToken` prevents creating the tape multiple
    #   times.
    #
    #    </note>
    #
    # @option params [required, Integer] :num_tapes_to_create
    #   The number of virtual tapes that you want to create.
    #
    # @option params [required, String] :tape_barcode_prefix
    #   A prefix that you append to the barcode of the virtual tape you are
    #   creating. This prefix makes the barcode unique.
    #
    #   <note markdown="1"> The prefix must be 1 to 4 characters in length and must be one of the
    #   uppercase letters from A to Z.
    #
    #    </note>
    #
    # @return [Types::CreateTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTapesOutput#tape_arns #tape_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tapes({
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     client_token: "ClientToken", # required
    #     num_tapes_to_create: 1, # required
    #     tape_barcode_prefix: "TapeBarcodePrefix", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arns #=> Array
    #   resp.tape_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapes AWS API Documentation
    #
    # @overload create_tapes(params = {})
    # @param [Hash] params ({})
    def create_tapes(params = {}, options = {})
      req = build_request(:create_tapes, params)
      req.send_request(options)
    end

    # Deletes the bandwidth rate limits of a gateway. You can delete either
    # the upload and download bandwidth rate limit, or you can delete both.
    # If you delete only one of the limits, the other limit remains
    # unchanged. To specify which gateway to work with, use the Amazon
    # Resource Name (ARN) of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, String] :bandwidth_type
    #   One of the BandwidthType values that indicates the gateway bandwidth
    #   rate limit to delete.
    #
    #   Valid Values: `Upload`, `Download`, `All`.
    #
    # @return [Types::DeleteBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #     bandwidth_type: "BandwidthType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteBandwidthRateLimit AWS API Documentation
    #
    # @overload delete_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def delete_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:delete_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
    # for a specified iSCSI target and initiator pair.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #
    # @option params [required, String] :initiator_name
    #   The iSCSI initiator that connects to the target.
    #
    # @return [Types::DeleteChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteChapCredentialsOutput#target_arn #target_arn} => String
    #   * {Types::DeleteChapCredentialsOutput#initiator_name #initiator_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_chap_credentials({
    #     target_arn: "TargetARN", # required
    #     initiator_name: "IqnName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_arn #=> String
    #   resp.initiator_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteChapCredentials AWS API Documentation
    #
    # @overload delete_chap_credentials(params = {})
    # @param [Hash] params ({})
    def delete_chap_credentials(params = {}, options = {})
      req = build_request(:delete_chap_credentials, params)
      req.send_request(options)
    end

    # Deletes a file share from a file gateway.
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be deleted.
    #
    # @return [Types::DeleteFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_share({
    #     file_share_arn: "FileShareARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteFileShare AWS API Documentation
    #
    # @overload delete_file_share(params = {})
    # @param [Hash] params ({})
    def delete_file_share(params = {}, options = {})
      req = build_request(:delete_file_share, params)
      req.send_request(options)
    end

    # Deletes a gateway. To specify which gateway to delete, use the Amazon
    # Resource Name (ARN) of the gateway in your request. The operation
    # deletes the gateway; however, it does not delete the gateway virtual
    # machine (VM) from your host computer.
    #
    # After you delete a gateway, you cannot reactivate it. Completed
    # snapshots of the gateway volumes are not deleted upon deleting the
    # gateway, however, pending snapshots will not complete. After you
    # delete a gateway, your next step is to remove it from your
    # environment.
    #
    # You no longer pay software charges after the gateway is deleted;
    # however, your existing Amazon EBS snapshots persist and you will
    # continue to be billed for these snapshots. You can choose to remove
    # all remaining Amazon EBS snapshots by canceling your Amazon EC2
    # subscription.  If you prefer not to cancel your Amazon EC2
    # subscription, you can delete your snapshots using the Amazon EC2
    # console. For more information, see the [ AWS Storage Gateway Detail
    # Page][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/storagegateway
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DeleteGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteGateway AWS API Documentation
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a snapshot of a volume.
    #
    # You can take snapshots of your gateway volumes on a scheduled or ad
    # hoc basis. This API action enables you to delete a snapshot schedule
    # for a volume. For more information, see [Working with Snapshots][1].
    # In the `DeleteSnapshotSchedule` request, you identify the volume by
    # providing its Amazon Resource Name (ARN).
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. in
    # *Amazon Elastic Compute Cloud API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html
    #
    # @option params [required, String] :volume_arn
    #
    # @return [Types::DeleteSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteSnapshotSchedule AWS API Documentation
    #
    # @overload delete_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def delete_snapshot_schedule(params = {}, options = {})
      req = build_request(:delete_snapshot_schedule, params)
      req.send_request(options)
    end

    # Deletes the specified virtual tape.
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) of the gateway that the virtual
    #   tape to delete is associated with. Use the ListGateways operation to
    #   return a list of gateways for your account and region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete.
    #
    # @return [Types::DeleteTapeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTapeOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTape AWS API Documentation
    #
    # @overload delete_tape(params = {})
    # @param [Hash] params ({})
    def delete_tape(params = {}, options = {})
      req = build_request(:delete_tape, params)
      req.send_request(options)
    end

    # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete from the
    #   virtual tape shelf (VTS).
    #
    # @return [Types::DeleteTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTapeArchiveOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape_archive({
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeArchive AWS API Documentation
    #
    # @overload delete_tape_archive(params = {})
    # @param [Hash] params ({})
    def delete_tape_archive(params = {}, options = {})
      req = build_request(:delete_tape_archive, params)
      req.send_request(options)
    end

    # Deletes the specified gateway volume that you previously created using
    # the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. For
    # gateway-stored volumes, the local disk that was configured as the
    # storage volume is not deleted. You can reuse the local disk to create
    # another storage volume.
    #
    # Before you delete a gateway volume, make sure there are no iSCSI
    # connections to the volume you are deleting. You should also make sure
    # there is no snapshot in progress. You can use the Amazon Elastic
    # Compute Cloud (Amazon EC2) API to query snapshots on the volume you
    # are deleting and check the snapshot status. For more information, go
    # to [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
    # Reference*.
    #
    # In the request, you must provide the Amazon Resource Name (ARN) of the
    # storage volume you want to delete.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @return [Types::DeleteVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVolumeOutput#volume_arn #volume_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteVolume AWS API Documentation
    #
    # @overload delete_volume(params = {})
    # @param [Hash] params ({})
    def delete_volume(params = {}, options = {})
      req = build_request(:delete_volume, params)
      req.send_request(options)
    end

    # Returns the bandwidth rate limits of a gateway. By default, these
    # limits are not set, which means no bandwidth rate limiting is in
    # effect.
    #
    # This operation only returns a value for a bandwidth rate limit only if
    # the limit is set. If no limits are set for the gateway, then this
    # operation returns only the gateway ARN in the response body. To
    # specify which gateway to describe, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeBandwidthRateLimitOutput#average_upload_rate_limit_in_bits_per_sec #average_upload_rate_limit_in_bits_per_sec} => Integer
    #   * {Types::DescribeBandwidthRateLimitOutput#average_download_rate_limit_in_bits_per_sec #average_download_rate_limit_in_bits_per_sec} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.average_upload_rate_limit_in_bits_per_sec #=> Integer
    #   resp.average_download_rate_limit_in_bits_per_sec #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimit AWS API Documentation
    #
    # @overload describe_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def describe_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:describe_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Returns information about the cache of a gateway. This operation is
    # supported only for the gateway-cached volume architecture.
    #
    # The response includes disk IDs that are configured as cache, and it
    # includes the amount of cache allocated and used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCacheOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeCacheOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeCacheOutput#cache_allocated_in_bytes #cache_allocated_in_bytes} => Integer
    #   * {Types::DescribeCacheOutput#cache_used_percentage #cache_used_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_dirty_percentage #cache_dirty_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_hit_percentage #cache_hit_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_miss_percentage #cache_miss_percentage} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.cache_allocated_in_bytes #=> Integer
    #   resp.cache_used_percentage #=> Float
    #   resp.cache_dirty_percentage #=> Float
    #   resp.cache_hit_percentage #=> Float
    #   resp.cache_miss_percentage #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCache AWS API Documentation
    #
    # @overload describe_cache(params = {})
    # @param [Hash] params ({})
    def describe_cache(params = {}, options = {})
      req = build_request(:describe_cache, params)
      req.send_request(options)
    end

    # Returns a description of the gateway volumes specified in the request.
    # This operation is supported only for the gateway-cached volume
    # architecture.
    #
    # The list of gateway volumes in the request must be from one gateway.
    # In the response Amazon Storage Gateway returns volume information
    # sorted by volume Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :volume_arns
    #
    # @return [Types::DescribeCachediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCachediSCSIVolumesOutput#cached_iscsi_volumes #cached_iscsi_volumes} => Array&lt;Types::CachediSCSIVolume&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cached_iscsi_volumes({
    #     volume_arns: ["VolumeARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cached_iscsi_volumes #=> Array
    #   resp.cached_iscsi_volumes[0].volume_arn #=> String
    #   resp.cached_iscsi_volumes[0].volume_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_type #=> String
    #   resp.cached_iscsi_volumes[0].volume_status #=> String
    #   resp.cached_iscsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_progress #=> Float
    #   resp.cached_iscsi_volumes[0].source_snapshot_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.cached_iscsi_volumes[0].created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCachediSCSIVolumes AWS API Documentation
    #
    # @overload describe_cached_iscsi_volumes(params = {})
    # @param [Hash] params ({})
    def describe_cached_iscsi_volumes(params = {}, options = {})
      req = build_request(:describe_cached_iscsi_volumes, params)
      req.send_request(options)
    end

    # Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
    # credentials information for a specified iSCSI target, one for each
    # target-initiator pair.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #
    # @return [Types::DescribeChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChapCredentialsOutput#chap_credentials #chap_credentials} => Array&lt;Types::ChapInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_chap_credentials({
    #     target_arn: "TargetARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.chap_credentials #=> Array
    #   resp.chap_credentials[0].target_arn #=> String
    #   resp.chap_credentials[0].secret_to_authenticate_initiator #=> String
    #   resp.chap_credentials[0].initiator_name #=> String
    #   resp.chap_credentials[0].secret_to_authenticate_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeChapCredentials AWS API Documentation
    #
    # @overload describe_chap_credentials(params = {})
    # @param [Hash] params ({})
    def describe_chap_credentials(params = {}, options = {})
      req = build_request(:describe_chap_credentials, params)
      req.send_request(options)
    end

    # Returns metadata about a gateway such as its name, network interfaces,
    # configured time zone, and the state (whether the gateway is running or
    # not). To specify which gateway to describe, use the Amazon Resource
    # Name (ARN) of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayInformationOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_name #gateway_name} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_timezone #gateway_timezone} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_state #gateway_state} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_network_interfaces #gateway_network_interfaces} => Array&lt;Types::NetworkInterface&gt;
    #   * {Types::DescribeGatewayInformationOutput#gateway_type #gateway_type} => String
    #   * {Types::DescribeGatewayInformationOutput#next_update_availability_date #next_update_availability_date} => String
    #   * {Types::DescribeGatewayInformationOutput#last_software_update #last_software_update} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_information({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.gateway_name #=> String
    #   resp.gateway_timezone #=> String
    #   resp.gateway_state #=> String
    #   resp.gateway_network_interfaces #=> Array
    #   resp.gateway_network_interfaces[0].ipv_4_address #=> String
    #   resp.gateway_network_interfaces[0].mac_address #=> String
    #   resp.gateway_network_interfaces[0].ipv_6_address #=> String
    #   resp.gateway_type #=> String
    #   resp.next_update_availability_date #=> String
    #   resp.last_software_update #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeGatewayInformation AWS API Documentation
    #
    # @overload describe_gateway_information(params = {})
    # @param [Hash] params ({})
    def describe_gateway_information(params = {}, options = {})
      req = build_request(:describe_gateway_information, params)
      req.send_request(options)
    end

    # Returns your gateway's weekly maintenance start time including the
    # day and time of the week. Note that values are in terms of the
    # gateway's time zone.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceStartTimeOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeMaintenanceStartTimeOutput#hour_of_day #hour_of_day} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#minute_of_hour #minute_of_hour} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#day_of_week #day_of_week} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#timezone #timezone} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_start_time({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.hour_of_day #=> Integer
    #   resp.minute_of_hour #=> Integer
    #   resp.day_of_week #=> Integer
    #   resp.timezone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeMaintenanceStartTime AWS API Documentation
    #
    # @overload describe_maintenance_start_time(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_start_time(params = {}, options = {})
      req = build_request(:describe_maintenance_start_time, params)
      req.send_request(options)
    end

    # Gets a description for one or more file shares from a file gateway.
    #
    # @option params [required, Array<String>] :file_share_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file share
    #   to be described.
    #
    # @return [Types::DescribeNFSFileSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNFSFileSharesOutput#nfs_file_share_info_list #nfs_file_share_info_list} => Array&lt;Types::NFSFileShareInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nfs_file_shares({
    #     file_share_arn_list: ["FileShareARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nfs_file_share_info_list #=> Array
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.file_mode #=> String
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.directory_mode #=> String
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.group_id #=> Integer
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.owner_id #=> Integer
    #   resp.nfs_file_share_info_list[0].file_share_arn #=> String
    #   resp.nfs_file_share_info_list[0].file_share_id #=> String
    #   resp.nfs_file_share_info_list[0].file_share_status #=> String
    #   resp.nfs_file_share_info_list[0].gateway_arn #=> String
    #   resp.nfs_file_share_info_list[0].kms_encrypted #=> Boolean
    #   resp.nfs_file_share_info_list[0].kms_key #=> String
    #   resp.nfs_file_share_info_list[0].path #=> String
    #   resp.nfs_file_share_info_list[0].role #=> String
    #   resp.nfs_file_share_info_list[0].location_arn #=> String
    #   resp.nfs_file_share_info_list[0].default_storage_class #=> String
    #   resp.nfs_file_share_info_list[0].client_list #=> Array
    #   resp.nfs_file_share_info_list[0].client_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeNFSFileShares AWS API Documentation
    #
    # @overload describe_nfs_file_shares(params = {})
    # @param [Hash] params ({})
    def describe_nfs_file_shares(params = {}, options = {})
      req = build_request(:describe_nfs_file_shares, params)
      req.send_request(options)
    end

    # Describes the snapshot schedule for the specified gateway volume. The
    # snapshot schedule information includes intervals at which snapshots
    # are automatically initiated on the volume.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @return [Types::DescribeSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #   * {Types::DescribeSnapshotScheduleOutput#start_at #start_at} => Integer
    #   * {Types::DescribeSnapshotScheduleOutput#recurrence_in_hours #recurrence_in_hours} => Integer
    #   * {Types::DescribeSnapshotScheduleOutput#description #description} => String
    #   * {Types::DescribeSnapshotScheduleOutput#timezone #timezone} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.start_at #=> Integer
    #   resp.recurrence_in_hours #=> Integer
    #   resp.description #=> String
    #   resp.timezone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSnapshotSchedule AWS API Documentation
    #
    # @overload describe_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def describe_snapshot_schedule(params = {}, options = {})
      req = build_request(:describe_snapshot_schedule, params)
      req.send_request(options)
    end

    # Returns the description of the gateway volumes specified in the
    # request. The list of gateway volumes in the request must be from one
    # gateway. In the response Amazon Storage Gateway returns volume
    # information sorted by volume ARNs.
    #
    # @option params [required, Array<String>] :volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a stored volume. All of the specified stored volumes
    #   must from the same gateway. Use ListVolumes to get volume ARNs for a
    #   gateway.
    #
    # @return [Types::DescribeStorediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorediSCSIVolumesOutput#stored_iscsi_volumes #stored_iscsi_volumes} => Array&lt;Types::StorediSCSIVolume&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stored_iscsi_volumes({
    #     volume_arns: ["VolumeARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stored_iscsi_volumes #=> Array
    #   resp.stored_iscsi_volumes[0].volume_arn #=> String
    #   resp.stored_iscsi_volumes[0].volume_id #=> String
    #   resp.stored_iscsi_volumes[0].volume_type #=> String
    #   resp.stored_iscsi_volumes[0].volume_status #=> String
    #   resp.stored_iscsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_progress #=> Float
    #   resp.stored_iscsi_volumes[0].volume_disk_id #=> String
    #   resp.stored_iscsi_volumes[0].source_snapshot_id #=> String
    #   resp.stored_iscsi_volumes[0].preserved_existing_data #=> Boolean
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.stored_iscsi_volumes[0].created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeStorediSCSIVolumes AWS API Documentation
    #
    # @overload describe_stored_iscsi_volumes(params = {})
    # @param [Hash] params ({})
    def describe_stored_iscsi_volumes(params = {}, options = {})
      req = build_request(:describe_stored_iscsi_volumes, params)
      req.send_request(options)
    end

    # Returns a description of specified virtual tapes in the virtual tape
    # shelf (VTS).
    #
    # If a specific `TapeARN` is not specified, AWS Storage Gateway returns
    # a description of all virtual tapes found in the VTS associated with
    # your account.
    #
    # @option params [Array<String>] :tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing virtual tapes.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tapes descried be limited to the
    #   specified number.
    #
    # @return [Types::DescribeTapeArchivesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapeArchivesOutput#tape_archives #tape_archives} => Array&lt;Types::TapeArchive&gt;
    #   * {Types::DescribeTapeArchivesOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_archives({
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_archives #=> Array
    #   resp.tape_archives[0].tape_arn #=> String
    #   resp.tape_archives[0].tape_barcode #=> String
    #   resp.tape_archives[0].tape_created_date #=> Time
    #   resp.tape_archives[0].tape_size_in_bytes #=> Integer
    #   resp.tape_archives[0].completion_time #=> Time
    #   resp.tape_archives[0].retrieved_to #=> String
    #   resp.tape_archives[0].tape_status #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeArchives AWS API Documentation
    #
    # @overload describe_tape_archives(params = {})
    # @param [Hash] params ({})
    def describe_tape_archives(params = {}, options = {})
      req = build_request(:describe_tape_archives, params)
      req.send_request(options)
    end

    # Returns a list of virtual tape recovery points that are available for
    # the specified gateway-VTL.
    #
    # A recovery point is a point-in-time view of a virtual tape at which
    # all the data on the virtual tape is consistent. If your gateway
    # crashes, virtual tapes that have recovery points can be recovered to a
    # new gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing the virtual tape recovery points.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tape recovery points that are
    #   described be limited to the specified number.
    #
    # @return [Types::DescribeTapeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapeRecoveryPointsOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeTapeRecoveryPointsOutput#tape_recovery_point_infos #tape_recovery_point_infos} => Array&lt;Types::TapeRecoveryPointInfo&gt;
    #   * {Types::DescribeTapeRecoveryPointsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_recovery_points({
    #     gateway_arn: "GatewayARN", # required
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.tape_recovery_point_infos #=> Array
    #   resp.tape_recovery_point_infos[0].tape_arn #=> String
    #   resp.tape_recovery_point_infos[0].tape_recovery_point_time #=> Time
    #   resp.tape_recovery_point_infos[0].tape_size_in_bytes #=> Integer
    #   resp.tape_recovery_point_infos[0].tape_status #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeRecoveryPoints AWS API Documentation
    #
    # @overload describe_tape_recovery_points(params = {})
    # @param [Hash] params ({})
    def describe_tape_recovery_points(params = {}, options = {})
      req = build_request(:describe_tape_recovery_points, params)
      req.send_request(options)
    end

    # Returns a description of the specified Amazon Resource Name (ARN) of
    # virtual tapes. If a `TapeARN` is not specified, returns a description
    # of all virtual tapes associated with the specified gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [Array<String>] :tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe. If this parameter is
    #   not specified, AWS Storage Gateway returns a description of all
    #   virtual tapes associated with the specified gateway.
    #
    # @option params [String] :marker
    #   A marker value, obtained in a previous call to `DescribeTapes`. This
    #   marker indicates which page of results to retrieve.
    #
    #   If not specified, the first page of results is retrieved.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tapes described be limited to the
    #   specified number.
    #
    #   <note markdown="1"> Amazon Web Services may impose its own limit, if this field is not
    #   set.
    #
    #    </note>
    #
    # @return [Types::DescribeTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapesOutput#tapes #tapes} => Array&lt;Types::Tape&gt;
    #   * {Types::DescribeTapesOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tapes({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tapes #=> Array
    #   resp.tapes[0].tape_arn #=> String
    #   resp.tapes[0].tape_barcode #=> String
    #   resp.tapes[0].tape_created_date #=> Time
    #   resp.tapes[0].tape_size_in_bytes #=> Integer
    #   resp.tapes[0].tape_status #=> String
    #   resp.tapes[0].vtl_device #=> String
    #   resp.tapes[0].progress #=> Float
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapes AWS API Documentation
    #
    # @overload describe_tapes(params = {})
    # @param [Hash] params ({})
    def describe_tapes(params = {}, options = {})
      req = build_request(:describe_tapes, params)
      req.send_request(options)
    end

    # Returns information about the upload buffer of a gateway. This
    # operation is supported for both the gateway-stored and gateway-cached
    # volume architectures.
    #
    # The response includes disk IDs that are configured as upload buffer
    # space, and it includes the amount of upload buffer space allocated and
    # used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUploadBufferOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeUploadBufferOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeUploadBufferOutput#upload_buffer_used_in_bytes #upload_buffer_used_in_bytes} => Integer
    #   * {Types::DescribeUploadBufferOutput#upload_buffer_allocated_in_bytes #upload_buffer_allocated_in_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_upload_buffer({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.upload_buffer_used_in_bytes #=> Integer
    #   resp.upload_buffer_allocated_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeUploadBuffer AWS API Documentation
    #
    # @overload describe_upload_buffer(params = {})
    # @param [Hash] params ({})
    def describe_upload_buffer(params = {}, options = {})
      req = build_request(:describe_upload_buffer, params)
      req.send_request(options)
    end

    # Returns a description of virtual tape library (VTL) devices for the
    # specified gateway. In the response, AWS Storage Gateway returns VTL
    # device information.
    #
    # The list of VTL devices must be from one gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [Array<String>] :vtl_device_arns
    #   An array of strings, where each string represents the Amazon Resource
    #   Name (ARN) of a VTL device.
    #
    #   <note markdown="1"> All of the specified VTL devices must be from the same gateway. If no
    #   VTL devices are specified, the result will contain all devices on the
    #   specified gateway.
    #
    #    </note>
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing the VTL devices.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of VTL devices described be limited to the
    #   specified number.
    #
    # @return [Types::DescribeVTLDevicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVTLDevicesOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeVTLDevicesOutput#vtl_devices #vtl_devices} => Array&lt;Types::VTLDevice&gt;
    #   * {Types::DescribeVTLDevicesOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vtl_devices({
    #     gateway_arn: "GatewayARN", # required
    #     vtl_device_arns: ["VTLDeviceARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.vtl_devices #=> Array
    #   resp.vtl_devices[0].vtl_device_arn #=> String
    #   resp.vtl_devices[0].vtl_device_type #=> String
    #   resp.vtl_devices[0].vtl_device_vendor #=> String
    #   resp.vtl_devices[0].vtl_device_product_identifier #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.target_arn #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_id #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_port #=> Integer
    #   resp.vtl_devices[0].device_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeVTLDevices AWS API Documentation
    #
    # @overload describe_vtl_devices(params = {})
    # @param [Hash] params ({})
    def describe_vtl_devices(params = {}, options = {})
      req = build_request(:describe_vtl_devices, params)
      req.send_request(options)
    end

    # Returns information about the working storage of a gateway. This
    # operation is supported only for the gateway-stored volume
    # architecture. This operation is deprecated in cached-volumes API
    # version (20120630). Use DescribeUploadBuffer instead.
    #
    # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
    # the DescribeUploadBuffer operation to add upload buffer to a
    # stored-volume gateway.
    #
    #  </note>
    #
    # The response includes disk IDs that are configured as working storage,
    # and it includes the amount of working storage allocated and used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DescribeWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkingStorageOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeWorkingStorageOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeWorkingStorageOutput#working_storage_used_in_bytes #working_storage_used_in_bytes} => Integer
    #   * {Types::DescribeWorkingStorageOutput#working_storage_allocated_in_bytes #working_storage_allocated_in_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_working_storage({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.working_storage_used_in_bytes #=> Integer
    #   resp.working_storage_allocated_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeWorkingStorage AWS API Documentation
    #
    # @overload describe_working_storage(params = {})
    # @param [Hash] params ({})
    def describe_working_storage(params = {}, options = {})
      req = build_request(:describe_working_storage, params)
      req.send_request(options)
    end

    # Disables a gateway when the gateway is no longer functioning. For
    # example, if your gateway VM is damaged, you can disable the gateway so
    # you can recover virtual tapes.
    #
    # Use this operation for a gateway-VTL that is not reachable or not
    # functioning.
    #
    # Once a gateway is disabled it cannot be enabled.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::DisableGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisableGateway AWS API Documentation
    #
    # @overload disable_gateway(params = {})
    # @param [Hash] params ({})
    def disable_gateway(params = {}, options = {})
      req = build_request(:disable_gateway, params)
      req.send_request(options)
    end

    # Gets a list of the file shares for a specific file gateway, or the
    # list of file shares that belong to the calling user account.
    #
    # @option params [String] :gateway_arn
    #   The Amazon resource Name (ARN) of the gateway whose file shares you
    #   want to list. If this field is not present, all file shares under your
    #   account are listed.
    #
    # @option params [Integer] :limit
    #   The maximum number of file shares to return in the response. The value
    #   must be an integer with a value greater than zero. Optional.
    #
    # @option params [String] :marker
    #   Opaque pagination token returned from a previous ListFileShares
    #   operation. If present, `Marker` specifies where to continue the list
    #   from after a previous call to ListFileShares. Optional.
    #
    # @return [Types::ListFileSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFileSharesOutput#marker #marker} => String
    #   * {Types::ListFileSharesOutput#next_marker #next_marker} => String
    #   * {Types::ListFileSharesOutput#file_share_info_list #file_share_info_list} => Array&lt;Types::FileShareInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_file_shares({
    #     gateway_arn: "GatewayARN",
    #     limit: 1,
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.next_marker #=> String
    #   resp.file_share_info_list #=> Array
    #   resp.file_share_info_list[0].file_share_arn #=> String
    #   resp.file_share_info_list[0].file_share_id #=> String
    #   resp.file_share_info_list[0].file_share_status #=> String
    #   resp.file_share_info_list[0].gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileShares AWS API Documentation
    #
    # @overload list_file_shares(params = {})
    # @param [Hash] params ({})
    def list_file_shares(params = {}, options = {})
      req = build_request(:list_file_shares, params)
      req.send_request(options)
    end

    # Lists gateways owned by an AWS account in a region specified in the
    # request. The returned list is ordered by gateway Amazon Resource Name
    # (ARN).
    #
    # By default, the operation returns a maximum of 100 gateways. This
    # operation supports pagination that allows you to optionally reduce the
    # number of gateways returned in a response.
    #
    # If you have more gateways than are returned in a response (that is,
    # the response returns only a truncated list of your gateways), the
    # response contains a marker that you can specify in your next request
    # to fetch the next page of gateways.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin the
    #   returned list of gateways.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of gateways returned be limited to the
    #   specified number of items.
    #
    # @return [Types::ListGatewaysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysOutput#gateways #gateways} => Array&lt;Types::GatewayInfo&gt;
    #   * {Types::ListGatewaysOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateways #=> Array
    #   resp.gateways[0].gateway_id #=> String
    #   resp.gateways[0].gateway_arn #=> String
    #   resp.gateways[0].gateway_type #=> String
    #   resp.gateways[0].gateway_operational_state #=> String
    #   resp.gateways[0].gateway_name #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Returns a list of the gateway's local disks. To specify which gateway
    # to describe, you use the Amazon Resource Name (ARN) of the gateway in
    # the body of the request.
    #
    # The request returns a list of all disks, specifying which are
    # configured as working storage, cache storage, or stored volume or not
    # configured at all. The response includes a `DiskStatus` field. This
    # field can have a value of present (the disk is available to use),
    # missing (the disk is no longer connected to the gateway), or mismatch
    # (the disk node is occupied by a disk that has incorrect metadata or
    # the disk content is corrupted).
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::ListLocalDisksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLocalDisksOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListLocalDisksOutput#disks #disks} => Array&lt;Types::Disk&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_local_disks({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disks #=> Array
    #   resp.disks[0].disk_id #=> String
    #   resp.disks[0].disk_path #=> String
    #   resp.disks[0].disk_node #=> String
    #   resp.disks[0].disk_status #=> String
    #   resp.disks[0].disk_size_in_bytes #=> Integer
    #   resp.disks[0].disk_allocation_type #=> String
    #   resp.disks[0].disk_allocation_resource #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListLocalDisks AWS API Documentation
    #
    # @overload list_local_disks(params = {})
    # @param [Hash] params ({})
    def list_local_disks(params = {}, options = {})
      req = build_request(:list_local_disks, params)
      req.send_request(options)
    end

    # Lists the tags that have been added to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   returning the list of tags.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of tags returned be limited to the specified
    #   number of items.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceOutput#marker #marker} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.marker #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists virtual tapes in your virtual tape library (VTL) and your
    # virtual tape shelf (VTS). You specify the tapes to list by specifying
    # one or more tape Amazon Resource Names (ARNs). If you don't specify a
    # tape ARN, the operation lists all virtual tapes in both your VTL and
    # VTS.
    #
    # This operation supports pagination. By default, the operation returns
    # a maximum of up to 100 tapes. You can optionally specify the `Limit`
    # parameter in the body to limit the number of tapes in the response. If
    # the number of tapes returned in the response is truncated, the
    # response includes a `Marker` element that you can use in your
    # subsequent request to retrieve the next set of tapes.
    #
    # @option params [Array<String>] :tape_arns
    #   The Amazon Resource Name (ARN) of each of the tapes you want to list.
    #   If you don't specify a tape ARN, the response lists all tapes in both
    #   your VTL and VTS.
    #
    # @option params [String] :marker
    #   A string that indicates the position at which to begin the returned
    #   list of tapes.
    #
    # @option params [Integer] :limit
    #   An optional number limit for the tapes in the list returned by this
    #   call.
    #
    # @return [Types::ListTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTapesOutput#tape_infos #tape_infos} => Array&lt;Types::TapeInfo&gt;
    #   * {Types::ListTapesOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tapes({
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_infos #=> Array
    #   resp.tape_infos[0].tape_arn #=> String
    #   resp.tape_infos[0].tape_barcode #=> String
    #   resp.tape_infos[0].tape_size_in_bytes #=> Integer
    #   resp.tape_infos[0].tape_status #=> String
    #   resp.tape_infos[0].gateway_arn #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapes AWS API Documentation
    #
    # @overload list_tapes(params = {})
    # @param [Hash] params ({})
    def list_tapes(params = {}, options = {})
      req = build_request(:list_tapes, params)
      req.send_request(options)
    end

    # Lists iSCSI initiators that are connected to a volume. You can use
    # this operation to determine whether a volume is being used or not.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes for the gateway.
    #
    # @return [Types::ListVolumeInitiatorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumeInitiatorsOutput#initiators #initiators} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_initiators({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.initiators #=> Array
    #   resp.initiators[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeInitiators AWS API Documentation
    #
    # @overload list_volume_initiators(params = {})
    # @param [Hash] params ({})
    def list_volume_initiators(params = {}, options = {})
      req = build_request(:list_volume_initiators, params)
      req.send_request(options)
    end

    # Lists the recovery points for a specified gateway. This operation is
    # supported only for the gateway-cached volume architecture.
    #
    # Each gateway-cached volume has one recovery point. A volume recovery
    # point is a point in time at which all data of the volume is consistent
    # and from which you can create a snapshot. To create a snapshot from a
    # volume recovery point use the CreateSnapshotFromVolumeRecoveryPoint
    # operation.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::ListVolumeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumeRecoveryPointsOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListVolumeRecoveryPointsOutput#volume_recovery_point_infos #volume_recovery_point_infos} => Array&lt;Types::VolumeRecoveryPointInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_recovery_points({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.volume_recovery_point_infos #=> Array
    #   resp.volume_recovery_point_infos[0].volume_arn #=> String
    #   resp.volume_recovery_point_infos[0].volume_size_in_bytes #=> Integer
    #   resp.volume_recovery_point_infos[0].volume_usage_in_bytes #=> Integer
    #   resp.volume_recovery_point_infos[0].volume_recovery_point_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeRecoveryPoints AWS API Documentation
    #
    # @overload list_volume_recovery_points(params = {})
    # @param [Hash] params ({})
    def list_volume_recovery_points(params = {}, options = {})
      req = build_request(:list_volume_recovery_points, params)
      req.send_request(options)
    end

    # Lists the iSCSI stored volumes of a gateway. Results are sorted by
    # volume ARN. The response includes only the volume ARNs. If you want
    # additional volume information, use the DescribeStorediSCSIVolumes or
    # the DescribeCachediSCSIVolumes API.
    #
    # The operation supports pagination. By default, the operation returns a
    # maximum of up to 100 volumes. You can optionally specify the `Limit`
    # field in the body to limit the number of volumes in the response. If
    # the number of volumes returned in the response is truncated, the
    # response includes a Marker field. You can use this Marker value in
    # your subsequent request to retrieve the next set of volumes.
    #
    # @option params [String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [String] :marker
    #   A string that indicates the position at which to begin the returned
    #   list of volumes. Obtain the marker from the response of a previous
    #   List iSCSI Volumes request.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of volumes returned be limited to the
    #   specified number of items.
    #
    # @return [Types::ListVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumesOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListVolumesOutput#marker #marker} => String
    #   * {Types::ListVolumesOutput#volume_infos #volume_infos} => Array&lt;Types::VolumeInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volumes({
    #     gateway_arn: "GatewayARN",
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.marker #=> String
    #   resp.volume_infos #=> Array
    #   resp.volume_infos[0].volume_arn #=> String
    #   resp.volume_infos[0].volume_id #=> String
    #   resp.volume_infos[0].gateway_arn #=> String
    #   resp.volume_infos[0].gateway_id #=> String
    #   resp.volume_infos[0].volume_type #=> String
    #   resp.volume_infos[0].volume_size_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumes AWS API Documentation
    #
    # @overload list_volumes(params = {})
    # @param [Hash] params ({})
    def list_volumes(params = {}, options = {})
      req = build_request(:list_volumes, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to remove the
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags you want to remove from the specified resource. A
    #   tag is composed of a key/value pair.
    #
    # @return [Types::RemoveTagsFromResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveTagsFromResourceOutput#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Resets all cache disks that have encountered a error and makes the
    # disks available for reconfiguration as cache storage. If your cache
    # disk encounters a error, the gateway prevents read and write
    # operations on virtual tapes in the gateway. For example, an error can
    # occur when a disk is corrupted or removed from the gateway. When a
    # cache is reset, the gateway loses its cache storage. At this point you
    # can reconfigure the disks as cache disks.
    #
    # If the cache disk you are resetting contains data that has not been
    # uploaded to Amazon S3 yet, that data can be lost. After you reset
    # cache disks, there will be no configured cache disks left in the
    # gateway, so you must configure at least one new cache disk for your
    # gateway to function properly.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::ResetCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetCacheOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cache({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ResetCache AWS API Documentation
    #
    # @overload reset_cache(params = {})
    # @param [Hash] params ({})
    def reset_cache(params = {}, options = {})
      req = build_request(:reset_cache, params)
      req.send_request(options)
    end

    # Retrieves an archived virtual tape from the virtual tape shelf (VTS)
    # to a gateway-VTL. Virtual tapes archived in the VTS are not associated
    # with any gateway. However after a tape is retrieved, it is associated
    # with a gateway, even though it is also listed in the VTS.
    #
    # Once a tape is successfully retrieved to a gateway, it cannot be
    # retrieved again to another gateway. You must archive the tape again
    # before you can retrieve it to another gateway.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   retrieve from the virtual tape shelf (VTS).
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you want to retrieve the
    #   virtual tape to. Use the ListGateways operation to return a list of
    #   gateways for your account and region.
    #
    #   You retrieve archived virtual tapes to only one gateway and the
    #   gateway must be a gateway-VTL.
    #
    # @return [Types::RetrieveTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveTapeArchiveOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_archive({
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeArchive AWS API Documentation
    #
    # @overload retrieve_tape_archive(params = {})
    # @param [Hash] params ({})
    def retrieve_tape_archive(params = {}, options = {})
      req = build_request(:retrieve_tape_archive, params)
      req.send_request(options)
    end

    # Retrieves the recovery point for the specified virtual tape.
    #
    # A recovery point is a point in time view of a virtual tape at which
    # all the data on the tape is consistent. If your gateway crashes,
    # virtual tapes that have recovery points can be recovered to a new
    # gateway.
    #
    # <note markdown="1"> The virtual tape can be retrieved to only one gateway. The retrieved
    # tape is read-only. The virtual tape can be retrieved to only a
    # gateway-VTL. There is no charge for retrieving recovery points.
    #
    #  </note>
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which you want
    #   to retrieve the recovery point.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::RetrieveTapeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveTapeRecoveryPointOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_recovery_point({
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeRecoveryPoint AWS API Documentation
    #
    # @overload retrieve_tape_recovery_point(params = {})
    # @param [Hash] params ({})
    def retrieve_tape_recovery_point(params = {}, options = {})
      req = build_request(:retrieve_tape_recovery_point, params)
      req.send_request(options)
    end

    # Sets the password for your VM local console. When you log in to the
    # local console for the first time, you log in to the VM with the
    # default credentials. We recommend that you set a new password. You
    # don't need to know the default password to set a new password.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, String] :local_console_password
    #   The password you want to set for your VM local console.
    #
    # @return [Types::SetLocalConsolePasswordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetLocalConsolePasswordOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_local_console_password({
    #     gateway_arn: "GatewayARN", # required
    #     local_console_password: "LocalConsolePassword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetLocalConsolePassword AWS API Documentation
    #
    # @overload set_local_console_password(params = {})
    # @param [Hash] params ({})
    def set_local_console_password(params = {}, options = {})
      req = build_request(:set_local_console_password, params)
      req.send_request(options)
    end

    # Shuts down a gateway. To specify which gateway to shut down, use the
    # Amazon Resource Name (ARN) of the gateway in the body of your request.
    #
    # The operation shuts down the gateway service component running in the
    # storage gateway's virtual machine (VM) and not the VM.
    #
    # <note markdown="1"> If you want to shut down the VM, it is recommended that you first shut
    # down the gateway component in the VM to avoid unpredictable
    # conditions.
    #
    #  </note>
    #
    # After the gateway is shutdown, you cannot call any other API except
    # StartGateway, DescribeGatewayInformation, and ListGateways. For more
    # information, see ActivateGateway. Your applications cannot read from
    # or write to the gateway's storage volumes, and there are no snapshots
    # taken.
    #
    # <note markdown="1"> When you make a shutdown request, you will get a `200 OK` success
    # response immediately. However, it might take some time for the gateway
    # to shut down. You can call the DescribeGatewayInformation API to check
    # the status. For more information, see ActivateGateway.
    #
    #  </note>
    #
    # If do not intend to use the gateway again, you must delete the gateway
    # (using DeleteGateway) to no longer pay software charges associated
    # with the gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::ShutdownGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ShutdownGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.shutdown_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ShutdownGateway AWS API Documentation
    #
    # @overload shutdown_gateway(params = {})
    # @param [Hash] params ({})
    def shutdown_gateway(params = {}, options = {})
      req = build_request(:shutdown_gateway, params)
      req.send_request(options)
    end

    # Starts a gateway that you previously shut down (see ShutdownGateway).
    # After the gateway starts, you can then make other API calls, your
    # applications can read from or write to the gateway's storage volumes
    # and you will be able to take snapshot backups.
    #
    # <note markdown="1"> When you make a request, you will get a 200 OK success response
    # immediately. However, it might take some time for the gateway to be
    # ready. You should call DescribeGatewayInformation and check the status
    # before making any additional API calls. For more information, see
    # ActivateGateway.
    #
    #  </note>
    #
    # To specify which gateway to start, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::StartGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartGatewayOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartGateway AWS API Documentation
    #
    # @overload start_gateway(params = {})
    # @param [Hash] params ({})
    def start_gateway(params = {}, options = {})
      req = build_request(:start_gateway, params)
      req.send_request(options)
    end

    # Updates the bandwidth rate limits of a gateway. You can update both
    # the upload and download bandwidth rate limit or specify only one of
    # the two. If you don't set a bandwidth rate limit, the existing rate
    # limit remains.
    #
    # By default, a gateway's bandwidth rate limits are not set. If you
    # don't set any limit, the gateway does not have any limitations on its
    # bandwidth usage and could potentially use the maximum available
    # bandwidth.
    #
    # To specify which gateway to update, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [Integer] :average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second.
    #
    # @option params [Integer] :average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second.
    #
    # @return [Types::UpdateBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #     average_upload_rate_limit_in_bits_per_sec: 1,
    #     average_download_rate_limit_in_bits_per_sec: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimit AWS API Documentation
    #
    # @overload update_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def update_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:update_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Updates the Challenge-Handshake Authentication Protocol (CHAP)
    # credentials for a specified iSCSI target. By default, a gateway does
    # not have CHAP enabled; however, for added security, you might use it.
    #
    # When you update CHAP credentials, all existing connections on the
    # target are closed and initiators must reconnect with the new
    # credentials.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return the TargetARN for
    #   specified VolumeARN.
    #
    # @option params [required, String] :secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in UTF-8.
    #
    #    </note>
    #
    # @option params [required, String] :initiator_name
    #   The iSCSI initiator that connects to the target.
    #
    # @option params [String] :secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g. Windows client).
    #
    #   Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in UTF-8.
    #
    #    </note>
    #
    # @return [Types::UpdateChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChapCredentialsOutput#target_arn #target_arn} => String
    #   * {Types::UpdateChapCredentialsOutput#initiator_name #initiator_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_chap_credentials({
    #     target_arn: "TargetARN", # required
    #     secret_to_authenticate_initiator: "ChapSecret", # required
    #     initiator_name: "IqnName", # required
    #     secret_to_authenticate_target: "ChapSecret",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_arn #=> String
    #   resp.initiator_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateChapCredentials AWS API Documentation
    #
    # @overload update_chap_credentials(params = {})
    # @param [Hash] params ({})
    def update_chap_credentials(params = {}, options = {})
      req = build_request(:update_chap_credentials, params)
      req.send_request(options)
    end

    # Updates a gateway's metadata, which includes the gateway's name and
    # time zone. To specify which gateway to update, use the Amazon Resource
    # Name (ARN) of the gateway in your request.
    #
    # <note markdown="1"> For Gateways activated after September 2, 2015, the gateway's ARN
    # contains the gateway ID rather than the gateway name. However,
    # changing the name of the gateway has no effect on the gateway's ARN.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [String] :gateway_name
    #   The name you configured for your gateway.
    #
    # @option params [String] :gateway_timezone
    #
    # @return [Types::UpdateGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayInformationOutput#gateway_arn #gateway_arn} => String
    #   * {Types::UpdateGatewayInformationOutput#gateway_name #gateway_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_information({
    #     gateway_arn: "GatewayARN", # required
    #     gateway_name: "GatewayName",
    #     gateway_timezone: "GatewayTimezone",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewayInformation AWS API Documentation
    #
    # @overload update_gateway_information(params = {})
    # @param [Hash] params ({})
    def update_gateway_information(params = {}, options = {})
      req = build_request(:update_gateway_information, params)
      req.send_request(options)
    end

    # Updates the gateway virtual machine (VM) software. The request
    # immediately triggers the software update.
    #
    # <note markdown="1"> When you make this request, you get a `200 OK` success response
    # immediately. However, it might take some time for the update to
    # complete. You can call DescribeGatewayInformation to verify the
    # gateway is in the `STATE_RUNNING` state.
    #
    #  </note>
    #
    # A software update forces a system restart of your gateway. You can
    # minimize the chance of any disruption to your applications by
    # increasing your iSCSI Initiators' timeouts. For more information
    # about increasing iSCSI Initiator timeouts for Windows and Linux, see
    # [Customizing Your Windows iSCSI Settings][1] and [Customizing Your
    # Linux iSCSI Settings][2], respectively.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings
    # [2]: http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @return [Types::UpdateGatewaySoftwareNowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewaySoftwareNowOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_software_now({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewaySoftwareNow AWS API Documentation
    #
    # @overload update_gateway_software_now(params = {})
    # @param [Hash] params ({})
    def update_gateway_software_now(params = {}, options = {})
      req = build_request(:update_gateway_software_now, params)
      req.send_request(options)
    end

    # Updates a gateway's weekly maintenance start time information,
    # including day and time of the week. The maintenance time is the time
    # in your gateway's time zone.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and region.
    #
    # @option params [required, Integer] :hour_of_day
    #   The hour component of the maintenance start time represented as *hh*,
    #   where *hh* is the hour (00 to 23). The hour of the day is in the time
    #   zone of the gateway.
    #
    # @option params [required, Integer] :minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (00 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #
    # @option params [required, Integer] :day_of_week
    #   The maintenance start time day of the week represented as an ordinal
    #   number from 0 to 6, where 0 represents Sunday and 6 Saturday.
    #
    # @return [Types::UpdateMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceStartTimeOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_start_time({
    #     gateway_arn: "GatewayARN", # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #     day_of_week: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateMaintenanceStartTime AWS API Documentation
    #
    # @overload update_maintenance_start_time(params = {})
    # @param [Hash] params ({})
    def update_maintenance_start_time(params = {}, options = {})
      req = build_request(:update_maintenance_start_time, params)
      req.send_request(options)
    end

    # Updates a file share.
    #
    # <note markdown="1"> To leave a file share field unchanged, set the corresponding input
    # field to null.
    #
    #  </note>
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be updated.
    #
    # @option params [Boolean] :kms_encrypted
    #   True to use Amazon S3 server side encryption with your own AWS KMS
    #   key, or false to use a key managed by Amazon S3. Optional.
    #
    # @option params [String] :kms_key
    #   The KMS key used for Amazon S3 server side encryption. This value can
    #   only be set when KmsEncrypted is true. Optional.
    #
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   The default values for the file share. Optional.
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   a file gateway. Possible values are S3\_STANDARD or S3\_STANDARD\_IA.
    #   If this field is not populated, the default value S3\_STANDARD is
    #   used. Optional.
    #
    # @option params [Array<String>] :client_list
    #   The list of clients that are allowed to access the file gateway. The
    #   list must contain either valid IP addresses or valid CIDR blocks.
    #
    # @return [Types::UpdateNFSFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNFSFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nfs_file_share({
    #     file_share_arn: "FileShareARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1,
    #     },
    #     default_storage_class: "StorageClass",
    #     client_list: ["IPV4AddressCIDR"],
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateNFSFileShare AWS API Documentation
    #
    # @overload update_nfs_file_share(params = {})
    # @param [Hash] params ({})
    def update_nfs_file_share(params = {}, options = {})
      req = build_request(:update_nfs_file_share, params)
      req.send_request(options)
    end

    # Updates a snapshot schedule configured for a gateway volume.
    #
    # The default snapshot schedule for volume is once every 24 hours,
    # starting at the creation time of the volume. You can use this API to
    # change the snapshot schedule configured for the volume.
    #
    # In the request you must identify the gateway volume whose snapshot
    # schedule you want to update, and the schedule information, including
    # when you want the snapshot to begin on a day and the frequency (in
    # hours) of snapshots.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @option params [required, Integer] :start_at
    #   The hour of the day at which the snapshot schedule begins represented
    #   as *hh*, where *hh* is the hour (0 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #
    # @option params [required, Integer] :recurrence_in_hours
    #   Frequency of snapshots. Specify the number of hours between snapshots.
    #
    # @option params [String] :description
    #   Optional description of the snapshot that overwrites the existing
    #   description.
    #
    # @return [Types::UpdateSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #     start_at: 1, # required
    #     recurrence_in_hours: 1, # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSnapshotSchedule AWS API Documentation
    #
    # @overload update_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def update_snapshot_schedule(params = {}, options = {})
      req = build_request(:update_snapshot_schedule, params)
      req.send_request(options)
    end

    # Updates the type of medium changer in a gateway-VTL. When you activate
    # a gateway-VTL, you select a medium changer type for the gateway-VTL.
    # This operation enables you to select a different type of medium
    # changer after a gateway-VTL is activated.
    #
    # @option params [required, String] :vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you want to
    #   select.
    #
    # @option params [required, String] :device_type
    #   The type of medium changer you want to select.
    #
    #   Valid Values: "STK-L700", "AWS-Gateway-VTL"
    #
    # @return [Types::UpdateVTLDeviceTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVTLDeviceTypeOutput#vtl_device_arn #vtl_device_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vtl_device_type({
    #     vtl_device_arn: "VTLDeviceARN", # required
    #     device_type: "DeviceType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vtl_device_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateVTLDeviceType AWS API Documentation
    #
    # @overload update_vtl_device_type(params = {})
    # @param [Hash] params ({})
    def update_vtl_device_type(params = {}, options = {})
      req = build_request(:update_vtl_device_type, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-storagegateway'
      context[:gem_version] = '1.0.0.rc3'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end