nomes = ['Élisson', 'Valcir', 'Fernanda', 'Marlonn', 'Vagner', 'Gabriel', 'Arthur', 'Ediandro', 'Cesar', 'Bernardo']

tipos = {
         'Elemental' => ['Pirocinese', 'Hidrocinese', 'Geocinese', 'Aerocinese', 'Criocinese', 'Eletrocinese'],
         'Físico'    => ['Super-Velocidade', 'Super-Força', 'Elasticidade', 'Memória Muscular', 'Teletransporte', 'Invisilidade'],
         'Mental'    => ['Telecinese', 'Telepatia', 'Ilusionismo', 'Campo de Força', 'Hipnose', 'Controle Mental']
        }

  classe = 'Mago'


nomes.each do |nome| $
  personagem = Personagem.create(nome:        nome,
                                 forca:       rand(1..10),
                                 resistencia: rand(1..10),
                                 agilidade:   rand(1..10),
                                 destreza:    rand(1..10),
                                  classe: classe))
  3.times do
    tipo = tipos.keys.shuffle.first
    personagem.poderes.create(tipo: tipo, nome: tipos[tipo].shuffle.first)
  end
end
