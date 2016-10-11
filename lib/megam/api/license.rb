module Megam
  class API
    def get_licenses
      @options = {:path => '/license',:body => ""}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    def get_license(license_name)
      @options = {:path => "/license/#{license_name}",:body => ""}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    def post_license(new_license)
      @options = {:path => '/license/content',
        :body => Megam::JSONCompat.to_json(new_license)}.merge(@options)

      request(
        :expects  => 201,
        :method   => :post,
        :body     => @options[:body]
      )
    end

  end
end
