import 'package:flowtech_crm/classes/project_class.dart';
import 'package:flutter/material.dart';

enum FieldType { string, bool, date }

class ProjectsProvider with ChangeNotifier {
  Project _projectData;

  ProjectsProvider(this._projectData);

  Project get projectData => _projectData;

  final List<Project> _projectsList = [
  Project(
    id: 'PRJ-1',
    projectRefNo: 'Project 1 Ref No',
    clientContractor: 'Client A',
    poLoiDate: DateTime.now().subtract(Duration(days: 10)),
    poValue: 100000,
    deliveryTime: '30 days',
    deliveryPlace: 'Location A',
    shipmentMeans: 'Truck',
    partialShipment: false,
    advancedPaymentDateValue: DateTime.now().subtract(Duration(days: 5)),
    advancedPaymentValue: 20000,
    interimPayments: null, // Can be a list of dummy `DateTime` for payments
    balancePayment2DateValue: DateTime.now().subtract(Duration(days: 2)),
    balancePayment2Value: 10000,
    balancePaymentValueDate: DateTime.now().add(Duration(days: 5)),
    balancePaymentValue: 20000,
    retentionValueDate: DateTime.now().add(Duration(days: 15)),
    retentionValue: 5000,
    apgType: 'Performance Guarantee',
    apgSubmissionDate: DateTime.now().subtract(Duration(days: 15)),
    pbgType: 'Advance Payment Guarantee',
    pbgSubmissionDate: DateTime.now().subtract(Duration(days: 10)),
    piSubmissionForAdPayment: true,
    projectStartingDate: DateTime.now().subtract(Duration(days: 40)),
    komDate: DateTime.now().subtract(Duration(days: 20)),
    pimDate: DateTime.now().subtract(Duration(days: 15)),
    deliveryTimeAsPerTs: DateTime.now().add(Duration(days: 20)),
    plannedDateForDocumentsApproval: DateTime.now().add(Duration(days: 5)),
    dataSheetValveListApprovalDate: DateTime.now().subtract(Duration(days: 2)),
    drawingsApprovalDate: DateTime.now().subtract(Duration(days: 5)),
    itpApprovalDate: DateTime.now().subtract(Duration(days: 10)),
    manufacturingStartDate: DateTime.now().subtract(Duration(days: 30)),
    progressReportCutoffDate: DateTime.now().add(Duration(days: 5)),
    inspectionPlace: 'Factory A',
    materialTest: true,
    hydroTest: true,
    visualAndDimensional: true,
    seatLeakageTest: true,
    functionalTest: true,
    cvTest: true,
    inStatus: 'In Progress',
    inDates: null, // Can be a list of dummy `DateTime` for inspection dates
    finalBookIndexSubmissionDate: DateTime.now().add(Duration(days: 10)),
    materialDispatch: true,
  ),
  // Add more projects with similar data, adjusting values as needed
];

  List<Project> get projectsList {
    return [..._projectsList];
  }

