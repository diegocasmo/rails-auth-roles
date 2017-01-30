Then(/^I should be able to upload a picture$/) do
  NewPicturePage.visit.upload_picture
  HomePage.verify_successful_picture_upload
end
