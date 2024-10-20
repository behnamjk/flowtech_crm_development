import 'package:flutter/material.dart';
import 'package:flowtech_crm/providers/projects_provider.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class ProjectDetailsPage extends StatelessWidget {
  final String projectId;

  const ProjectDetailsPage({super.key, required this.projectId});

  @override
  Widget build(BuildContext context) {
    final project =
        Provider.of<ProjectsProvider>(context).getProjectById(projectId);
    return Scaffold(
      appBar: AppBar(
        title: Text(project.clientContractor!),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Implement edit functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Title
            Text(
              project.id!,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
              ),
            ),
            SizedBox(height: 8),

            // Project Description
            Text(
              project.apgType!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey[600],
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),

            // Project Details Card
            _buildDetailsCard(context, project.id!),

            SizedBox(height: 20),

            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.check_circle_outline),
                  label: Text('Approve'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    // Approve action
                  },
                ),
                OutlinedButton.icon(
                  icon: Icon(Icons.cancel_outlined),
                  label: Text('Reject'),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    // Reject action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the project details card
  Widget _buildDetailsCard(BuildContext context, String id) {
    final project = Provider.of<ProjectsProvider>(context).getProjectById(id);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow(
              context,
              'Author',
              project.deliveryPlace!,
              Icons.person_outline,
            ),
            _buildDetailRow(
              context,
              'Client Name',
              project.clientContractor!,
              Icons.business,
            ),
            _buildDetailRow(
              context,
              'Created At',
              '${project.komDate}',
              Icons.calendar_today_outlined,
            ),
            _buildDetailRow(
              context,
              'Updated At',
              '${project.komDate}',
              Icons.update_outlined,
            ),
            _buildDetailRow(
              context,
              'Delivery Date',
              '${project.komDate}',
              Icons.delivery_dining_outlined,
            ),
            // Add more detail rows as needed
            ExpansionTile(
              title: Text('Testing Details'),
              leading: Icon(Icons.science_outlined),
              children: [
                _buildDetailRow(
                  context,
                  'Material Test',
                  project.materialTest.toString(),
                  Icons.check_circle_outline,
                ),
                _buildDetailRow(
                  context,
                  'Hydro Test',
                  project.hydroTest.toString(),
                  Icons.water_outlined,
                ),
                _buildDetailRow(
                  context,
                  'CV Test',
                  project.cvTest.toString(),
                  Icons.trending_up_outlined,
                ),
                _buildDetailRow(
                  context,
                  'Functional Test',
                  project.functionalTest.toString(),
                  Icons.engineering_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build rows for project details
  Widget _buildDetailRow(
      BuildContext context, String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).primaryColor),
          SizedBox(width: 8),
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey[800],
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