  void updateProject(String field, dynamic value) {
  switch (field) {
    case 'projectRefNo':
      _projectData = _projectData.copyWith(projectRefNo: value as String);
      break;
    case 'clientContractor':
      _projectData = _projectData.copyWith(clientContractor: value as String);
      break;
    case 'poLoiDate':
      _projectData = _projectData.copyWith(poLoiDate: value as DateTime);
      break;
    case 'poValue':
      _projectData = _projectData.copyWith(poValue: value as int);
      break;
    case 'deliveryTime':
      _projectData = _projectData.copyWith(deliveryTime: value as String);
      break;
    case 'deliveryPlace':
      _projectData = _projectData.copyWith(deliveryPlace: value as String);
      break;
    case 'shipmentMeans':
      _projectData = _projectData.copyWith(shipmentMeans: value as String);
      break;
    case 'partialShipment':
      _projectData = _projectData.copyWith(partialShipment: value as bool);
      break;
    case 'advancedPaymentDateValue':
      _projectData = _projectData.copyWith(advancedPaymentDateValue: value as DateTime);
      break;
    case 'advancedPaymentValue':
      _projectData = _projectData.copyWith(advancedPaymentValue: value as int);
      break;
    case 'interimPayments':
      // Handle interim payments as a list of DateTime objects
      _projectData = _projectData.copyWith(interimPayments: value as DateTime);
      break;
    case 'balancePayment2DateValue':
      _projectData = _projectData.copyWith(balancePayment2DateValue: value as DateTime);
      break;
    case 'balancePayment2Value':
      _projectData = _projectData.copyWith(balancePayment2Value: value as int);
      break;
    case 'balancePaymentValueDate':
      _projectData = _projectData.copyWith(balancePaymentValueDate: value as DateTime);
      break;
    case 'balancePaymentValue':
      _projectData = _projectData.copyWith(balancePaymentValue: value as int);
      break;
    case 'retentionValueDate':
      _projectData = _projectData.copyWith(retentionValueDate: value as DateTime);
      break;
    case 'retentionValue':
      _projectData = _projectData.copyWith(retentionValue: value as int);
      break;
    case 'apgType':
      _projectData = _projectData.copyWith(apgType: value as String);
      break;
    case 'apgSubmissionDate':
      _projectData = _projectData.copyWith(apgSubmissionDate: value as DateTime);
      break;
    case 'pbgType':
      _projectData = _projectData.copyWith(pbgType: value as String);
      break;
    case 'pbgSubmissionDate':
      _projectData = _projectData.copyWith(pbgSubmissionDate: value as DateTime);
      break;
    case 'piSubmissionForAdPayment':
      _projectData = _projectData.copyWith(piSubmissionForAdPayment: value as bool);
      break;
    case 'projectStartingDate':
      _projectData = _projectData.copyWith(projectStartingDate: value as DateTime);
      break;
    case 'komDate':
      _projectData = _projectData.copyWith(komDate: value as DateTime);
      break;
    case 'pimDate':
      _projectData = _projectData.copyWith(pimDate: value as DateTime);
      break;
    case 'deliveryTimeAsPerTs':
      _projectData = _projectData.copyWith(deliveryTimeAsPerTs: value as DateTime);
      break;
    case 'plannedDateForDocumentsApproval':
      _projectData = _projectData.copyWith(plannedDateForDocumentsApproval: value as DateTime);
      break;
    case 'dataSheetValveListApprovalDate':
      _projectData = _projectData.copyWith(dataSheetValveListApprovalDate: value as DateTime);
      break;
    case 'drawingsApprovalDate':
      _projectData = _projectData.copyWith(drawingsApprovalDate: value as DateTime);
      break;
    case 'itpApprovalDate':
      _projectData = _projectData.copyWith(itpApprovalDate: value as DateTime);
      break;
    case 'manufacturingStartDate':
      _projectData = _projectData.copyWith(manufacturingStartDate: value as DateTime);
      break;
    case 'progressReportCutoffDate':
      _projectData = _projectData.copyWith(progressReportCutoffDate: value as DateTime);
      break;
    case 'inspectionPlace':
      _projectData = _projectData.copyWith(inspectionPlace: value as String);
      break;
    case 'materialTest':
      _projectData = _projectData.copyWith(materialTest: value as bool);
      break;
    case 'hydroTest':
      _projectData = _projectData.copyWith(hydroTest: value as bool);
      break;
    case 'visualAndDimensional':
      _projectData = _projectData.copyWith(visualAndDimensional: value as bool);
      break;
    case 'seatLeakageTest':
      _projectData = _projectData.copyWith(seatLeakageTest: value as bool);
      break;
    case 'functionalTest':
      _projectData = _projectData.copyWith(functionalTest: value as bool);
      break;
    case 'cvTest':
      _projectData = _projectData.copyWith(cvTest: value as bool);
      break;
    case 'inStatus':
      _projectData = _projectData.copyWith(inStatus: value as String);
      break;
    case 'inDates':
      // Handle inDates as a list of DateTime objects
      _projectData = _projectData.copyWith(inDates: value as DateTime);
      break;
    case 'finalBookIndexSubmissionDate':
      _projectData = _projectData.copyWith(finalBookIndexSubmissionDate: value as DateTime);
      break;
    case 'materialDispatch':
      _projectData = _projectData.copyWith(materialDispatch: value as bool);
      break;
    default:
      throw Exception('Invalid field name: $field');
  }
  notifyListeners(); // Notify listeners when a field is updated
}

  Future<void> addProject({
    required id,
    required clientName,
    required description,
    required createdAt,
    required updatedAt,
    required endedAt,
    required finalBookSubmission,
    required materialTest,
    required hydroTest,
    required seatLeakageTest,
    required functionalTest,
    required cvTest,
    required komDate,
    required pimDate,
    required apgSubmitDate,
    required advancedPaymentDate,
    required manufactutingStartDate,
    required progressReportCutoffDate,
    required inceptionPlace,
    required deliveryPlace,
    required deliveryDate,
    required deliveryTime,
  }) async {}

  Project getProjectById(String id) {
    return projectsList.firstWhere((project) => project.id == id);
  }
}
