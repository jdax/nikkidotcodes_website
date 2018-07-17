class AboutMeController < ApplicationController

  def index
    render :index
  end

  def hire_me
    render :hire_me
  end

  def download_resume_pdf
    send_file(
        "#{Rails.root}/public/Murray_Dax_Resume_July_2018.pdf",
        filename: "dax_murray_resume.pdf",
        type: "application/pdf"
    )
  end

end