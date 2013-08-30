class MapPagesController < ApplicationController
  def home
  	require "rubygems"
  	require "google_drive"
  	require "smarter_csv"
  	require "json"

  	session =GoogleDrive.login("corzej@gmail.com", "dhfflavlr@129")

  	@sheet = session.spreadsheet_by_title("ExitNYC").worksheets[0]
  	#file name will be using number of sheet
  	#gon.json = @sheet.rows
  	arr =[]
    @degree = []

  	(2..1863).each do |n|
  		data = {@sheet[1,1] => @sheet[n,1], @sheet[1,2] => @sheet[n,2], @sheet[1,3] => @sheet[n,3], @sheet[1,4] => @sheet[n,4], @sheet[1,5] => @sheet[n,5]}
  		data = data.to_json
  		arr << JSON.load(data)
      if @sheet[n,2].to_f >=355 || @sheet[n,2].to_f < 5  
        @degree << ActionController::Base.helpers.asset_path("arrow_0@2x.png")
      elsif @sheet[n,2].to_f >=5 && @sheet[n,2].to_f <15
        @degree << ActionController::Base.helpers.asset_path("arrow_10@2x.png")
      elsif @sheet[n,2].to_f >=15 && @sheet[n,2].to_f <25
        @degree << ActionController::Base.helpers.asset_path("arrow_20@2x.png")
      elsif @sheet[n,2].to_f >=25 && @sheet[n,2].to_f <35
        @degree << ActionController::Base.helpers.asset_path("arrow_30@2x.png")
      elsif @sheet[n,2].to_f >=35 && @sheet[n,2].to_f <45
        @degree << ActionController::Base.helpers.asset_path("arrow_40@2x.png")
      elsif @sheet[n,2].to_f >=45 && @sheet[n,2].to_f <55
        @degree <<ActionController::Base.helpers.asset_path("arrow_50@2x.png")
      elsif @sheet[n,2].to_f >=55 && @sheet[n,2].to_f <65
        @degree <<ActionController::Base.helpers.asset_path("arrow_60@2x.png")
      elsif @sheet[n,2].to_f >=65 && @sheet[n,2].to_f <75
        @degree <<ActionController::Base.helpers.asset_path("arrow_70@2x.png")
      elsif @sheet[n,2].to_f >=75 && @sheet[n,2].to_f <85
        @degree <<ActionController::Base.helpers.asset_path("arrow_80@2x.png")
      elsif @sheet[n,2].to_f >=85 && @sheet[n,2].to_f <95
        @degree <<ActionController::Base.helpers.asset_path("arrow_90@2x.png")
      elsif @sheet[n,2].to_f >=95 && @sheet[n,2].to_f <105
        @degree <<ActionController::Base.helpers.asset_path("arrow_100@2x.png")
      elsif @sheet[n,2].to_f >=105 && @sheet[n,2].to_f <115
        @degree <<ActionController::Base.helpers.asset_path("arrow_110@2x.png")
      elsif @sheet[n,2].to_f >=115 && @sheet[n,2].to_f <125
        @degree <<ActionController::Base.helpers.asset_path("arrow_120@2x.png")
      elsif @sheet[n,2].to_f >=125 && @sheet[n,2].to_f <135
        @degree <<ActionController::Base.helpers.asset_path("arrow_130@2x.png")
      elsif @sheet[n,2].to_f >=135 && @sheet[n,2].to_f <145
        @degree <<ActionController::Base.helpers.asset_path("arrow_140@2x.png")
      elsif @sheet[n,2].to_f >=145 && @sheet[n,2].to_f <155
        @degree <<ActionController::Base.helpers.asset_path("arrow_150@2x.png")
      elsif @sheet[n,2].to_f >=155 && @sheet[n,2].to_f <165
        @degree <<ActionController::Base.helpers.asset_path("arrow_160@2x.png")
      elsif @sheet[n,2].to_f >=165 && @sheet[n,2].to_f <175
        @degree <<ActionController::Base.helpers.asset_path("arrow_170@2x.png")
      elsif @sheet[n,2].to_f >=175 && @sheet[n,2].to_f <185
        @degree <<ActionController::Base.helpers.asset_path("arrow_180@2x.png")
      elsif @sheet[n,2].to_f >=185 && @sheet[n,2].to_f <195
        @degree <<ActionController::Base.helpers.asset_path("arrow_190@2x.png")
      elsif @sheet[n,2].to_f >=195 && @sheet[n,2].to_f <205
        @degree <<ActionController::Base.helpers.asset_path("arrow_200@2x.png")
      elsif @sheet[n,2].to_f >=205 && @sheet[n,2].to_f <215
        @degree <<ActionController::Base.helpers.asset_path("arrow_210@2x.png")
      elsif @sheet[n,2].to_f >=215 && @sheet[n,2].to_f <225
        @degree <<ActionController::Base.helpers.asset_path("arrow_220@2x.png")
      elsif @sheet[n,2].to_f >=225 && @sheet[n,2].to_f <235
       @degree <<ActionController::Base.helpers.asset_path("arrow_230@2x.png")
      elsif @sheet[n,2].to_f >=235 && @sheet[n,2].to_f <245
        @degree <<ActionController::Base.helpers.asset_path("arrow_240@2x.png")
      elsif @sheet[n,2].to_f >=245 && @sheet[n,2].to_f <255
        @degree <<ActionController::Base.helpers.asset_path("arrow_250@2x.png")
      elsif @sheet[n,2].to_f >=255 && @sheet[n,2].to_f <265
        @degree <<ActionController::Base.helpers.asset_path("arrow_260@2x.png")
      elsif @sheet[n,2].to_f >=265 && @sheet[n,2].to_f <275
        @degree <<ActionController::Base.helpers.asset_path("arrow_270@2x.png")
      elsif @sheet[n,2].to_f >=275 && @sheet[n,2].to_f <285
        @degree <<ActionController::Base.helpers.asset_path("arrow_280@2x.png")
      elsif @sheet[n,2].to_f >=285 && @sheet[n,2].to_f <295
        @degree <<ActionController::Base.helpers.asset_path("arrow_290@2x.png")
      elsif @sheet[n,2].to_f >=295 && @sheet[n,2].to_f <305
        @degree <<ActionController::Base.helpers.asset_path("arrow_300@2x.png")
      elsif @sheet[n,2].to_f >=305 && @sheet[n,2].to_f <315
        @degree <<ActionController::Base.helpers.asset_path("arrow_310@2x.png")
      elsif @sheet[n,2].to_f >=315 && @sheet[n,2].to_f <325
        @degree <<ActionController::Base.helpers.asset_path("arrow_320@2x.png")
      elsif @sheet[n,2].to_f >=325 && @sheet[n,2].to_f <335
        @degree <<ActionController::Base.helpers.asset_path("arrow_330@2x.png")
      elsif @sheet[n,2].to_f >=335 && @sheet[n,2].to_f <345
        @degree <<ActionController::Base.helpers.asset_path("arrow_340@2x.png")
      elsif @sheet[n,2].to_f >=345 && @sheet[n,2].to_f <355
        @degree <<ActionController::Base.helpers.asset_path("arrow_350@2x.png")
      else 
        @degree <<ActionController::Base.helpers.asset_path("arrow_0@2x.png")
      end
    end
  	gon.json = arr
    gon.degreeAr =@degree
 	end
end