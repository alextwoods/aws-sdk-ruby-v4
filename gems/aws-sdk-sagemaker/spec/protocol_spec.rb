# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sagemaker'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::SageMaker
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_association' do

    end

    describe '#add_tags' do

    end

    describe '#associate_trial_component' do

    end

    describe '#batch_describe_model_package' do

    end

    describe '#create_action' do

    end

    describe '#create_algorithm' do

    end

    describe '#create_app' do

    end

    describe '#create_app_image_config' do

    end

    describe '#create_artifact' do

    end

    describe '#create_auto_ml_job' do

    end

    describe '#create_code_repository' do

    end

    describe '#create_compilation_job' do

    end

    describe '#create_context' do

    end

    describe '#create_data_quality_job_definition' do

    end

    describe '#create_device_fleet' do

    end

    describe '#create_domain' do

    end

    describe '#create_edge_packaging_job' do

    end

    describe '#create_endpoint' do

    end

    describe '#create_endpoint_config' do

    end

    describe '#create_experiment' do

    end

    describe '#create_feature_group' do

    end

    describe '#create_flow_definition' do

    end

    describe '#create_human_task_ui' do

    end

    describe '#create_hyper_parameter_tuning_job' do

    end

    describe '#create_image' do

    end

    describe '#create_image_version' do

    end

    describe '#create_inference_recommendations_job' do

    end

    describe '#create_labeling_job' do

    end

    describe '#create_model' do

    end

    describe '#create_model_bias_job_definition' do

    end

    describe '#create_model_explainability_job_definition' do

    end

    describe '#create_model_package' do

    end

    describe '#create_model_package_group' do

    end

    describe '#create_model_quality_job_definition' do

    end

    describe '#create_monitoring_schedule' do

    end

    describe '#create_notebook_instance' do

    end

    describe '#create_notebook_instance_lifecycle_config' do

    end

    describe '#create_pipeline' do

    end

    describe '#create_presigned_domain_url' do

    end

    describe '#create_presigned_notebook_instance_url' do

    end

    describe '#create_processing_job' do

    end

    describe '#create_project' do

    end

    describe '#create_studio_lifecycle_config' do

    end

    describe '#create_training_job' do

    end

    describe '#create_transform_job' do

    end

    describe '#create_trial' do

    end

    describe '#create_trial_component' do

    end

    describe '#create_user_profile' do

    end

    describe '#create_workforce' do

    end

    describe '#create_workteam' do

    end

    describe '#delete_action' do

    end

    describe '#delete_algorithm' do

    end

    describe '#delete_app' do

    end

    describe '#delete_app_image_config' do

    end

    describe '#delete_artifact' do

    end

    describe '#delete_association' do

    end

    describe '#delete_code_repository' do

    end

    describe '#delete_context' do

    end

    describe '#delete_data_quality_job_definition' do

    end

    describe '#delete_device_fleet' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_endpoint' do

    end

    describe '#delete_endpoint_config' do

    end

    describe '#delete_experiment' do

    end

    describe '#delete_feature_group' do

    end

    describe '#delete_flow_definition' do

    end

    describe '#delete_human_task_ui' do

    end

    describe '#delete_image' do

    end

    describe '#delete_image_version' do

    end

    describe '#delete_model' do

    end

    describe '#delete_model_bias_job_definition' do

    end

    describe '#delete_model_explainability_job_definition' do

    end

    describe '#delete_model_package' do

    end

    describe '#delete_model_package_group' do

    end

    describe '#delete_model_package_group_policy' do

    end

    describe '#delete_model_quality_job_definition' do

    end

    describe '#delete_monitoring_schedule' do

    end

    describe '#delete_notebook_instance' do

    end

    describe '#delete_notebook_instance_lifecycle_config' do

    end

    describe '#delete_pipeline' do

    end

    describe '#delete_project' do

    end

    describe '#delete_studio_lifecycle_config' do

    end

    describe '#delete_tags' do

    end

    describe '#delete_trial' do

    end

    describe '#delete_trial_component' do

    end

    describe '#delete_user_profile' do

    end

    describe '#delete_workforce' do

    end

    describe '#delete_workteam' do

    end

    describe '#deregister_devices' do

    end

    describe '#describe_action' do

    end

    describe '#describe_algorithm' do

    end

    describe '#describe_app' do

    end

    describe '#describe_app_image_config' do

    end

    describe '#describe_artifact' do

    end

    describe '#describe_auto_ml_job' do

    end

    describe '#describe_code_repository' do

    end

    describe '#describe_compilation_job' do

    end

    describe '#describe_context' do

    end

    describe '#describe_data_quality_job_definition' do

    end

    describe '#describe_device' do

    end

    describe '#describe_device_fleet' do

    end

    describe '#describe_domain' do

    end

    describe '#describe_edge_packaging_job' do

    end

    describe '#describe_endpoint' do

    end

    describe '#describe_endpoint_config' do

    end

    describe '#describe_experiment' do

    end

    describe '#describe_feature_group' do

    end

    describe '#describe_flow_definition' do

    end

    describe '#describe_human_task_ui' do

    end

    describe '#describe_hyper_parameter_tuning_job' do

    end

    describe '#describe_image' do

    end

    describe '#describe_image_version' do

    end

    describe '#describe_inference_recommendations_job' do

    end

    describe '#describe_labeling_job' do

    end

    describe '#describe_lineage_group' do

    end

    describe '#describe_model' do

    end

    describe '#describe_model_bias_job_definition' do

    end

    describe '#describe_model_explainability_job_definition' do

    end

    describe '#describe_model_package' do

    end

    describe '#describe_model_package_group' do

    end

    describe '#describe_model_quality_job_definition' do

    end

    describe '#describe_monitoring_schedule' do

    end

    describe '#describe_notebook_instance' do

    end

    describe '#describe_notebook_instance_lifecycle_config' do

    end

    describe '#describe_pipeline' do

    end

    describe '#describe_pipeline_definition_for_execution' do

    end

    describe '#describe_pipeline_execution' do

    end

    describe '#describe_processing_job' do

    end

    describe '#describe_project' do

    end

    describe '#describe_studio_lifecycle_config' do

    end

    describe '#describe_subscribed_workteam' do

    end

    describe '#describe_training_job' do

    end

    describe '#describe_transform_job' do

    end

    describe '#describe_trial' do

    end

    describe '#describe_trial_component' do

    end

    describe '#describe_user_profile' do

    end

    describe '#describe_workforce' do

    end

    describe '#describe_workteam' do

    end

    describe '#disable_sagemaker_servicecatalog_portfolio' do

    end

    describe '#disassociate_trial_component' do

    end

    describe '#enable_sagemaker_servicecatalog_portfolio' do

    end

    describe '#get_device_fleet_report' do

    end

    describe '#get_lineage_group_policy' do

    end

    describe '#get_model_package_group_policy' do

    end

    describe '#get_sagemaker_servicecatalog_portfolio_status' do

    end

    describe '#get_search_suggestions' do

    end

    describe '#list_actions' do

    end

    describe '#list_algorithms' do

    end

    describe '#list_app_image_configs' do

    end

    describe '#list_apps' do

    end

    describe '#list_artifacts' do

    end

    describe '#list_associations' do

    end

    describe '#list_auto_ml_jobs' do

    end

    describe '#list_candidates_for_auto_ml_job' do

    end

    describe '#list_code_repositories' do

    end

    describe '#list_compilation_jobs' do

    end

    describe '#list_contexts' do

    end

    describe '#list_data_quality_job_definitions' do

    end

    describe '#list_device_fleets' do

    end

    describe '#list_devices' do

    end

    describe '#list_domains' do

    end

    describe '#list_edge_packaging_jobs' do

    end

    describe '#list_endpoint_configs' do

    end

    describe '#list_endpoints' do

    end

    describe '#list_experiments' do

    end

    describe '#list_feature_groups' do

    end

    describe '#list_flow_definitions' do

    end

    describe '#list_human_task_uis' do

    end

    describe '#list_hyper_parameter_tuning_jobs' do

    end

    describe '#list_images' do

    end

    describe '#list_image_versions' do

    end

    describe '#list_inference_recommendations_jobs' do

    end

    describe '#list_labeling_jobs' do

    end

    describe '#list_labeling_jobs_for_workteam' do

    end

    describe '#list_lineage_groups' do

    end

    describe '#list_model_bias_job_definitions' do

    end

    describe '#list_model_explainability_job_definitions' do

    end

    describe '#list_model_metadata' do

    end

    describe '#list_model_package_groups' do

    end

    describe '#list_model_packages' do

    end

    describe '#list_model_quality_job_definitions' do

    end

    describe '#list_models' do

    end

    describe '#list_monitoring_executions' do

    end

    describe '#list_monitoring_schedules' do

    end

    describe '#list_notebook_instance_lifecycle_configs' do

    end

    describe '#list_notebook_instances' do

    end

    describe '#list_pipeline_executions' do

    end

    describe '#list_pipeline_execution_steps' do

    end

    describe '#list_pipeline_parameters_for_execution' do

    end

    describe '#list_pipelines' do

    end

    describe '#list_processing_jobs' do

    end

    describe '#list_projects' do

    end

    describe '#list_studio_lifecycle_configs' do

    end

    describe '#list_subscribed_workteams' do

    end

    describe '#list_tags' do

    end

    describe '#list_training_jobs' do

    end

    describe '#list_training_jobs_for_hyper_parameter_tuning_job' do

    end

    describe '#list_transform_jobs' do

    end

    describe '#list_trial_components' do

    end

    describe '#list_trials' do

    end

    describe '#list_user_profiles' do

    end

    describe '#list_workforces' do

    end

    describe '#list_workteams' do

    end

    describe '#put_model_package_group_policy' do

    end

    describe '#query_lineage' do

    end

    describe '#register_devices' do

    end

    describe '#render_ui_template' do

    end

    describe '#retry_pipeline_execution' do

    end

    describe '#search' do

    end

    describe '#send_pipeline_execution_step_failure' do

    end

    describe '#send_pipeline_execution_step_success' do

    end

    describe '#start_monitoring_schedule' do

    end

    describe '#start_notebook_instance' do

    end

    describe '#start_pipeline_execution' do

    end

    describe '#stop_auto_ml_job' do

    end

    describe '#stop_compilation_job' do

    end

    describe '#stop_edge_packaging_job' do

    end

    describe '#stop_hyper_parameter_tuning_job' do

    end

    describe '#stop_inference_recommendations_job' do

    end

    describe '#stop_labeling_job' do

    end

    describe '#stop_monitoring_schedule' do

    end

    describe '#stop_notebook_instance' do

    end

    describe '#stop_pipeline_execution' do

    end

    describe '#stop_processing_job' do

    end

    describe '#stop_training_job' do

    end

    describe '#stop_transform_job' do

    end

    describe '#update_action' do

    end

    describe '#update_app_image_config' do

    end

    describe '#update_artifact' do

    end

    describe '#update_code_repository' do

    end

    describe '#update_context' do

    end

    describe '#update_device_fleet' do

    end

    describe '#update_devices' do

    end

    describe '#update_domain' do

    end

    describe '#update_endpoint' do

    end

    describe '#update_endpoint_weights_and_capacities' do

    end

    describe '#update_experiment' do

    end

    describe '#update_image' do

    end

    describe '#update_model_package' do

    end

    describe '#update_monitoring_schedule' do

    end

    describe '#update_notebook_instance' do

    end

    describe '#update_notebook_instance_lifecycle_config' do

    end

    describe '#update_pipeline' do

    end

    describe '#update_pipeline_execution' do

    end

    describe '#update_project' do

    end

    describe '#update_training_job' do

    end

    describe '#update_trial' do

    end

    describe '#update_trial_component' do

    end

    describe '#update_user_profile' do

    end

    describe '#update_workforce' do

    end

    describe '#update_workteam' do

    end

  end
end
