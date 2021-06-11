class SurveyModel {
  int id;
  String question;
  List<Answer> answer;

  SurveyModel({
    this.id,
    this.question,
    this.answer,
  });
}

class Answer {
  int id;
  String answer;

  Answer({this.id, this.answer});
}

List<SurveyModel> listSurvey = [
  SurveyModel(
    id: 1,
    question: 'Bạn sử dụng MXH nào ?',
    answer: [
      Answer(
        id: 0,
        answer: 'Facebook',
      ),
      Answer(
        id: 1,
        answer: 'Instagram',
      ),
      Answer(
        id: 2,
        answer: 'Tiktok',
      ),
      Answer(
        id: 3,
        answer: 'Twitter',
      ),
    ],
  ),
  SurveyModel(
    id: 2,
    question: 'Bạn sử dụng MXH nào ? 2',
    answer: [
      Answer(
        id: 0,
        answer: 'Facebook 2',
      ),
      Answer(
        id: 1,
        answer: 'Instagram 2',
      ),
      Answer(
        id: 2,
        answer: 'Tiktok 2',
      ),
      Answer(
        id: 3,
        answer: 'Twitter 2',
      ),
    ],
  ),
  SurveyModel(
    id: 3,
    question: 'Bạn sử dụng MXH nào ? 3',
    answer: [
      Answer(
        id: 0,
        answer: 'Facebook 3',
      ),
      Answer(
        id: 1,
        answer: 'Instagram 3',
      ),
      Answer(
        id: 2,
        answer: 'Tiktok 3',
      ),
      Answer(
        id: 3,
        answer: 'Twitter 3',
      ),
    ],
  ),
  SurveyModel(
    id: 4,
    question: 'Bạn sử dụng MXH nào ? 4',
    answer: [
      Answer(
        id: 0,
        answer: 'Facebook 4',
      ),
      Answer(
        id: 1,
        answer: 'Instagram 4',
      ),
      Answer(
        id: 2,
        answer: 'Tiktok 4',
      ),
      Answer(
        id: 3,
        answer: 'Twitter 4',
      ),
    ],
  ),
  SurveyModel(
    id: 5,
    question: 'Bạn sử dụng MXH nào ? 5',
    answer: [
      Answer(
        id: 0,
        answer: 'Facebook 5',
      ),
      Answer(
        id: 1,
        answer: 'Instagram 5',
      ),
      Answer(
        id: 2,
        answer: 'Tiktok 5',
      ),
      Answer(
        id: 3,
        answer: 'Twitter 5',
      ),
    ],
  ),
];
