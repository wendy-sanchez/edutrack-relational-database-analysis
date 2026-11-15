# Contexto:

El equipo de ingeniería de EduTrack ha normalizado la base de datos. Lo que antes era una única tabla plana enrollments es ahora un esquema relacional completo: estudiantes, cursos e inscripciones son entidades separadas, cada una con su propia tabla y vinculadas por claves foráneas.

La responsable de operaciones ha vuelto con un nuevo conjunto de preguntas — pero esta vez, ninguna puede responderse mirando una sola tabla. La responsable ha enviado el siguiente mensaje (Brief):

```
De: Responsable de Operaciones, EduTrack
Para: Analista de datos (contratado externo)
Asunto: Re: Auditoría de base de datos — Q3 (esquema normalizado)

Hola de nuevo,

El equipo de desarrollo acaba de terminar la migración al nuevo esquema. Adjuntamos el archivo .sql actualizado.

Ahora que los datos están bien estructurados, nos gustaría retomar algunas preguntas de la vez anterior — y añadir algunas nuevas que antes no eran posibles:

¿Qué estudiantes están inscritos en más de un curso? Queremos sus nombres y cuántos cursos están cursando.
¿Qué cursos no tienen ninguna inscripción? Puede que los archivemos.
¿Cuál es el porcentaje de completado medio por instructor?
¿Qué estudiantes han aprobado al menos un curso? Muestra su nombre y el título del curso que aprobaron.
¿Hay inscripciones vinculadas a un estudiante o curso que ya no existe en la base de datos? (Revisión de integridad de datos.)
¿Qué categoría genera más ingresos teniendo en cuenta el precio actual del curso?
Como la vez anterior, por favor rellena el analysis_report.md con tus resultados.

Gracias
```
