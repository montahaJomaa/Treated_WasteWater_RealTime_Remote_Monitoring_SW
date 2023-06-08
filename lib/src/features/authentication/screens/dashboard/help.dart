import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'What is the purpose of this app?',
      answer:
          'The purpose of this app is to provide users with information and resources related to a specific topic.',
    ),
    FAQItem(
      question: 'How do I get started?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is pH measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is Conductivity measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is TSS measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is COD measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is DO measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is Chlorophyll measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is Chloride measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is Ammonium measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
    FAQItem(
      question: 'What is ORP measurement used for?',
      answer:
          'To get started, simply download and install the app from the app store.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        title: Text('FAQ'),
      ),
      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (context, index) => FAQItemWidget(faqItems[index]),
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

class FAQItemWidget extends StatefulWidget {
  final FAQItem faqItem;

  FAQItemWidget(this.faqItem);

  @override
  _FAQItemWidgetState createState() => _FAQItemWidgetState();
}

class _FAQItemWidgetState extends State<FAQItemWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(widget.faqItem.question),
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.faqItem.answer),
          ),
        ],
      ),
    );
  }
}
