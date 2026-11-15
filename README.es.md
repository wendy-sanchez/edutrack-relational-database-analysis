# EduTrack — Análisis de Base de Datos Relacional

Proyecto de análisis de bases de datos SQL centrado en el modelado relacional, las consultas entre múltiples tablas y la auditoría de integridad de datos mediante PostgreSQL y Supabase.

## Descripción general

Este proyecto corresponde a la segunda fase del ejercicio de auditoría de bases de datos de EduTrack. Explora un esquema de base de datos relacional normalizado en el que los estudiantes, los cursos y las inscripciones se almacenan en tres tablas independientes relacionadas mediante claves foráneas.

El objetivo es responder preguntas operativas y de negocio que requieren combinar información de varias tablas, comprobando al mismo tiempo la coherencia y la integridad de los datos relacionales.

## Estructura de la base de datos

La base de datos está formada por tres tablas relacionales principales:

| Tabla | Descripción |
|---|---|
| `students` | Almacena información de los estudiantes, incluidos nombres y correos electrónicos. |
| `courses` | Almacena información de los cursos, incluidos títulos, categorías, instructores y cuotas mensuales. |
| `enrollments` | Relaciona estudiantes con cursos y almacena el progreso y el estado de finalización de las inscripciones. |

Las relaciones se implementan mediante claves foráneas:

- Un estudiante puede tener múltiples inscripciones.
- Un curso puede tener múltiples inscripciones.
- Cada inscripción hace referencia a un estudiante y a un curso existentes.

Se incluye un diagrama entidad-relación (ERD) para representar visualmente la estructura de la base de datos.

## Análisis SQL

El proyecto contiene 10 consultas SQL organizadas en torno a preguntas operativas y analíticas.

### 1. Análisis de inscripciones
- Obtener todas las inscripciones con nombres de estudiantes, títulos de cursos y porcentajes de completado.
- Identificar estudiantes que han aprobado al menos un curso.

### 2. Análisis de estudiantes y cursos
- Calcular el porcentaje medio de completado por instructor.
- Identificar estudiantes sin ninguna inscripción.
- Identificar cursos sin ninguna inscripción.
- Encontrar estudiantes inscritos en más de un curso.

### 3. Métricas de ingresos e inscripciones
- Calcular los importes mensuales agregados por categoría de curso según los precios actuales y las inscripciones.
- Contabilizar los estudiantes distintos inscritos por instructor.

### 4. Comprobaciones de integridad referencial
- Identificar inscripciones que hacen referencia a estudiantes inexistentes.
- Identificar inscripciones que hacen referencia a cursos inexistentes.

## Conceptos SQL aplicados

- `INNER JOIN` — Combinar registros relacionados de varias tablas.
- `LEFT JOIN` — Identificar registros sin relaciones coincidentes.
- `GROUP BY` — Agrupar información por instructor, estudiante o categoría.
- `HAVING` — Filtrar resultados agrupados.
- `COUNT` y `COUNT(DISTINCT)` — Calcular métricas de inscripciones.
- `AVG` — Calcular el porcentaje medio de completado de los cursos.
- `SUM` — Agregar las cuotas mensuales de los cursos.
- Claves foráneas e integridad referencial.

## Principales resultados

El análisis produjo los siguientes resultados a partir del conjunto de datos:

| Métrica | Resultado |
|---|---:|
| Inscripciones totales | 16 |
| Estudiantes inscritos en varios cursos | 7 |
| Estudiantes sin inscripciones | 1 |
| Cursos sin inscripciones | 1 |
| Inscripciones en cursos aprobados | 6 |
| Inscripciones con estudiantes inexistentes | 0 |
| Inscripciones con cursos inexistentes | 0 |

### Porcentaje medio de completado por instructor

| Instructor | Porcentaje medio |
|---|---:|
| Marta López | 66,14 % |
| Carlos Vega | 40,00 % |
| Lucia Prades | 36,50 % |
| Pendiente de asignación | 0,00 % |

### Importes mensuales por categoría

| Categoría | Total |
|---|---:|
| Programming | 409,93 |
| Data | 179,97 |
| Design | 169,96 |
| Marketing | 59,98 |

Estas cifras económicas se calculan a partir de las cuotas mensuales actuales de los cursos asociadas a las inscripciones. Representan estimaciones obtenidas mediante consultas, no pagos verificados.

## Herramientas y tecnologías

- **SQL** — Consultas y análisis de bases de datos relacionales.
- **PostgreSQL** — Sistema de gestión de bases de datos relacionales.
- **Supabase** — Plataforma de alojamiento de bases de datos y ejecución de consultas SQL.
- **Diagrama entidad-relación (ERD)** — Representación visual de la estructura relacional.

## Estructura del repositorio

```text
.
├── queries.sql
├── analysis_report.md
├── diagram.png
├── Comprobación courses.png
├── Comprobación enrollments.png
├── Comprobación students.png
└── Ejecución exitosa de base de datos.png
```

| Archivo | Descripción |
|---|---|
| `queries.sql` | Contiene las 10 consultas SQL utilizadas en el análisis. |
| `analysis_report.md` | Documenta los resultados y hallazgos de las consultas. |
| `diagram.png` | Diagrama entidad-relación de las tres tablas de la base de datos. |
| Capturas de pantalla | Evidencias de la ejecución de la base de datos y las comprobaciones iniciales de las tablas en Supabase. |

## Cómo reproducir el análisis

1. Abrir el proyecto de Supabase que contiene la base de datos normalizada de EduTrack.
2. Acceder al SQL Editor.
3. Abrir y ejecutar las consultas de `queries.sql`.
4. Comparar los resultados con los hallazgos documentados en `analysis_report.md`.

El esquema de la base de datos y los datos de origen deben estar disponibles previamente en Supabase para poder ejecutar las consultas.

## Aprendizajes

Este proyecto demuestra habilidades prácticas en:

- Trabajo con estructuras de bases de datos relacionales normalizadas.
- Comprensión de las relaciones entre entidades.
- Escritura de consultas SQL entre múltiples tablas.
- Aplicación de joins para recuperar información relacionada.
- Realización de agregaciones y análisis agrupados.
- Identificación de relaciones inexistentes y validación de la integridad referencial.
- Transformación de preguntas operativas en consultas SQL.
- Documentación de resultados analíticos.

## Estado del proyecto

Ejercicio de análisis de bases de datos completado mediante un esquema relacional normalizado, con 10 consultas SQL, un diagrama entidad-relación y un informe documentado de resultados.

---

**Developer Wendy Sanchez**
