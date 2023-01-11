final String tableNotes = 'contactos';

class NoteFields {
  static final List<String> values = [
    /// Add all fields
    id, isImportant, nombre, apellido, parentesco, time, correo, celular
  ];

  static final String id = '_id';
  static final String isImportant = 'isImportant';
  static final String number = 'number';
  static final String nombre = 'nombre';
  static final String apellido = 'apellido';
  static final String parentesco = 'parentesco';
  static final String correo = 'correo';
  static final String celular = 'celular';

  static final String time = 'time';
}

class Contacts {
  final int? id;
  final bool isImportant;
  final int number;
  final String nombre;
  final String apellido;
  final String parentesco;
  final String correo;
  final String celular;
  final DateTime createdTime;

  const Contacts({
    this.id,
    required this.isImportant,
    required this.number,
    required this.nombre,
    required this.apellido,
    required this.parentesco,
    required this.correo,
    required this.celular,
    required this.createdTime,
  });

  Contacts copy(
          {int? id,
          bool? isImportant,
          int? number,
          String? nombre,
          String? apellido,
          String? parentesco,
          String? correo,
          String? celular,
          DateTime? createdTime}) =>
      Contacts(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        nombre: nombre ?? this.nombre,
        apellido: apellido ?? this.apellido,
        parentesco: parentesco ?? this.parentesco,
        correo: parentesco ?? this.correo,
        celular: parentesco ?? this.celular,
        createdTime: createdTime ?? this.createdTime,
      );

  static Contacts fromJson(Map<String, Object?> json) => Contacts(
        id: json[NoteFields.id] as int?,
        isImportant: json[NoteFields.isImportant] == 1,
        number: json[NoteFields.number] as int,
        nombre: json[NoteFields.nombre] as String,
        apellido: json[NoteFields.apellido] as String,
        createdTime: DateTime.parse(json[NoteFields.time] as String),
        parentesco: json[NoteFields.parentesco] as String,
        correo: json[NoteFields.correo] as String,
        celular: json[NoteFields.celular] as String? ?? " ",
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.isImportant: isImportant ? 1 : 0,
        NoteFields.nombre: nombre,
        NoteFields.number: number,
        NoteFields.apellido: apellido,
        NoteFields.parentesco: parentesco,
        NoteFields.correo: correo,
        NoteFields.celular: celular,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
