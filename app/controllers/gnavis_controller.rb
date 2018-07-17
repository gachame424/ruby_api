class GnavisController < ApplicationController
    require 'httpclient'
    require 'yaml'
    Dotenv.load
    def index
        client = HTTPClient.new
        #client.debug_dev = $stderr    # デバッグ情報を標準エラー出力に
        yaml = YAML.load_file('config/gnavi.yml')
        url = yaml[Rails.env]['url']
        id = ''
        query = {'keyid' => ENV['GNAVI_KEYID'], 'id' => id, 'format' => 'json'}
        # get
        res = client.get(url, :query => query, :follow_redirect => true)
        # post
        #res = client.post('', :body => query)
        #puts "code=#{res.code}"    # res.code : Fixnum
        #puts HTTP::Status.successful?(res.code)
        #p res.headers
        render json: res.body
    end
end
