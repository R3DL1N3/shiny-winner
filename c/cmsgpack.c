#include <SWI-Prolog.h>

struct mp_buf
{ unsigned char *data;
  size_t size, free;
};

foreign_t mp_pack(term_t Term, term_t String)
{ return PL_unify_string_nchars(String, 9, "123\0abc\0xyz");
  // atom_t a = PL_new_atom_nchars(8, "123\0abc\0xyz");
  // return PL_unify_atom(String, a);
}

struct mp_cur
{ const unsigned char *data;
  size_t size;
};

foreign_t mp_unpack(term_t String, term_t Term)
{ return PL_unify_nil(Term);
}

install_t install_cmsgpack()
{ PL_register_foreign("mp_pack", 2, mp_pack, 0);
  PL_register_foreign("mp_unpack", 2, mp_unpack, 0);
}

install_t uninstall_cmsgpack()
{ ;
}
