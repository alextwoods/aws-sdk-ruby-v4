# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mobile
  module Stubs

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          details: Stubs::ProjectDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['details'] = Stubs::ProjectDetails.stub(stub[:details]) unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProjectDetails
    class ProjectDetails
      def self.default(visited=[])
        return nil if visited.include?('ProjectDetails')
        visited = visited + ['ProjectDetails']
        {
          name: 'name',
          project_id: 'project_id',
          region: 'region',
          state: 'state',
          created_date: Time.now,
          last_updated_date: Time.now,
          console_url: 'console_url',
          resources: Stubs::Resources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectDetails.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['consoleUrl'] = stub[:console_url] unless stub[:console_url].nil?
        data['resources'] = Stubs::Resources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
        [
          Stubs::Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          type: 'type',
          name: 'name',
          arn: 'arn',
          feature: 'feature',
          attributes: Stubs::Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['feature'] = stub[:feature] unless stub[:feature].nil?
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
          deleted_resources: Stubs::Resources.default(visited),
          orphaned_resources: Stubs::Resources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deletedResources'] = Stubs::Resources.stub(stub[:deleted_resources]) unless stub[:deleted_resources].nil?
        data['orphanedResources'] = Stubs::Resources.stub(stub[:orphaned_resources]) unless stub[:orphaned_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeBundle
    class DescribeBundle
      def self.default(visited=[])
        {
          details: Stubs::BundleDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['details'] = Stubs::BundleDetails.stub(stub[:details]) unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BundleDetails
    class BundleDetails
      def self.default(visited=[])
        return nil if visited.include?('BundleDetails')
        visited = visited + ['BundleDetails']
        {
          bundle_id: 'bundle_id',
          title: 'title',
          version: 'version',
          description: 'description',
          icon_url: 'icon_url',
          available_platforms: Stubs::Platforms.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BundleDetails.new
        data = {}
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['iconUrl'] = stub[:icon_url] unless stub[:icon_url].nil?
        data['availablePlatforms'] = Stubs::Platforms.stub(stub[:available_platforms]) unless stub[:available_platforms].nil?
        data
      end
    end

    # List Stubber for Platforms
    class Platforms
      def self.default(visited=[])
        return nil if visited.include?('Platforms')
        visited = visited + ['Platforms']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          details: Stubs::ProjectDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['details'] = Stubs::ProjectDetails.stub(stub[:details]) unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExportBundle
    class ExportBundle
      def self.default(visited=[])
        {
          download_url: 'download_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['downloadUrl'] = stub[:download_url] unless stub[:download_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExportProject
    class ExportProject
      def self.default(visited=[])
        {
          download_url: 'download_url',
          share_url: 'share_url',
          snapshot_id: 'snapshot_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['downloadUrl'] = stub[:download_url] unless stub[:download_url].nil?
        data['shareUrl'] = stub[:share_url] unless stub[:share_url].nil?
        data['snapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListBundles
    class ListBundles
      def self.default(visited=[])
        {
          bundle_list: Stubs::BundleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['bundleList'] = Stubs::BundleList.stub(stub[:bundle_list]) unless stub[:bundle_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BundleList
    class BundleList
      def self.default(visited=[])
        return nil if visited.include?('BundleList')
        visited = visited + ['BundleList']
        [
          Stubs::BundleDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BundleDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: Stubs::ProjectSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['projects'] = Stubs::ProjectSummaries.stub(stub[:projects]) unless stub[:projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectSummaries
    class ProjectSummaries
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummaries')
        visited = visited + ['ProjectSummaries']
        [
          Stubs::ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          name: 'name',
          project_id: 'project_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          details: Stubs::ProjectDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['details'] = Stubs::ProjectDetails.stub(stub[:details]) unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
