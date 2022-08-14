class QuestionModel {
  String question;
  List<String> optiosList;
  int answer;

  QuestionModel(this.question, this.optiosList, this.answer);
}

QuestionModel que1 = QuestionModel(
    "The Atomic clock is based on the periodic vibrations produced in the atom of which element?",
    ["Hydrogen", "Rubidium", "Cesium", "Barium"],
    2);

QuestionModel que2 = QuestionModel(
    "Which of the following is correct about the properties of Gravitational Forces?",
    [
      "They are the strongest forces in nature",
      "They observe inverse square law",
      "Both a and b",
      "None"
    ],
    1);

QuestionModel que3 = QuestionModel(
    "Which among the following provides potential energy to an object?",
    ["Its momentum", "It’s position", " It’s acceleration", "It’s shape"],
    1);

QuestionModel que4 = QuestionModel(
    "Which of the following is the largest practical unit of mass?",
    ["Slug", "a.m.u", "Hyperkg", "C.S.L"],
    3);
QuestionModel que5 = QuestionModel(
    "The work done in moving a body over a smooth inclined plane does not depend on which of the following?",
    [
      "mass of the body",
      "height of the inclined plane",
      "slope of the inclined plane",
      " All of the above"
    ],
    2);
