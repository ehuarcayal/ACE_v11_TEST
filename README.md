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
3. Ejecutar el docker-compose: 
```bash
docker-compose up -d
```
## Conexiones:
- URL del Servicio: http://localhost:7800/consulta?wsdl
- Server de Integracion: http://localhost:7600
- Queue Manager: localhost:1414
- Conexion a Base de Datos: localhost:5432 user:postgres pass:postgres
- Proyecto Soap-ui: Consulta-TEST-BCP-soapui-project.xml 

## Pruebas realizadas en:
Kubuntu 21.04
