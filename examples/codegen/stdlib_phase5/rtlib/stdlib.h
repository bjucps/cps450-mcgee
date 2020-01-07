
// These structs duplicate the layout of the CharNode and String Floyd classes 
// in stdlib.floyd, using the runtime organization presented in class. If your
// class organization differs, you will have to adjust these.

struct CharNode {
  int reserved1, reserved2;
  int ch;
  struct CharNode *next;
};

struct String {
  int reserved1, reserved2;
  struct CharNode *list;
};

struct String *string_fromlit(char *);
  