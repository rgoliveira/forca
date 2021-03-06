class RegisterProfessorsEmails < ActiveRecord::Migration[5.1]
  def change
    %w( juergen@inf.ufrgs.br
        binsely@inf.ufrgs.br
        franca@inf.ufrgs.br
        alvares@inf.ufrgs.br
        bercht@inf.ufrgs.br
        granville@inf.ufrgs.br
        cora@inf.ufrgs.br
        vauthier@inf.ufrgs.br
        zirbes@inf.ufrgs.br
        flavio@inf.ufrgs.br
        nina@inf.ufrgs.br
        alexander.granitoff@ufrgs.br
        jnj@inf.ufrgs.br
        souto@inf.ufrgs.br
        brodbeck@inf.ufrgs.br
        lamb@inf.ufrgs.br
        nicolas@inf.ufrgs.br
        rdasilva@inf.ufrgs.br
        heuser@inf.ufrgs.br
        barone@inf.ufrgs.br
        r.bordini@inf.ufrgs.br
        rma@inf.ufrgs.br
        reis@inf.ufrgs.br
        blauth@inf.ufrgs.br
        ingrid@inf.ufrgs.br
        lmduarte@inf.ufrgs.br
        carro@inf.ufrgs.br
        prestes@inf.ufrgs.br
        mrpritt@inf.ufrgs.br
        navaux@inf.ufrgs.br
        geyer@inf.ufrgs.br
        cechin@inf.ufrgs.br
        fglima@inf.ufrgs.br
        afmoreira@inf.ufrgs.br
        ivone@inf.ufrgs.br
        marcelo.walter@inf.ufrgs.br
        wives@inf.ufrgs.br
        carla@inf.ufrgs.br
        mariana.kolberg@inf.ufrgs.br
        cabral@inf.ufrgs.br
        bampi@inf.ufrgs.br
        galante@inf.ufrgs.br
        fernando@inf.ufrgs.br
        amaciel@inf.ufrgs.br
        leila@inf.ufrgs.br
        crjung@inf.ufrgs.br
        daltro@inf.ufrgs.br
        paschoal@inf.ufrgs.br
        valdeni@inf.ufrgs.br
        marinho@inf.ufrgs.br
        rosa@inf.ufrgs.br
        marabel@inf.ufrgs.br
        newton@inf.ufrgs.br
        oliveira@inf.ufrgs.br
        roesler@inf.ufrgs.br
        nedel@inf.ufrgs.br
        andreis@inf.ufrgs.br
        avillavicencio@inf.ufrgs.br
        palazzo@inf.ufrgs.br
        ldoering@mat.ufrgs.br
        cirano@inf.ufrgs.br
        caco@inf.ufrgs.br
        jacobs@inf.ufrgs.br
        calisboa@inf.ufrgs.br
        viviane@inf.ufrgs.br
        johann@inf.ufrgs.br
        diverio@inf.ufrgs.br
        prech@inf.ufrgs.br
        buriol@inf.ufrgs.br
        marcio.dorn@inf.ufrgs.br
        weber@inf.ufrgs.br
        netto@inf.ufrgs.br
        engel@inf.ufrgs.br
        asc@inf.ufrgs.br
        lucineia@inf.ufrgs.br
        bazzan@inf.ufrgs.br
        alberto@inf.ufrgs.br
        ingrid.nunes@inf.ufrgs.br
        rpribas@inf.ufrgs.br
        comba@inf.ufrgs.br
        schnorr@inf.ufrgs.br
        taisy@inf.ufrgs.br
        mpimenta@inf.ufrgs.br
        karin.becker@inf.ufrgs.br
        erika@inf.ufrgs.br).each do |email|
      professor = Professor.find_or_create_by(email: email)
      unless professor
        professor.email = email
        professor.save
      end
    end
  end
end
