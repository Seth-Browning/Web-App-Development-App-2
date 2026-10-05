import 'package:adv_basics/models/quiz_question.dart';
import 'package:adv_basics/models/quiz.dart';

const questions = [];

const quizes = [
  Quiz(
    quizName: 'Learn Flutter',
    quizDescription: 'Learn the basics of the Flutter UI framework.',
    questions: [
      QuizQuestion('What are the main building blocks of Flutter UIs?', [
        'Widgets',
        'Components',
        'Blocks',
        'Functions',
      ]),
      QuizQuestion('How are Flutter UIs built?', [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android',
      ]),
      QuizQuestion('What\'s the purpose of a StatefulWidget?', [
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
      ]),
      QuizQuestion(
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
        [
          'StatelessWidget',
          'StatefulWidget',
          'Both are equally good',
          'None of the above',
        ],
      ),
      QuizQuestion('What happens if you change data in a StatelessWidget?', [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
      ]),
      QuizQuestion('How should you update data inside of StatefulWidgets?', [
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
      ]),
    ],
  ),
  Quiz(
    quizName: 'Programming Basics',
    quizDescription: 'Test your knowledge of programming basics.',
    questions: [
      QuizQuestion('How is code written?', [
        'Line by line',
        'Block by block',
        'Column by column',
      ]),
      QuizQuestion(
        'If you only want code to run when a condition is satisfied, which statement should you use?',
        [
          'If statement',
          'While statement',
          'Return statement',
          'Try statement',
        ],
      ),
      QuizQuestion('What is a container of information called?', [
        'Variable',
        'Class',
        'Method',
        'Argument',
      ]),
    ],
  ),
  Quiz(
    quizName: 'Boolean Logic',
    quizDescription: 'Review boolean logic.',
    questions: [
      QuizQuestion('When is the logical AND true?', [
        'When both inputs are TRUE',
        'When either input is TRUE',
        'When at least one input is FALSE',
        'AND is never TRUE',
      ]),
      QuizQuestion('When is the expression A+B FALSE?', [
        'When both A and B are FALSE',
        'When both A and B are TRUE',
        'When A and B are not the same',
        'Whenever A is TRUE'
      ]),
      QuizQuestion('Which expression is equivalent to (A+B)A?', [
        'A',
        'A+B',
        'B',
        '!(AB)'
      ]),
      QuizQuestion('What is the result of any boolean value OR\'ed with 1?', [
        '1',
        '0',
        'Cannot be determined'
      ])
    ],
  ),
];
