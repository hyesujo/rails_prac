class DataController < InheritedResources::Base

  private

    def datum_params
      params.require(:datum).permit(:content, :title)
    end

end
