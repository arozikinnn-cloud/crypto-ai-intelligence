import 'package:flutter/material.dart';

void main() => runApp(const CryptoAIApp());

class CryptoAIApp extends StatelessWidget {
  const CryptoAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFF0B1020);
    return MaterialApp(
      title: 'Crypto AI Intelligence',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5B8CFF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto AI Intelligence'),
        backgroundColor: const Color(0xFF111A2E),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('MARKET INTELLIGENCE',
                      style: TextStyle(fontSize: 12, letterSpacing: 1.2)),
                  const SizedBox(height: 10),
                  Text('Foundation ready',
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  const Text(
                    'This is the Phase 1 interface scaffold. Live market data '
                    'and AI signals are not connected yet.',
                  ),
                  const SizedBox(height: 12),
                  const Chip(
                    avatar: Icon(Icons.info_outline, size: 16),
                    label: Text('Analysis only • No auto trading'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const _FeatureTile(
            icon: Icons.radar,
            title: 'Market Scanner',
            subtitle: 'Planned — live market feed not connected',
          ),
          const _FeatureTile(
            icon: Icons.insights,
            title: 'AI Signals',
            subtitle: 'Planned — no signals are generated yet',
          ),
          const _FeatureTile(
            icon: Icons.show_chart,
            title: 'Market Analysis',
            subtitle: 'Planned — chart data integration comes later',
          ),
          const _FeatureTile(
            icon: Icons.notifications_active_outlined,
            title: 'Notifications',
            subtitle: 'Planned — push notification setup comes later',
          ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  const _FeatureTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.lock_clock, size: 18),
      ),
    );
  }
}
