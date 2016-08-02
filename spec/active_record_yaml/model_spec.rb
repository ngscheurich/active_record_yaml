require "spec_helper"

name = "YRModel"
Object.const_set(name, Class.new(ActiveRecordYaml::Model))

describe YRModel do
  before(:all) { create_yaml_data }
  after(:all) { destroy_yaml_data }

  describe ".all" do
    it "returns an array of OpenStructs" do
      all = YRModel.all

      expect(all).to be_an(Array)
      expect(all[0]).to be_a(OpenStruct)
    end
  end

  describe ".first" do
    it "returns the first record" do
      expect(YRModel.first.title).to eq "The Fellowship of the Ring"
    end
  end

  describe ".last" do
    it "returns the last record" do
      expect(YRModel.last.title).to eq "The Return of the King"
    end
  end

  describe ".count" do
    it "returns the total number of records" do
      expect(YRModel.count).to eq 3
    end
  end

  describe ".data_filename" do
    it "returns the correct filename" do
      filename = Rails.root.join("config", "data", "yr_models.yml")
      expect(YRModel.data_filename).to eq filename
    end
  end

  describe "a missing method" do
    it "returns the value for its key if it exists" do
      titles = ["The Fellowship of the Ring", "The Two Towers", "The Return of the King"]
      expect(YRModel.titles).to eq titles
    end
  end

  private

  def create_yaml_data
    data = <<YAML
- title: "The Fellowship of the Ring"
  published: "July 29, 1954"
- title: "The Two Towers"
  published: "November 11, 1954"
- title: "The Return of the King"
  published: "October 20, 1955"
YAML
    File.open(YRModel.data_filename, "w") { |f| f.write(data) }
  end

  def destroy_yaml_data
    File.delete(YRModel.data_filename)
  end
end
