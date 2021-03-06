class CarritosController < ApplicationController
    before_action :set_carrito, only: [:show, :edit, :update, :destroy]

    # GET /carritos
    # GET /carritos.json
    def index
        @carritos = Carrito.all
    end

    # GET /carritos/1
    # GET /carritos/1.json redirect_to "http://localhost:3000/", notice: 'Carrito invalido'

    def show
    end

    # GET /carritos/new
    def new
        @carrito = Carrito.new
    end

    # GET /carritos/1/edit
    def edit
    end

    # POST /carritos
    # POST /carritos.json
    def create
        @carrito = Carrito.new(carrito_params)

        respond_to do |format|
            if @carrito.save
                format.html { redirect_to @carrito, notice: 'Carrito was successfully created.' }
                format.json { render :show, status: :created, location: @carrito }
            else
                format.html { render :new }
                format.json { render json: @carrito.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /carritos/1
    # PATCH/PUT /carritos/1.json
    def update
        respond_to do |format|
            if @carrito.update(carrito_params)
                format.html { redirect_to @carrito, notice: 'Carrito was successfully updated.' }
                format.json { render :show, status: :ok, location: @carrito }
            else
                format.html { render :edit }
                format.json { render json: @carrito.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /carritos/1
    # DELETE /carritos/1.json
    def destroy
        @carrito = carrito_actual
        session[:carrito_id] = nil
        @carrito.destroy
        respond_to do |format|
            format.html { redirect_to tienda_url, notice: 'Tu carrito actual esta vacio' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrito
        begin
            @carrito = Carrito.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            logger.error "EROOOOOOOOOOOOOOOOOOOOOOOOOOOOR"
            logger.error "-------- No se encuentra el carrito con id: #{params[:id]}"
            redirect_to "http://localhost:3000/", notice: 'Carrito invalido'
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrito_params
        params[:carrito]
    end
end
