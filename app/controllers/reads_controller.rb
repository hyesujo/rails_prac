class ReadsController < InheritedResources::Base

  private

    def read_params
      params.require(:read).permit(:user_id, :title, :content, :published_at)
    end

end
