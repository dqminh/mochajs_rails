module MochajsRails
  class Spec < Struct.new(:path)
    class NotFound < StandardError
    end

    def self.all
      spec_paths.map { |path| new(asset_name(path)) }
    end

    def self.asset_name(path)
      path.sub(/(\.js|\.coffee).*/, '')
    end

    def self.spec_paths
      spec_root = File.join(Rails.root, "spec/javascripts")
      Rails.application.assets.each_entry(spec_root).find_all { |pathname|
        pathname.basename.to_s =~ /_spec\.|_test\./ &&
        (pathname.extname == '.js' || Tilt[pathname]) &&
        Rails.application.assets.content_type_of(pathname) == 'application/javascript'
      }.map { |pathname|
        pathname.to_s.gsub(File.join(spec_root, ''), '')
      }.sort
    end
  end
end
