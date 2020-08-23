arr = ["Piedra", "Papel", "Tijeras", "Salir"] # 0=Piedra 1=Papel 2=Tijeras
puts "Turno jugador uno: \n1. #{arr[0]}\n2. #{arr[1]}\n3. #{arr[2]}\n4. #{arr[3]}"
player_1 = gets.chomp.to_i
while player_1 !=1 && player_1 != 2 && player_1 !=3 && player_1 != 4
    puts "Ingrese una opción valida"
    player_1 = gets.chomp.to_i
end
if player_1 == 4
    exit
end
puts "Turno jugador dos: \n1. #{arr[0]}\n2. #{arr[1]}\n3. #{arr[2]}\n4. #{arr[3]}"
player_2 = gets.chomp.to_i
while player_2 !=1 && player_2 != 2 && player_2 !=3 && player_2 != 4
    puts "Ingrese una opción valida"
    player_2 = gets.chomp.to_i
end
if player_2 == 4
    exit
end

case player_1
when 1
    puts "El jugador 1 ha jugado #{arr[0]} y el jugador 2 #{arr[1]} \nHa ganado el Jugador 2!" if player_2 == 2
    puts "El jugador 1 ha jugado #{arr[0]} y el jugador 2 #{arr[0]} \nEmpate!" if player_2 == 1
    puts "El jugador 1 ha jugado #{arr[0]} y el jugador 2 #{arr[2]} \nHa ganado el Jugador 1!" if player_2 == 3
when 2
    puts "El jugador 1 ha jugado #{arr[1]} y el jugador 2 #{arr[2]} \nHa ganado el Jugador 2!" if player_2 == 3
    puts "El jugador 1 ha jugado #{arr[1]} y el jugador 2 #{arr[1]} \n Empate!" if player_2 == 2
    puts "El jugador 1 ha jugado #{arr[1]} y el jugador 2 #{arr[0]} \nHa ganado el Jugador 1!" if player_2 == 1
when 3
    puts "El jugador 1 ha jugado #{arr[2]} y el jugador 2 #{arr[0]} \nHa ganado el Jugador 2!" if player_2 == 1
    puts "El jugador 1 ha jugado #{arr[2]} y el jugador 2 #{arr[2]} \n Empate!" if player_2 == 3
    puts "El jugador 1 ha jugado #{arr[2]} y el jugador 2 #{arr[1]} \nHa ganado el Jugador 1!" if player_2 == 2
end