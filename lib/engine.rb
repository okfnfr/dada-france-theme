module Alavetelitheme
class Engine < Rails::Engine
  initializer "alavetelitheme.configure_rails_initialization" do |app|
    puts "Alavetelitheme<Engine|#{app}"
    #puts "Alavetelitheme<Railtie|#{app}"

    ['stylesheets', 'images', 'javascripts'].each do |asset_type|
      theme_asset_path = File.join(File.dirname(__FILE__),
                                   '..',
                                   'app',
                                   'assets',
                                   asset_type)
      theme_asset_path = File.expand_path(theme_asset_path)
      puts "Alavetelitheme<Railtie|prepending|#{theme_asset_path}"
      app.config.assets.prepend_path theme_asset_path
    end
  end
end
end