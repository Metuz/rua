class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:it, :ie, :ai, :tr, :ic]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
        format.js
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Student.import(params[:file])
    redirect_to students_url, notice: "Alumnos Importados"
  end

  def it
    @student = Student.new(name: params[:name], lname: params[:lname], mname: params[:mname], pre_pin: params[:pre_pin], major_id: params[:major_id], entry: DateTime.now.to_date, )
    respond_to do |format|
      if @student.save
        format.html { redirect_to informatica_path, notice: 'Gracias. Bienvenido!!!!' }
        format.json { render :it, status: :created, location: @student }
        format.js
      else
        format.html { render :it }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def ie
    @student = Student.new(name: params[:name], lname: params[:lname], mname: params[:mname], pre_pin: params[:pre_pin], major_id: params[:major_id], entry: DateTime.now.to_date)
    respond_to do |format|
      if @student.save
        format.html { redirect_to industrial_path, notice: 'Gracias. Bienvenido!!!!' }
        format.json { render :ie, status: :created, location: @student }
        format.js
      else
        format.html { render :ie }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def ai
    @student = Student.new(name: params[:name], lname: params[:lname], mname: params[:mname], pre_pin: params[:pre_pin], major_id: params[:major_id], entry: DateTime.now.to_date)
    respond_to do |format|
      if @student.save
        format.html { redirect_to administracion_path, notice: 'Gracias. Bienvenido!!!!' }
        format.json { render :ai, status: :created, location: @student }
        format.js
      else
        format.html { render :ai }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def tr
    @student = Student.new(name: params[:name], lname: params[:lname], mname: params[:mname], pre_pin: params[:pre_pin], major_id: params[:major_id], entry: DateTime.now.to_date)
    respond_to do |format|
      if @student.save
        format.html { redirect_to transporte_path, notice: 'Gracias. Bienvenido!!!!' }
        format.json { render :tr, status: :created, location: @student }
        format.js
      else
        format.html { render :tr }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def ic
    @student = Student.new(name: params[:name], lname: params[:lname], mname: params[:mname], pre_pin: params[:pre_pin], major_id: params[:major_id], entry: DateTime.now.to_date)
    respond_to do |format|
      if @student.save
        format.html { redirect_to ciencias_path, notice: 'Gracias. Bienvenido!!!!' }
        format.json { render :ic, status: :created, location: @student }
        format.js
      else
        format.html { render :ic }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :lname, :mname, :pin, :entry, :graduation, :major_id, :pre_pin)
    end
end
