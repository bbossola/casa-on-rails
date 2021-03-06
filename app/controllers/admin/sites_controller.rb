require 'json'

module Admin
  class SitesController < ApplicationController

    before_action :require_session_admin!

    def index

      redirect_to edit_admin_site_url(@site)

    end

    def show

      redirect_to edit_admin_site_url(@site)

    end

    def edit

    end

    def update

      @site.update params[:site].permit [
                                            :title,
                                            :heading,
                                            :footer,
                                            :homepage_categories,
                                            :css,
                                            :mobile_title,
                                            :mobile_heading,
                                            :mobile_footer,
                                            :mobile_appicon
                                        ]

      redirect_to root_url

    end

  end
end