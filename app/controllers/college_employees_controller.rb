class CollegeEmployeesController < ApplicationController
  before_action :set_college_employee, only: [:show, :edit, :update, :destroy]

  # GET /college_employees
  # GET /college_employees.json
  def index
    @college_employees = CollegeEmployee.all
  end

  # GET /college_employees/1
  # GET /college_employees/1.json
  def show
  end

  # GET /college_employees/new
  def new
    @college_employee = CollegeEmployee.new
  end

  # GET /college_employees/1/edit
  def edit
  end

  # POST /college_employees
  # POST /college_employees.json
  def create
    @college_employee = CollegeEmployee.new(college_employee_params)

    respond_to do |format|
      if @college_employee.save
        format.html { redirect_to @college_employee, notice: 'College employee was successfully created.' }
        format.json { render :show, status: :created, location: @college_employee }
      else
        format.html { render :new }
        format.json { render json: @college_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_employees/1
  # PATCH/PUT /college_employees/1.json
  def update
    respond_to do |format|
      if @college_employee.update(college_employee_params)
        format.html { redirect_to @college_employee, notice: 'College employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_employee }
      else
        format.html { render :edit }
        format.json { render json: @college_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_employees/1
  # DELETE /college_employees/1.json
  def destroy
    @college_employee.destroy
    respond_to do |format|
      format.html { redirect_to college_employees_url, notice: 'College employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_employee
      @college_employee = CollegeEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_employee_params
      params.require(:college_employee).permit(:name, :company, :location, :phone_no)
    end
end
