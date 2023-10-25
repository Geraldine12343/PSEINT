from abc import ABC, abstractmethod
from dataclasses import dataclass
from typing import List

# Definición de la clase abstracta Producto
@dataclass
class Producto(ABC):
    nombre: str
    precio: float

    @abstractmethod
    def calcular_descuento(self) -> float:
        pass

# Clase derivada de Producto para productos normales
@dataclass
class ProductoNormal(Producto):
    descuento: float

    def calcular_descuento(self) -> float:
        return self.precio * self.descuento

# Clase derivada de Producto para productos VIP
@dataclass
class ProductoVIP(Producto):
    def calcular_descuento(self) -> float:
        # Descuento fijo del 20% para productos VIP
        return self.precio * 0.2

# Clase Carrito para gestionar los productos en el carrito
class Carrito:
    def __init__(self):
        self.productos: List[Producto] = []

    def agregar_producto(self, producto: Producto):
        self.productos.append(producto)

    def calcular_total(self) -> float:
        total = 0
        #FOR
        for producto in self.productos:
            total += producto.precio - producto.calcular_descuento()
        return total

# Función para mostrar el menú y manejar la interacción del usuario
def mostrar_menu():
    carrito = Carrito()

    while True:
        print("\nMenú:")
        print("1. Agregar producto normal")
        print("2. Agregar producto VIP")
        print("3. Mostrar total del carrito")
        print("4. Salir")

        opcion = input("Ingrese su opción: ")

        if opcion == "1":
            nombre = input("Ingrese el nombre del producto normal: ")
            precio = float(input("Ingrese el precio del producto: "))
            descuento = float(input("Ingrese el descuento como decimal (por ejemplo, 0.1 para 10%): "))
            producto_normal = ProductoNormal(nombre, precio, descuento)
            carrito.agregar_producto(producto_normal)
            print("Producto normal agregado al carrito.")
        elif opcion == "2":
            nombre = input("Ingrese el nombre del producto VIP: ")
            precio = float(input("Ingrese el precio del producto: "))
            producto_vip = ProductoVIP(nombre, precio)
            carrito.agregar_producto(producto_vip)
            print("Producto VIP agregado al carrito.")
        elif opcion == "3":
            total = carrito.calcular_total()
            print("Total del carrito:", total)
        elif opcion == "4":
            print("Gracias por usar nuestro servicio. ¡Hasta luego!")
            break
        else:
            print("Opción inválida. Por favor, ingrese una opción válida.")

# Llamar a la función del menú
mostrar_menu()




#**Enunciado del Ejercicio:**

#Escribe un programa en Python que simule una tienda en línea. La tienda tiene dos tipos de productos: productos normales y productos VIP. Ambos tipos de productos tienen un nombre y un precio. Los productos normales pueden tener un descuento variable, mientras que los productos VIP siempre tienen un descuento fijo del 20%.

#Debes implementar las siguientes clases:

#1. **`Producto` (Clase Abstracta):**
   #- Define una clase abstracta llamada `Producto` con dos atributos: `nombre` (str) y `precio` (float).
   #- Debe tener un método abstracto llamado `calcular_descuento(self) -> float` que calcule el descuento para el producto. Este método debe ser implementado en las clases derivadas.

#2. **`ProductoNormal` (Clase Derivada de `Producto`):**
  # - Esta clase representa productos normales.
  # - Debe tener un atributo adicional llamado `descuento` (float) que representa el porcentaje de descuento aplicado al producto normal.
  # - Implementa el método `calcular_descuento(self) -> float` que devuelve el monto del descuento para el producto normal.

#3. **`ProductoVIP` (Clase Derivada de `Producto`):**
   #- Esta clase representa productos VIP.
  # - Implementa el método `calcular_descuento(self) -> float` que devuelve el monto del descuento para el producto VIP.

#4. **`Carrito` (Clase):**
  # - Define una clase llamada `Carrito` que tiene una lista de productos (`productos`) como atributo.
 #  - Debe tener un método llamado `agregar_producto(self, producto: Producto)` que permite agregar un producto al carrito.
 #  - Debe tener un método llamado `calcular_total(self) -> float` que calcule el precio total del carrito después de aplicar los descuentos a los productos.

#5. **Menú de Interacción (Función):**
 #  - Crea una función llamada `mostrar_menu()` que presenta las siguientes opciones al usuario:
 #    - Agregar producto normal al carrito.
 #    - Agregar producto VIP al carrito.
 #    - Mostrar total del carrito.
 #    - Salir del programa.
 #  - La función debe permitir al usuario interactuar con el programa y realizar las acciones mencionadas en el menú.

#**Condiciones:**

#- Utiliza clases abstractas para garantizar que todas las clases de producto implementen el método `calcular_descuento`.
#- La implementación de `calcular_descuento` en `ProductoNormal` debe aplicar un descuento variable en el precio del producto normal.
#- El método `calcular_descuento` en `ProductoVIP` debe aplicar un descuento fijo del 20% en el precio del producto VIP.

#**Ejemplo de Uso:**

#El programa debe permitir a los usuarios agregar productos al carrito, mostrar el total del carrito después de aplicar los descuentos y salir del programa cuando lo deseen.

#--

#Este enunciado proporciona una descripción detallada del problema y las clases que debes implementar, así como las interacciones esperadas con el programa. Puedes utilizar este enunciado para crear un problema específico para un examen o tarea.