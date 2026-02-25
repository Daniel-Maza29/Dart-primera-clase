void main() {


  // Constructor normal
  Persona p1 = Persona(
    nombre: 'Daniel',
    edad: 22,
    ciudad: 'Cartagena',
    esEstudiante: true
  );

  print(p1);

  // Constructor desde JSON
  Persona p2 = Persona.fromJson({
    'nombre': 'Maria',
    'edad': 19,
    'ciudad': 'Medellín',
    'esEstudiante': false
  });

  print(p2);

  // Funciones tradicionales
  print(saludo());
  print(sumar(10, 20));

  // Funciones flecha
  print(saludoFlecha());
  print(multiplicar(5, 6));
}


// 1. Clase Persona 
class Persona {

  String nombre;
  int edad;
  String ciudad;
  bool esEstudiante;

  // 2. Constructor principal
  Persona({
    required this.nombre,
    required this.edad,
    required this.ciudad,
    required this.esEstudiante
  });

  //3. Constructor por nombre desde JSON
  Persona.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'No nombre',
        edad = json['edad'] ?? 0,
        ciudad = json['ciudad'] ?? 'Desconocida',
        esEstudiante = json['esEstudiante'] ?? false;

  // Interpolación de string
  @override
  String toString() {
    return 'Persona(nombre: $nombre, edad: $edad, ciudad: $ciudad, estudiante: $esEstudiante)';
  }
}


// Funciones tradicionales

// sin parámetros
String saludo() {
  return 'Hola desde función tradicional';
}

// con parámetros
int sumar(int a, int b) {
  return a + b;
}


// Funciones flecha

// sin parámetros
String saludoFlecha() => 'Hola desde función flecha';

// con parámetros
int multiplicar(int a, int b) => a * b;
