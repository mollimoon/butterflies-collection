class Butterfly {
  final String name;
  final String description;
  final String photo;

  const Butterfly({
    required this.name,
    required this.description,
    required this.photo,
  });
}

final List<Butterfly> butterflyList = [
  const Butterfly(
      name: "🦋 Траурница",
      description: 'Имя бабочки траурницы происходит '
          'от русского слова «траур», которое означает горе из-за смерти близкого человека.'
          ' Траурницей бабочку назвали потому, что крылья всех разновидностей этого насекомого '
          'окрашены в темные цвета. Траурницы – крупные бабочки шоколадного или темно-вишневого цвета.',
      photo: 'assets/images/Траурница.jpg'),
  const Butterfly(
      name: "🦋 Голубянка",
      description:
          'Свое название эта дневная бабочка получила в честь Икара, сына Дедала.'
          ' Согласно древнегреческой легенде он пренебрег наставлениями отца и слишком высоко поднялся в небо во время своего перелета с острова Крит в Элладу.',
      photo: 'assets/images/Голубянка.jpg'),
  const Butterfly(
      name: '🦋 Крапивница',
      description:
          'Дневная бабочка из семейства Нимфалиды, вид рода Aglais. '
          'Видовой эпитет названия — urticae, происходит от слова urtica и объясняется тем, что крапива — одно из кормовых растений гусениц этого вида',
      photo: 'assets/images/Крапивница.jpg')
];
