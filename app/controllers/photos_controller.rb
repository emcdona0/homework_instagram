class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    photo_num = params[:id]

    @photo = Photo.find_by({:id => photo_num})


  end



  def new_form
  end

  def create_row

    @photo = Photo.new
    @photo.source = params[:the_source]
    @photo.caption = params[:the_caption]
    @photo.save
  end


  def edit_form
    @photo_num = params[:id]
    @photo = Photo.find_by({:id => @photo_num})
# pass these two variable to the view
#@photo.source  @photo.caption

end

def update_row
  @photo = Photo.find_by(params[:id])
  @photo.source = params[:the_source]
  @photo.caption = params[:the_caption]
  @photo.save
end



def destroy
  photo_num = params[:id]
  @photo = Photo.find_by({:id => photo_num})
  @photo.destroy

end



end



#Routes
#Define the action in the controller
#Make sure that controller is temp_controller
#Make sure the views folder and the viewes file have the same name as the controller


# i = Instructor.find_by({ :first_name => "Raghu" })
