class SalariesController < ApplicationController
  # GET /salaries
  # GET /salaries.json
  def index
    @salaries = Salary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @salaries }
    end
  end

  # GET /salaries/1
  # GET /salaries/1.json
  def show
    @salary = Salary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @salary }
    end
  end

  # GET /salaries/new
  # GET /salaries/new.json
  def new
    @salary = Salary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @salary }
    end
  end

  # GET /salaries/1/edit
  def edit
    @salary = Salary.find(params[:id])
  end

  # POST /salaries
  # POST /salaries.json
  def create
    @salary = Salary.new(params[:salary])

    respond_to do |format|
      if @salary.save
        format.html { redirect_to @salary, :notice => 'Salary was successfully created.' }
        format.json { render :json => @salary, :status => :created, :location => @salary }
      else
        format.html { render :action => "new" }
        format.json { render :json => @salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salaries/1
  # PUT /salaries/1.json
  def update
    @salary = Salary.find(params[:id])

    respond_to do |format|
      if @salary.update_attributes(params[:salary])
        format.html { redirect_to @salary, :notice => 'Salary was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salaries/1
  # DELETE /salaries/1.json
  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy

    respond_to do |format|
      format.html { redirect_to salaries_url }
      format.json { head :ok }
    end
  end
end
