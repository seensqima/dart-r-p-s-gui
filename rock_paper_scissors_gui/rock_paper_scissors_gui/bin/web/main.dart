import 'dart:html';
import 'dart:math';
void main() {
  final object = classname();
  final ai_display = querySelector('#ai_move_display');
  final player_display = querySelector('#player_move_display');
  final rock_icon = querySelector('.rock');
  final paper_icon = querySelector('.paper');
  final scissor_icon = querySelector('.scissor');
  querySelector('#rock')?.onClick.listen((_) {
    final ai_move = object.Method();
    if (ai_move == 'r') {
      player_display?.text = 'You : ${rock_icon?.text}';
      ai_display?.text = 'AI : ${rock_icon?.text}';
      object.Draw();
    } else if (ai_move == 's') {
      player_display?.text = 'You : ${rock_icon?.text}';
      ai_display?.text = 'AI : ${scissor_icon?.text}';
      object.Win();
    } else {
      player_display?.text = 'You : ${rock_icon?.text}';
      ai_display?.text = 'AI : ${paper_icon?.text}';
      object.Lose();
    }
  });
  querySelector('#paper')?.onClick.listen((_) {
    final ai_move = object.Method();
    if (ai_move == 'p') {
      player_display?.text = 'You : ${paper_icon?.text}';
      ai_display?.text = 'AI : ${paper_icon?.text}';
      object.Draw();
    } else if (ai_move == 'r') {
      player_display?.text = 'You : ${paper_icon?.text}';
      ai_display?.text = 'AI : ${rock_icon?.text}';
      object.Win();
    } else {
      player_display?.text = 'You : ${paper_icon?.text}';
      ai_display?.text = 'AI : ${scissor_icon?.text}';
      object.Lose();
    }
  });
  querySelector('#scissor')?.onClick.listen((_) {
    final ai_move = object.Method();
    if (ai_move == 's') {
      player_display?.text = 'You : ${scissor_icon?.text}';
      ai_display?.text = 'AI : ${scissor_icon?.text}';
      object.Win();
    } else if (ai_move == 'p') {
      player_display?.text = 'You : ${scissor_icon?.text}';
      ai_display?.text = 'AI : ${paper_icon?.text}';
      object.Draw();
    } else {
      player_display?.text = 'You : ${scissor_icon?.text}';
      ai_display?.text = 'AI : ${rock_icon?.text}';
      object.Lose();
    }
  });
}
class classname {
  final screen = querySelector('#output');
  void Lose() {
    screen?.text = 'You Lose!';
    screen?.style.color = 'red';
  }
  void Draw() {
    screen?.text = 'You Win!';
    screen?.style.color = 'lime';
  }
  void Win() {
    screen?.text = 'Draw!';
    screen?.style.color = 'gold';
  }
  String Method() {
    final random_number = Random();
    final ai_random_move = random_number.nextInt(3) + 1;
    var ai_move = '';
    if (ai_random_move == 1) {
      ai_move = 'r';
    } else if (ai_random_move == 2) {
      ai_move = 'p';
    } else if (ai_random_move == 3) {
      ai_move = 's';
    }
    return ai_move;
  }
}