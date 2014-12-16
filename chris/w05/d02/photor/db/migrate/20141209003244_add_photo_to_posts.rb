class AddPhotoToPosts < ActiveRecord::Migration #search active record migration in dash
  def up #upload a version
      add_attachment :photo  
  end

  def down # remove a version
    remove_attachment :photo
  end
end
