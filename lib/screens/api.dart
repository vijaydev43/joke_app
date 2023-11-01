class user {
  String setup;
  String delivery;

  user({required this.setup, required this.delivery});

  factory user.jsonfromMap(Map result) {
    return user(
      setup: result['setup'],
      delivery: result['delivery'],
    );
  }
}

