## TEST ACE v11

## Requisitos
- docker version 20.10.14
- docker-compose version 1.29.2

## Como desplegar
1. Clonar el repositorio y posicionarse en la carpeta
2. Crear la imagen: 
```bash
docker build -t test_bcp .
```
4. Ejecutar el docker-compose: 
```bash
docker-compose up -d
```
## Prueba en:
- http://localhost:7800/consulta?wsdl
