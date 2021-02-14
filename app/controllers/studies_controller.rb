class StudiesController < InheritedResources::Base

  private

    def study_params
      params.require(:study).permit(:content, :title)
    end

end
