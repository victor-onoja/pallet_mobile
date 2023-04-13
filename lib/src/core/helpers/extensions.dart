import 'package:intl/intl.dart';

extension CharacterValidation on String {
  bool containsUpper() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 65 && code <= 90) return true;
    }
    return false;
  }

  bool containsLower() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 97 && code <= 122) return true;
    }
    return false;
  }

  bool containsSpecialChar() {
    for (var i = 0; i < length; i++) {
      var char = this[i];
      if ("#?!@\$ %^&*-".contains(char)) return true;
    }
    return false;
  }

  bool containsNumber() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 48 && code <= 57) return true;
    }
    return false;
  }
}

extension RemoveCommas on String {
  removeCommas() {
    if (contains(",")) {
      return replaceAll(",", "");
    } else {
      return this;
    }
  }
}

extension CapitalizeFirst on String {
  String capiTalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }

  String obscuredMail() {
    var newString = '';
    final List<String> emailList = split("");
    for (var i = 0; i < emailList.length; i++) {
      if (i != 0 && emailList[i] != '@' && i < indexOf('.')) {
        emailList[i] = '*';
        newString = emailList.join();
      }
    }
    return newString;
  }
}

extension DateTimeExtension on DateTime {
  String get convertDateHeaderToString => day == DateTime.now().day
      ? "Today"
      : day == DateTime.now().day - 1
          ? "Yesterday"
          : Dateformatter.formatEEyMMMd(this);

  String splitDateOnly([String? pattern]) {
    return toString().split(pattern ?? ' ')[0];
  }
}

extension Group<T> on Iterable<T> {
  Groups<K, T> groupBy<K>(Function(T) key) {
    final map = <K, List<T>>{};
    for (final element in this) {
      final keyValue = key(element);
      if (!map.containsKey(keyValue)) {
        map[keyValue] = [];
      }
      map[keyValue]?.add(element);
    }
    return Groups(keys: map.keys.toList(), children: map.values.toList());
  }
}

class Groups<K, T> {
  List<K> keys;
  List<List<T>> children;

  Groups({
    required this.keys,
    required this.children,
  });

  @override
  String toString() {
    return 'Groups{keys: $keys, children: $children}';
  }
}

class Dateformatter {
  static String formatyMMMd(DateTime date) {
    return DateFormat.yMMMd().format(date);
  }

  static String formatEEyMMMd(DateTime date) {
    return DateFormat.yMMMEd().format(date);
  }

  static String formatYYYYMMMDD(DateTime date) {
    return DateFormat('y-MM-dd').format(date);
  }
}
