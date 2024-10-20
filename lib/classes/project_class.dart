// ignore_for_file: public_member_api_docs, sort_constructors_first
class Project {
  // Project details
  final String? id;
  final String? projectRefNo; // Use final for project identifier
  final String? clientContractor;
  final DateTime? poLoiDate;
  final int? poValue;

  // Delivery details
  final String? deliveryTime;
  final String? deliveryPlace;
  final String? shipmentMeans;
  final bool? partialShipment;

  // Payment details
  final DateTime? advancedPaymentDateValue; // nullable for optional date 
  final int? advancedPaymentValue; // nullable for optional amount
  final DateTime? interimPayments; // List for multiple payments
  final DateTime? balancePayment2DateValue;
  final int? balancePayment2Value;
  final DateTime? balancePaymentValueDate;
  final int? balancePaymentValue;
  final DateTime? retentionValueDate;
  final int? retentionValue;

  // Guarantee details
  final String? apgType;
  final DateTime? apgSubmissionDate;
  final String? pbgType;
  final DateTime? pbgSubmissionDate;

  // Submission details
  final bool? piSubmissionForAdPayment;

  // Project milestones
  final DateTime? projectStartingDate;
  final DateTime? komDate;
  final DateTime? pimDate;
  final DateTime? deliveryTimeAsPerTs;
  final DateTime? plannedDateForDocumentsApproval;
  final DateTime? dataSheetValveListApprovalDate;
  final DateTime? drawingsApprovalDate;
  final DateTime? itpApprovalDate;
  final DateTime? manufacturingStartDate;
  final DateTime? progressReportCutoffDate;

  // Inspection details
  final String? inspectionPlace;

  // Inspection types (consider using an enum here)
  final bool? materialTest;
  final bool? hydroTest;
  final bool? visualAndDimensional;
  final bool? seatLeakageTest;
  final bool? functionalTest;
  final bool? cvTest;

  // Inspection status and dates
  final String? inStatus;
  final DateTime? inDates; // List of nullable dates

  // Final book details
  final DateTime? finalBookIndexSubmissionDate;

  // Material dispatch
  final bool? materialDispatch;

  Project({
   this.id,
   this.projectRefNo,
   this.clientContractor,
   this.poLoiDate,
   this.poValue,
   this.deliveryTime,
   this.deliveryPlace,
   this.shipmentMeans,
   this.partialShipment,
   this.advancedPaymentDateValue,
   this.advancedPaymentValue,
   this.interimPayments,
   this.balancePayment2DateValue,
   this.balancePayment2Value,
   this.balancePaymentValueDate,
   this.balancePaymentValue,
   this.retentionValueDate,
   this.retentionValue,
   this.apgType,
   this.apgSubmissionDate,
   this.pbgType,
   this.pbgSubmissionDate,
   this.piSubmissionForAdPayment,
   this.projectStartingDate,
   this.komDate,
   this.pimDate,
   this.deliveryTimeAsPerTs,
   this.plannedDateForDocumentsApproval,
   this.dataSheetValveListApprovalDate,
   this.drawingsApprovalDate,
   this.itpApprovalDate,
   this.manufacturingStartDate,
   this.progressReportCutoffDate,
   this.inspectionPlace,
   this.materialTest,
   this.hydroTest,
   this.visualAndDimensional,
   this.seatLeakageTest,
   this.functionalTest,
   this.cvTest,
   this.inStatus,
   this.inDates,
   this.finalBookIndexSubmissionDate,
   this.materialDispatch,
  });

