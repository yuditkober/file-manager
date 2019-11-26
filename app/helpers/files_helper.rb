module FilesHelper
  def file_name_and_size(entry)
    "#{entry[0]}, (#{entry[1]} bytes)"
  end
end
