class TheDaysController < ApplicationController
  # GET /the_days
  # GET /the_days.xml
  def index
    @the_days = TheDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @the_days }
    end
  end

  # GET /the_days/1
  # GET /the_days/1.xml
  def show
    @the_day = TheDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @the_day }
    end
  end

  # GET /the_days/new
  # GET /the_days/new.xml
  def new
    @the_day = TheDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @the_day }
    end
  end

  # GET /the_days/1/edit
  def edit
    @the_day = TheDay.find(params[:id])
  end

  # POST /the_days
  # POST /the_days.xml
  def create
    @the_day = TheDay.new(params[:the_day])

    respond_to do |format|
      if @the_day.save
        format.html { redirect_to(@the_day, :notice => 'The day was successfully created.') }
        format.xml  { render :xml => @the_day, :status => :created, :location => @the_day }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @the_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /the_days/1
  # PUT /the_days/1.xml
  def update
    @the_day = TheDay.find(params[:id])

    respond_to do |format|
      if @the_day.update_attributes(params[:the_day])
        format.html { redirect_to(@the_day, :notice => 'The day was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @the_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /the_days/1
  # DELETE /the_days/1.xml
  def destroy
    @the_day = TheDay.find(params[:id])
    @the_day.destroy

    respond_to do |format|
      format.html { redirect_to(the_days_url) }
      format.xml  { head :ok }
    end
  end
end
