module booleanmin(a, b, c, d, w, x, y, z, f1, f2);

  input a, b, c, d, w, x, y, z;
  output f1, f2;

  wire not_a, not_b, not_c, not_d, not_w, not_x, not_y, not_z;

  not u1(adash, a);
  not u2(bdash, b);
  not u2(not_c, c);
  not u3(not_d, d);
  not u4(not_w, w);
  not u5(not_x, x);
  not u6(not_y, y);
  not u7(not_z, z);

  wire p = not_a & not_b & not_d;
  wire q = a & not_b & c & not_d;
  wire r = not_a & b & c & not_c;
  wire s = a & not_b & not_c & not_d;

  wire t = not_w & not_x & not_y;
  wire u = not_w & x & not_y;
  wire v = not_w & not_x & y;

  o1(f1, p, q, r, s);
  o2(f2, t, u, v);

endmodule
