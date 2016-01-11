class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @q = Teacher.search(params[:q])
    @teachers = @q.result(distinct: true).includes(:posts, :academies)
    respond_to do |format|
      format.html
      format.js
      format.pdf { render_teacher_list(@teachers) }
    end
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    @academies = Academy.all
    @subjects = Subject.all
    3.times { @teacher.posts.build }
  end

  # GET /teachers/1/edit
  def edit
    @academies = Academy.all
    @subjects = Subject.all
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        3.times { @teacher.posts.build }
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :lname, :mname, :pin, :degree, :master, :dictamen, :shift, :age, :total_hrs, {academy_ids: []}, {subject_ids: []}, posts_attributes: [:id, :name, :hrs, :_destroy])
    end

    def render_teacher_list(teachers)
        report = ThinReports::Report.new layout: File.join(Rails.root, 'app', 'reports', 'rua.tlf')
        report.start_new_page
        report.page.item(:date).value(Time.now.strftime("%d/%m/%Y"))
        teachers.each do |teacher|
            report.list.add_row do |row|
                row.values name: teacher.name,
                    lname: teacher.lname,
                    mname: teacher.mname,
                    pin: teacher.pin,
                    shift: teacher.shift
            end
        end
        send_data report.generate, filename: 'profesores_reporte.pdf', type: 'application/pdf', disposition: 'attachment'
    end
end