  // copyWith method (similar to the original)
  Project copyWith({
    String? id,
    String? projectRefNo,
    String? clientContractor,
    DateTime? poLoiDate,
    int? poValue,
    String? deliveryTime,
    String? deliveryPlace,
    String? shipmentMeans,
    bool? partialShipment,
    DateTime? advancedPaymentDateValue,
    int? advancedPaymentValue,
    DateTime? interimPayments,
    DateTime? balancePayment2DateValue,
    int? balancePayment2Value,
    DateTime? balancePaymentValueDate,
    int? balancePaymentValue,
    DateTime? retentionValueDate,
    int? retentionValue,
    String? apgType,
    DateTime? apgSubmissionDate,
    String? pbgType,
    DateTime? pbgSubmissionDate,
    bool? piSubmissionForAdPayment,
    DateTime? projectStartingDate,
    DateTime? komDate,
    DateTime? pimDate,
    DateTime? deliveryTimeAsPerTs,
    DateTime? plannedDateForDocumentsApproval,
    DateTime? dataSheetValveListApprovalDate,
    DateTime? drawingsApprovalDate,
    DateTime? itpApprovalDate,
    DateTime? manufacturingStartDate,
    DateTime? progressReportCutoffDate,
    String? inspectionPlace,
    bool? materialTest,
    bool? hydroTest,
    bool? visualAndDimensional,
    bool? seatLeakageTest,
    bool? functionalTest,
    bool? cvTest,
    String? inStatus,
    DateTime? inDates,
    DateTime? finalBookIndexSubmissionDate,
    bool? materialDispatch,
  }) {
    return Project(
      id: id ?? this.id,
      projectRefNo: projectRefNo ?? this.projectRefNo,
      clientContractor: clientContractor ?? this.clientContractor,
      poLoiDate: poLoiDate ?? this.poLoiDate,
      poValue: poValue ?? this.poValue,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      deliveryPlace: deliveryPlace ?? this.deliveryPlace,
      shipmentMeans: shipmentMeans ?? this.shipmentMeans,
      partialShipment: partialShipment ?? this.partialShipment,
      advancedPaymentDateValue: advancedPaymentDateValue ?? this.advancedPaymentDateValue,
      advancedPaymentValue: advancedPaymentValue ?? this.advancedPaymentValue,
      interimPayments: interimPayments ?? this.interimPayments,
      balancePayment2DateValue: balancePayment2DateValue ?? this.balancePayment2DateValue,
      balancePayment2Value: balancePayment2Value ?? this.balancePayment2Value,
      balancePaymentValueDate: balancePaymentValueDate ?? this.balancePaymentValueDate,
      balancePaymentValue: balancePaymentValue ?? this.balancePaymentValue,
      retentionValueDate: retentionValueDate ?? this.retentionValueDate,
      retentionValue: retentionValue ?? this.retentionValue,
      apgType: apgType ?? this.apgType,
      apgSubmissionDate: apgSubmissionDate ?? this.apgSubmissionDate,
      pbgType: pbgType ?? this.pbgType,
      pbgSubmissionDate: pbgSubmissionDate ?? this.pbgSubmissionDate,
      piSubmissionForAdPayment: piSubmissionForAdPayment ?? this.piSubmissionForAdPayment,
      projectStartingDate: projectStartingDate ?? this.projectStartingDate,
      komDate: komDate ?? this.komDate,
      pimDate: pimDate ?? this.pimDate,
      deliveryTimeAsPerTs: deliveryTimeAsPerTs ?? this.deliveryTimeAsPerTs,
      plannedDateForDocumentsApproval: plannedDateForDocumentsApproval ?? this.plannedDateForDocumentsApproval,
      dataSheetValveListApprovalDate: dataSheetValveListApprovalDate ?? this.dataSheetValveListApprovalDate,
      drawingsApprovalDate: drawingsApprovalDate ?? this.drawingsApprovalDate,
      itpApprovalDate: itpApprovalDate ?? this.itpApprovalDate,
      manufacturingStartDate: manufacturingStartDate ?? this.manufacturingStartDate,
      progressReportCutoffDate: progressReportCutoffDate ?? this.progressReportCutoffDate,
      inspectionPlace: inspectionPlace ?? this.inspectionPlace,
      materialTest: materialTest ?? this.materialTest,
      hydroTest: hydroTest ?? this.hydroTest,
      visualAndDimensional: visualAndDimensional ?? this.visualAndDimensional,
      seatLeakageTest: seatLeakageTest ?? this.seatLeakageTest,
      functionalTest: functionalTest ?? this.functionalTest,
      cvTest: cvTest ?? this.cvTest,
      inStatus: inStatus ?? this.inStatus,
      inDates: inDates ?? this.inDates,
      finalBookIndexSubmissionDate: finalBookIndexSubmissionDate ?? this.finalBookIndexSubmissionDate,
      materialDispatch: materialDispatch ?? this.materialDispatch,
    );
  }
  
