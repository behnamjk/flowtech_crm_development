// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  String? id;
  String? author;
  String? projectTitle;
  String? clientName;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? endedAt;
  bool? finalBookSubmission;
  bool? materialTest;
  bool? hydroTest;
  bool? seatLeakageTest;
  bool? functionalTest;
  bool? cvTest;
  String? komDate;
  String? pimDate;
  String? apgSubmitDate;
  String? advancedPaymentDate;
  String? manufactutingStartDate;
  String? progressReportCutoffDate;
  String? inceptionPlace;
  String? deliveryPlace;
  String? deliveryDate;
  String? deliveryTime;

  Project({
    this.id,
    this.author,
    this.projectTitle,
    this.clientName,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.endedAt,
    this.finalBookSubmission,
    this.materialTest,
    this.hydroTest,
    this.seatLeakageTest,
    this.functionalTest,
    this.cvTest,
    this.komDate,
    this.pimDate,
    this.apgSubmitDate,
    this.advancedPaymentDate,
    this.manufactutingStartDate,
    this.progressReportCutoffDate,
    this.inceptionPlace,
    this.deliveryPlace,
    this.deliveryDate,
    this.deliveryTime,
  });

  // copyWith method
  Project copyWith({
    String? id,
    String? author,
    String? projectTitle,
    String? clientName,
    String? description,
    String? createdAt,
    String? updatedAt,
    String? endedAt,
    bool? finalBookSubmission,
    bool? materialTest,
    bool? hydroTest,
    bool? seatLeakageTest,
    bool? functionalTest,
    bool? cvTest,
    String? komDate,
    String? pimDate,
    String? apgSubmitDate,
    String? advancedPaymentDate,
    String? manufactutingStartDate,
    String? progressReportCutoffDate,
    String? inceptionPlace,
    String? deliveryPlace,
    String? deliveryDate,
    String? deliveryTime,
  }) {
    return Project(
      id: id ?? this.id,
      author: author ?? this.author,
      projectTitle: projectTitle ?? this.projectTitle,
      clientName: clientName ?? this.clientName,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      endedAt: endedAt ?? this.endedAt,
      finalBookSubmission: finalBookSubmission ?? this.finalBookSubmission,
      materialTest: materialTest ?? this.materialTest,
      hydroTest: hydroTest ?? this.hydroTest,
      seatLeakageTest: seatLeakageTest ?? this.seatLeakageTest,
      functionalTest: functionalTest ?? this.functionalTest,
      cvTest: cvTest ?? this.cvTest,
      komDate: komDate ?? this.komDate,
      pimDate: pimDate ?? this.pimDate,
      apgSubmitDate: apgSubmitDate ?? this.apgSubmitDate,
      advancedPaymentDate: advancedPaymentDate ?? this.advancedPaymentDate,
      manufactutingStartDate: manufactutingStartDate ?? this.manufactutingStartDate,
      progressReportCutoffDate: progressReportCutoffDate ?? this.progressReportCutoffDate,
      inceptionPlace: inceptionPlace ?? this.inceptionPlace,
      deliveryPlace: deliveryPlace ?? this.deliveryPlace,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Project &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          author == other.author &&
          projectTitle == other.projectTitle &&
          clientName == other.clientName &&
          description == other.description &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          endedAt == other.endedAt &&
          finalBookSubmission == other.finalBookSubmission &&
          materialTest == other.materialTest &&
          hydroTest == other.hydroTest &&
          seatLeakageTest == other.seatLeakageTest &&
          functionalTest == other.functionalTest &&
          cvTest == other.cvTest &&
          komDate == other.komDate &&
          pimDate == other.pimDate &&
          apgSubmitDate == other.apgSubmitDate &&
          advancedPaymentDate == other.advancedPaymentDate &&
          manufactutingStartDate == other.manufactutingStartDate &&
          progressReportCutoffDate == other.progressReportCutoffDate &&
          inceptionPlace == other.inceptionPlace &&
          deliveryPlace == other.deliveryPlace &&
          deliveryDate == other.deliveryDate &&
          deliveryTime == other.deliveryTime;

  @override
  int get hashCode =>
      id.hashCode ^
      author.hashCode ^
      projectTitle.hashCode ^
      clientName.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      endedAt.hashCode ^
      finalBookSubmission.hashCode ^
      materialTest.hashCode ^
      hydroTest.hashCode ^
      seatLeakageTest.hashCode ^
      functionalTest.hashCode ^
      cvTest.hashCode ^
      komDate.hashCode ^
      pimDate.hashCode ^
      apgSubmitDate.hashCode ^
      advancedPaymentDate.hashCode ^
      manufactutingStartDate.hashCode ^
      progressReportCutoffDate.hashCode ^
      inceptionPlace.hashCode ^
      deliveryPlace.hashCode ^
      deliveryDate.hashCode ^
      deliveryTime.hashCode;
}
