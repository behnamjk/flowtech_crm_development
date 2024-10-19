import 'package:flowtech_crm/classes/project_class.dart';
import 'package:flutter/material.dart';


enum FieldType { string, bool, date }
class ProjectsProvider with ChangeNotifier {


Project _projectData;

ProjectsProvider(this._projectData);

Project get projectData => _projectData;

List<Project> _projectsList = [
Project(
  projectTitle: 'Project A',
    id: 'P001',
    author: 'Azade Qasemi',
    clientName: 'Client A',
    description: 'Project description A',
    createdAt: '2024-01-15',
    updatedAt: '2024-02-15',
    endedAt: '2024-09-10',
    finalBookSubmission: true,
    materialTest: true,
    hydroTest: false,
    seatLeakageTest: true,
    functionalTest: false,
    cvTest: true,
    komDate: DateTime.now(),
    pimDate: DateTime.now(),
    apgSubmitDate: DateTime.now(),
    advancedPaymentDate: DateTime.now(),
    manufactutingStartDate:DateTime.now(),
    inceptionPlace: 'Factory C',
    deliveryPlace: 'Warehouse Z',
    deliveryDate: DateTime.now(),
  ),
  Project(
    projectTitle: 'Project B',
    id: 'P002',
    author: 'Farzane Karim',
    clientName: 'Client B',
    description: 'Project description B',
    createdAt: '2024-02-20',
    updatedAt: '2024-03-22',
    endedAt: '2024-09-20',
    finalBookSubmission: false,
    materialTest: true,
    hydroTest: true,
    seatLeakageTest: false,
    functionalTest: true,
    cvTest: false,
    komDate: DateTime.now(),
    pimDate: DateTime.now(),
    apgSubmitDate: DateTime.now(),
    advancedPaymentDate: DateTime.now(),
    manufactutingStartDate:DateTime.now(),
    inceptionPlace: 'Factory C',
    deliveryPlace: 'Warehouse Z',
    deliveryDate: DateTime.now(),
  ),
  Project(
    projectTitle: 'Project C',
    id: 'P003',
    author: 'Armin Morshed',
    clientName: 'Client C',
    description: 'Project description C',
    createdAt: '2024-03-10',
    updatedAt: '2024-04-05',
    endedAt: '2024-10-01',
    finalBookSubmission: true,
    materialTest: false,
    hydroTest: true,
    seatLeakageTest: true,
    functionalTest: true,
    cvTest: true,
    komDate: DateTime.now(),
    pimDate: DateTime.now(),
    apgSubmitDate: DateTime.now(),
    advancedPaymentDate: DateTime.now(),
    manufactutingStartDate:DateTime.now(),
    inceptionPlace: 'Factory C',
    deliveryPlace: 'Warehouse Z',
    deliveryDate: DateTime.now(),
   
  ),
  
];


 List<Project> get projectsList {
    return [..._projectsList];
  }

void updateProject(String field, dynamic value) {
    switch (field) {
       case 'projectTitle':
        _projectData = _projectData.copyWith(projectTitle: value as String);
        break;
      case 'id':
        _projectData = _projectData.copyWith(id: value as String);
        break;
      case 'author':
        _projectData = _projectData.copyWith(author: value as String);
        break;
      case 'clientName':
        _projectData = _projectData.copyWith(clientName: value as String);
        break;
      case 'description':
        _projectData = _projectData.copyWith(description: value as String);
        break;
      case 'createdAt':
        _projectData = _projectData.copyWith(createdAt: value as String);
        break;
      case 'updatedAt':
        _projectData = _projectData.copyWith(updatedAt: value as String);
        break;
      case 'endedAt':
        _projectData = _projectData.copyWith(endedAt: value as String);
        break;
      case 'finalBookSubmission':
        _projectData = _projectData.copyWith(finalBookSubmission: value as bool);
        break;
      case 'materialTest':
        _projectData = _projectData.copyWith(materialTest: value as bool);
        break;
      case 'hydroTest':
        _projectData = _projectData.copyWith(hydroTest: value as bool);
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
      case 'komDate':
        _projectData = _projectData.copyWith(komDate: value as DateTime);
        break;
      case 'pimDate':
        _projectData = _projectData.copyWith(pimDate: value as DateTime);
        break;
      case 'apgSubmitDate':
        _projectData = _projectData.copyWith(apgSubmitDate: value as DateTime);
        break;
      case 'advancedPaymentDate':
        _projectData = _projectData.copyWith(advancedPaymentDate: value as DateTime);
        break;
      case 'manufactutingStartDate':
        _projectData = _projectData.copyWith(manufactutingStartDate: value as DateTime);
        break;
      case 'progressReportCutoffDate':
        _projectData = _projectData.copyWith(progressReportCutoffDate: value as DateTime);
        break;
      case 'inceptionPlace':
        _projectData = _projectData.copyWith(inceptionPlace: value as String);
        break;
      case 'deliveryPlace':
        _projectData = _projectData.copyWith(deliveryPlace: value as String);
        break;
      case 'deliveryDate':
        _projectData = _projectData.copyWith(deliveryDate: value as DateTime);
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








})async {






}


  Project getProjectById(String id) {
    return projectsList.firstWhere((project) => project.id == id);
  }


}