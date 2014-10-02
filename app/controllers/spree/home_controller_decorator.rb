Spree::HomeController.class_eval do

  before_filter :get_homepage

  def index
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products
    @latest_products = Spree::Product.available.order("available_on DESC").limit(16)
    render :template => "spree/pages/home"
  end

  private

    def get_homepage
    @page = Spree::Page.find_by_path("/")
    
    end

    def accurate_title
      @page.meta_title unless @page.nil?
    end
    
    
     def find_by_path(_path)
      return super('/') if _path == "_home_" && self.exists?(:path => "/")
      super _path.to_s.sub(/^\/*/, "/").gsub("--", "/")
    end

end
