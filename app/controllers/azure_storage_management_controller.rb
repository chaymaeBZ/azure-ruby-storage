class AzureStorageManagementController < ApplicationController
  before_action :get_client

  def auth
    render text: @client.inspect.to_yaml 
  end

  private 

    def get_client
      @client = Azure::Storage::Client.create(:storage_account_name => Figaro.env.storage_account_name, :storage_access_key => Figaro.env.storage_access_key)
    end 
end
