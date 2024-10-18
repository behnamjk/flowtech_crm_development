import 'package:flowtech_crm/classes/project_class.dart';
import 'package:flutter/material.dart';

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
    komDate: '2024-02-01',
    pimDate: '2024-03-01',
    apgSubmitDate: '2024-03-15',
    advancedPaymentDate: '2024-01-25',
    manufactutingStartDate: '2024-04-01',
    progressReportCutoffDate: '2024-06-15',
    inceptionPlace: 'Factory A',
    deliveryPlace: 'Warehouse X',
    deliveryDate: '2024-09-15',
    deliveryTime: '09:00 AM',
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
    komDate: '2024-02-28',
    pimDate: '2024-03-28',
    apgSubmitDate: '2024-04-10',
    advancedPaymentDate: '2024-02-22',
    manufactutingStartDate: '2024-04-20',
    progressReportCutoffDate: '2024-07-01',
    inceptionPlace: 'Factory B',
    deliveryPlace: 'Warehouse Y',
    deliveryDate: '2024-10-01',
    deliveryTime: '11:00 AM',
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
    komDate: '2024-03-15',
    pimDate: '2024-04-01',
    apgSubmitDate: '2024-04-20',
    advancedPaymentDate: '2024-03-12',
    manufactutingStartDate: '2024-05-01',
    progressReportCutoffDate: '2024-08-15',
    inceptionPlace: 'Factory C',
    deliveryPlace: 'Warehouse Z',
    deliveryDate: '2024-11-01',
    deliveryTime: '03:00 PM',
  ),
  
];


 List<Project> get projectsList {
    return [..._projectsList];
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





}