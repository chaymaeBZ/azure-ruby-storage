class AzureStorageManagementController < ApplicationController
  before_action :get_client

  def create
    blobs = @client.blob_client
    container = blobs.create_container('test-container')
    content = ::File.open('test.jpg','rb') { |file|
      file.read }
    blobs.create_block_blob container.name, 'image-blob', content
    render text: "Done creating file inside container: #{container.name}"
  end

  def show
    blobs = @client.blob_client

    render plain: blobs.list_containers.inspect
    #render plain: container.name.inspect

  end
  private 

    def get_client
      @client = Azure::Storage::Client.create(:storage_account_name => Figaro.env.storage_account_name, :storage_access_key => Figaro.env.storage_access_key)
    end 
end
