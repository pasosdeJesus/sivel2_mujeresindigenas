module Sip
  class Bitacora7zController < ApplicationController
    load_and_authorize_resource class: Sip::Bitacora7z


    def new 
      @bitacora7z = Bitacora7z.new()
      respond_to do |format|
          format.html { render :new, layout: 'application' }
      end
    end
   
    def create
      @bitacora7z = Bitacora7z.new(bitacora7z_params)
      respond_to do |format|
        if @bitacora7z.valid?
          archcopia = File.join(Rails.root, 
                                    'log', 'unicorn.stderr.log')
          #desturl = File.join( Sip.dir_bitacora7z, "#{archcopia}.7z")
          #dest = File.join( Rails.root, 'public', desturl)
          # Quitamos el .sql final de archcopia
          dest = "#{archcopia[0..-5]}.7z"
          FileUtils.rm_f dest
          cmd = Shellwords.join(['7z', 'a', "-r", 
                                 "-p#{@bitacora7z.clave7z}", 
                                dest, archcopia])
          r = `#{cmd}`
          if $?.exitstatus == 0
            format.html { 
              send_file(dest,
                        type: "application/x-7z-compressed", 
                        disposition: "inline" )
            }
          else
            format.html { 
              flash.now[:error] = "Problemas generando con #{cmd}: #{r}" 
              render :new, layout: 'application'
            }
          end
          #format.html { redirect_to main_app.root_path, notice: "Bitacora creado, descarguelo de <a href='#{desturl}'>desturl</a>" }
        else
          format.html { render :new, layout: 'application' }
        end
      end
    end

    private

    def bitacora7z_params
      params.require(:bitacora7z).permit(:clave7z, :clave7z_confirmation)
    end

  end
end
