# Proyecto de Automatización de Pruebas – Testing Web

Este repositorio contiene dos enfoques de automatización de pruebas funcionales en sitios web:

- Automatización con **Selenium IDE** (grabación sin código)
- Automatización con **Robot Framework** (código con lenguaje natural)

Proyecto desarrollado en el marco del Trabajo Integrador del curso de **Testing de Software - Cohorte 1 - 2025**.

---

## 🧪 1. Selenium IDE – Formulario Web

### 📁 Ubicación: `/selenium-ide/`
Se automatizó un flujo de prueba sobre un formulario web que simula el envío de datos de contacto.

### ✅ Flujo automatizado:
1. Abrir el sitio web del formulario.
2. Completar nombre, email y mensaje.
3. Enviar formulario.
4. Validar mensaje de éxito.

### 📄 Archivo principal:
- `Testing-Overleaf.Beverly Gonzalez.side`

### 🔧 Navegadores usados:
- Google Chrome
- Mozilla Firefox

### 🖥️ Ejecución:
1. Instalar [Selenium IDE](https://www.selenium.dev/selenium-ide/) como extensión en tu navegador.
2. Importar el archivo `.side`.
3. Ejecutar el test `ContactFormTest`.

---

## 🤖 2. Robot Framework – Validación de título

### 📁 Ubicación: `/robot-framework/`
Se creó un caso de prueba simple que verifica el título de una página utilizando Robot Framework y SeleniumLibrary.

### 📄 Archivo principal:
- `test_selenium.robot`

### 🔧 Requisitos:
- Python 3
- Instalar dependencias:
```bash
pip install -r requirements.txt
