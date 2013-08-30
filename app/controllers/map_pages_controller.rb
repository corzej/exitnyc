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
  	(2..1863).each do |n|
  		data = {@sheet[1,1] => @sheet[n,1], @sheet[1,2] => @sheet[n,2], @sheet[1,3] => @sheet[n,3], @sheet[1,4] => @sheet[n,4], @sheet[1,5] => @sheet[n,5]}
  		data = data.to_json
  		arr << JSON.load(data)
  	end
  	gon.json = arr
 	end
end
