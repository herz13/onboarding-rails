class SearchController < ApplicationController
    include SearchUniversityHelper

    SearchUniversityHelper.get('Portugal')
end
