class PagesController < ApplicationController
  include PagesHelper
  require 'rubygems'
  require 'oauth'
  # Hacked to allow POST requests from plain HTML
    skip_before_filter :verify_authenticity_token 
    skip_before_action :verify_authenticity_token
  # I don't know how to fix this!

  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :full_index, only: [:index, :main]
  # GET /pages
  # GET /pages.json
  def index
  end

  # GET /
  def main
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def submitform
    @telephone = params["telephone"]
    @name = params["name"]
    @email = params["email"]
    @howcanihelp = params["howcanihelp"]
    SuperMailer.welcome_email(@name,
                              @email,
                              @telephone,
                              @howcanihelp).deliver_now
  end

  def twitter
    # Change the following values to those provided on dev.twitter.com
    # The consumer key identifies the application making the request.
    # The access token identifies the user making the request.

    # The encryption level on these is over 9000 bits! Srsly.
    keys={ ck1: "=_@{\x7FQOW]U>]`r;<k7\\w~k=:o",
           ck2: "_npNnu?XQKvIRn[89MZwPa=`IJ`^h9|auxsas@@_=j\x7FI`p]^UY",
           at1: ">8@<=>?==:?:>899<>4?MW8OaWK]\x81poXzaK=\x81\x81?JiU||ww\x7F^RQ",
           at2: "nYPnq=o^Uh\x81qi[=\x7Fqoi<SyR<\x80it]qw8qqlp`XM\\\x7FYNxTu" }

    consumer_key = OAuth::Consumer.new(
        convertKey(keys[:ck1]), convertKey(keys[:ck2]))
    access_token = OAuth::Token.new(
        convertKey(keys[:at1]), convertKey(keys[:at2]))

    # Now you will fetch /1.1/statuses/user_timeline.json,
    # returns a list of public Tweets from the specified
    # account.
    baseurl = "https://api.twitter.com"
    path    = "/1.1/statuses/user_timeline.json"
    query   = URI.encode_www_form(
        "screen_name" => "wyncode",
        "count" => 5,
    )
    address = URI("#{baseurl}#{path}?#{query}")
    request = Net::HTTP::Get.new address.request_uri

    # # All requests will be sent to this server.
    # baseurl = "https://api.twitter.com"

    # # The verify credentials endpoint returns a 200 status if
    # # the request is signed correctly.
    # address = URI("#{baseurl}/1.1/account/verify_credentials.json")

    # Set up Net::HTTP to use SSL, which is required by Twitter.
    http = Net::HTTP.new address.host, address.port
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # Build the request and authorize it with OAuth.
    request = Net::HTTP::Get.new address.request_uri
    request.oauth! http, consumer_key, access_token

    # Issue the request and return the response.
    http.start
    response = http.request request
    @status = "The response status was #{response.code}"

  # Parse and print the Tweet if the response code was 200
    @tweets = nil
    if response.code == '200' then
      @tweets = JSON.parse(response.body)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Shared by #index and #main
    def full_index
      @pages = Page.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :body, :style)
    end
end
