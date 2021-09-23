# JobTest

<img src="https://media.giphy.com/media/Wj7lNjMNDxSmc/source.gif" width="75" >

Esta es una prueba en la cual se puede realizar cualquiera de las siguientes opciones:

- Crear tiendas
- Crear categorias
- Crear productos
- Crear palabras claves

Cada uno de los siguientes elementos que podemos crear pueden ser listados.

## Levantando el servidor de desarrollo

Para levantar el entorno lo que necesitamos hacer es instalar las dependencias de la aplicación.

Esto lo podemos hacer con el comando:

```
bin/bundle install && yarn install
```

Creamos la base de datos con el comando:

```
## Recuerda configurar tus credenciales en el archivo
## config/database.yml

bin/rake db:create
```

Llego el momento de ejecutar las migraciones

```
bin/rake db:migrate
```

Ahora podemos ejecutar el comando :

```
bin/rails s
```

## Diagrama Entidad Relación 

![Diagrama entidad relacion](https://repository-images.githubusercontent.com/408536681/3dce1906-8b58-4128-b873-578675e63d42)
