Dir[File.join(File.dirname(__FILE__),'~/../HttpartyProjectTest/features/requests*.requests.rb')].each { |file| require file }

  module ClassInitializer

  def request
    @request ||= Requests.new
  end

end