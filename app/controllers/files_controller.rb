class FilesController < ApplicationController
  def index
    @files = all_files.map do |fname|
      [ fname, File.size(fname) ]
    end
  end

  def show
    index = params[:id].to_i
    # /files/1?filename=readme.txt
    # filename = params[:filename]
    fname = Dir.glob('*.txt')[index]
    @content = File.read(fname)
  end

  def destroy

  end

  def all_files
    Dir.glob('*.txt')
  end
end