  @override
bool operator ==(Object other) =>
  identical(this, other) ||
  other is Project &&
  runtimeType == other.runtimeType &&
  id == other.id &&
  projectRefNo == other.projectRefNo &&
  clientContractor == other.clientContractor &&
  poLoiDate == other.poLoiDate &&
  poValue == other.poValue &&
  deliveryTime == other.deliveryTime &&
  deliveryPlace == other.deliveryPlace &&
  shipmentMeans == other.shipmentMeans &&
  partialShipment == other.partialShipment &&
  advancedPaymentDateValue == other.advancedPaymentDateValue &&
  advancedPaymentValue == other.advancedPaymentValue &&
  interimPayments == other.interimPayments &&
  balancePayment2DateValue == other.balancePayment2DateValue &&
  balancePayment2Value == other.balancePayment2Value &&
  balancePaymentValueDate == other.balancePaymentValueDate &&
  balancePaymentValue == other.balancePaymentValue &&
  retentionValueDate == other.retentionValueDate &&
  retentionValue == other.retentionValue &&
  apgType == other.apgType &&
  apgSubmissionDate == other.apgSubmissionDate &&
  pbgType == other.pbgType &&
  pbgSubmissionDate == other.pbgSubmissionDate &&
  piSubmissionForAdPayment == other.piSubmissionForAdPayment &&
  projectStartingDate == other.projectStartingDate &&
  komDate == other.komDate &&
  pimDate == other.pimDate &&
  deliveryTimeAsPerTs == other.deliveryTimeAsPerTs &&
  plannedDateForDocumentsApproval == other.plannedDateForDocumentsApproval &&
  dataSheetValveListApprovalDate == other.dataSheetValveListApprovalDate &&
  drawingsApprovalDate == other.drawingsApprovalDate &&
  itpApprovalDate == other.itpApprovalDate &&
  manufacturingStartDate == other.manufacturingStartDate &&
  progressReportCutoffDate == other.progressReportCutoffDate &&
  inspectionPlace == other.inspectionPlace &&
  materialTest == other.materialTest &&
  hydroTest == other.hydroTest &&
  visualAndDimensional == other.visualAndDimensional &&
  seatLeakageTest == other.seatLeakageTest &&
  functionalTest == other.functionalTest &&
  cvTest == other.cvTest &&
  inStatus == other.inStatus &&
  inDates == other.inDates &&
  finalBookIndexSubmissionDate == other.finalBookIndexSubmissionDate &&
  materialDispatch == other.materialDispatch;
  @override
int get hashCode =>
  id.hashCode ^
  projectRefNo.hashCode ^
  clientContractor.hashCode ^
  poLoiDate.hashCode ^
  poValue.hashCode ^
  deliveryTime.hashCode ^
  deliveryPlace.hashCode ^
  shipmentMeans.hashCode ^
  partialShipment.hashCode ^
  advancedPaymentDateValue.hashCode ^
  advancedPaymentValue.hashCode ^
  interimPayments.hashCode ^
  balancePayment2DateValue.hashCode ^
  balancePayment2Value.hashCode ^
  balancePaymentValueDate.hashCode ^
  balancePaymentValue.hashCode ^
  retentionValueDate.hashCode ^
  retentionValue.hashCode ^
  apgType.hashCode ^
  apgSubmissionDate.hashCode ^
  pbgType.hashCode ^
  pbgSubmissionDate.hashCode ^
  piSubmissionForAdPayment.hashCode ^
  projectStartingDate.hashCode ^
  komDate.hashCode ^
  pimDate.hashCode ^
  deliveryTimeAsPerTs.hashCode ^
  plannedDateForDocumentsApproval.hashCode ^
  dataSheetValveListApprovalDate.hashCode ^
  drawingsApprovalDate.hashCode ^
  itpApprovalDate.hashCode ^
  manufacturingStartDate.hashCode ^
  progressReportCutoffDate.hashCode ^
  inspectionPlace.hashCode ^
  materialTest.hashCode ^
  hydroTest.hashCode ^
  visualAndDimensional.hashCode ^
  seatLeakageTest.hashCode ^
  functionalTest.hashCode ^
  cvTest.hashCode ^
  inStatus.hashCode ^
  inDates.hashCode ^
  finalBookIndexSubmissionDate.hashCode ^
  materialDispatch.hashCode;
  
  
  
  
  
  
  
  
  
  
  
  
  }