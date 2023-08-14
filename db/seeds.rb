# Crear 10 clientes ficticios
10.times do
    BbClient.create(
      avatar: Faker::Avatar.image,
      name: Faker::Name.name,
      email: Faker::Internet.email
    )
  end
  
  # Crear 10 películas ficticias
  10.times do
    BbMovie.create(
      image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['movie']),
      name: Faker::Movie.title
    )
  end
  
  # Asignar películas arrendadas a clientes de forma aleatoria
  BbClient.all.each do |client|
    2.times do
      BbRental.create(
        bb_client: client,
        bb_movie: BbMovie.all.sample
      )
    end
  end