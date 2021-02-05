import './data_model.dart';
import './geopolitical_model.dart';

class Data {
  final List<GeopoliticalModel> zones = [
    // list of per capital share of water per geopolitical zone
    GeopoliticalModel(9, '\nNational'),
    GeopoliticalModel(11, 'North\n Central'),
    GeopoliticalModel(10, 'North\n East'),
    GeopoliticalModel(7, 'North\n West'),
    GeopoliticalModel(8, 'South\n East'),
    GeopoliticalModel(11, 'South\n South'),
    GeopoliticalModel(8, 'South\n West'),
    //GeopoliticalModel(9, 'National'),
  ];

  final List<DataModel> statistics = [
    DataModel('Lagos', 96),
    DataModel('Jigawa', 92),
    DataModel('Imo', 90),
    DataModel('Anambra', 87),
    DataModel('Fct, Abuja', 87),
    DataModel('Zamfara', 86),
    DataModel('Oyo', 85),
    DataModel('Niger', 83),
    DataModel('Rivers', 79),
    DataModel('Nasarawa', 79),
    DataModel('Ekiti', 78),
    DataModel('Katsina', 77),
    DataModel('Abia', 76),
    DataModel('Borno', 76),
    DataModel('Osun', 76),
    DataModel('Ogun', 76),
    DataModel('Edo', 74),
    DataModel('Ondo', 73),
    DataModel('Enugu', 72),
    DataModel('Kwara', 70),
    DataModel('Delta', 69),
    DataModel('Kano', 67),
    DataModel('Yobe', 67),
    DataModel('Akwa Ibom', 66),
    DataModel('Bauchi', 62),
    DataModel('Plateau', 58),
    DataModel('Kaduna', 56),
    DataModel('Kogi', 55),
    DataModel('Adamawa', 53),
    DataModel('Ebonyi', 52),
    DataModel('Cross River', 51),
    DataModel('Bayelsa', 49),
    DataModel('Benue', 43),
    DataModel('Gombe', 42),
    DataModel('Kebbi', 39),
    DataModel('Sokoto', 38),
    DataModel('Taraba', 36),
  ];

  final pieChartDataMap = {
    'Sufficient': 18.81,
    'Suitable': 7.92,
    'Streched': 13.86,
    'Stressed': 26.73,
    'Snapped': 32.67,
  };
}
