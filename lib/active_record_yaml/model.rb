module ActiveRecordYaml
  class Model
    extend ActiveModel::Naming

    def self.all
      items
    end

    def self.first
      items.first
    end

    def self.last
      items.last
    end

    def self.count
      items.length
    end

    def self.items
      data = File.read(data_filename)
      YAML.load(data).map { |x| OpenStruct.new(x) }
    end

    def self.data_filename
      data_dir.join("#{model_name.plural}.yml")
    end

    def self.data_dir
      Rails.root.join("config", "data")
    end
  end
end
