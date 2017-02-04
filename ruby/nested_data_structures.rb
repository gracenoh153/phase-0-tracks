# places to visit in Paris, France 

Paris_touristy_spots = {
  musee_du_Louvre: {
    paintings: {
      Leonardo_da_Vinci: "Mona Lisa", 
      Johannes_Vermeer: "The Lacemaker", 
      Theodore_Gericault: "The Raft of the Medusa"
    },
    sculptures: [
      "Venus de Milo", 
      "Diana of Versailles", 
      "The Marly Horses"
    ],
    artists: [
      "Caravaggio", 
      "Eugene Delacroix", 
      "Antonio Canova"
    ],
  },
  musee_dorsay: {
    paintings: [
      "Olympia", 
      "Van Gogh Self Portrait", 
      "Poppies", 
      "The Source"
    ],
    artists: [
      "Edouard Manet", 
      "Claude Monet", 
      "Vincent Van Gogh", 
      "Jean-Auguste-Dominique Ingres"
    ],
  },
  cathedrals: [
    "Notre Dame Cathedral", 
    "Sacre-Coeur", 
    "Sainte-Chapelle", 
    "La Madeleine"
    ],
  famous_landmarks: [
    "Eiffel Tower", 
    "Luxembourg Gardens", 
    "Arc de Triomphe",
    "Jardin de Tuileries",
    "Champ Elysees",
    "Palace du Versailles"
  ]
}

puts "Paris is a very popular travel destination in Europe."
puts "I'm going to tell you a few of the most famous attractions!"
puts "Famous painting at the Louvre: #{Paris_touristy_spots[:musee_du_Louvre][:paintings][:Leonardo_da_Vinci]}"
puts "Famous sculture at the Louvre: #{Paris_touristy_spots[:musee_du_Louvre][:sculptures][0]}"
puts "Famous painting at Musee d'Orsay: #{Paris_touristy_spots[:musee_dorsay][:paintings][2]}"
puts "Famous artist at Musee d'Orsay: #{Paris_touristy_spots[:musee_dorsay][:artists][0]}"
puts "Famous chapel: #{Paris_touristy_spots[:cathedrals][0]}"
puts "Famous landmark: #{Paris_touristy_spots[:famous_landmarks][2]}"