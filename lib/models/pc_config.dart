import 'package:flutter/foundation.dart';

/// Represents a Computer configuration
class PcConfig {
  final String name;
  final String description;
  final String os;
  final String cpu;
  final String cpuCooler;
  final String motherboard;
  final String ram;
  final String gpu;
  final String storage;
  final String powerSupply;
  final String pcCase;
  final String pcCaseFan;

  PcConfig({
    @required this.name,
    this.description,
    this.os,
    this.cpu,
    this.cpuCooler,
    this.gpu,
    this.motherboard,
    this.pcCase,
    this.pcCaseFan,
    this.powerSupply,
    this.ram,
    this.storage,
  }) : assert(name != null);
}
