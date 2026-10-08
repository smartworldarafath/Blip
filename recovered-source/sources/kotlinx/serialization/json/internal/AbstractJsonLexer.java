package kotlinx.serialization.json.internal;

import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractJsonLexer {
    public final JsonConfiguration a;
    public int b;
    public final JsonPath c;
    public String d;
    public final StringBuilder e = new StringBuilder();

    public AbstractJsonLexer(JsonConfiguration jsonConfiguration) {
        this.a = jsonConfiguration;
        this.c = new JsonPath(jsonConfiguration);
    }

    public static /* synthetic */ void j(AbstractJsonLexer abstractJsonLexer, String str, int i, String str2, int i2) {
        if ((i2 & 2) != 0) {
            i = abstractJsonLexer.b;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        abstractJsonLexer.i(str, i, str2);
        throw null;
    }

    public final int a(CharSequence charSequence, int i) {
        int i2 = i + 4;
        if (i2 >= charSequence.length()) {
            this.b = i;
            if (i2 < charSequence.length()) {
                return a(charSequence, this.b);
            }
            j(this, "Unexpected EOF during unicode escape", 0, null, 6);
            throw null;
        }
        this.e.append((char) (k(charSequence, i + 3) + (k(charSequence, i) << 12) + (k(charSequence, i + 1) << 8) + (k(charSequence, i + 2) << 4)));
        return i2;
    }

    public final void b(int i, String str) {
        String str2 = ((StringJsonLexer) this).f;
        if (str2.length() - i >= str.length()) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) != (str2.charAt(i + i2) | ' ')) {
                    j(this, "Expected valid boolean literal prefix, but had '" + h() + '\'', 0, null, 6);
                    throw null;
                }
            }
            this.b = str.length() + i;
            return;
        }
        j(this, "Unexpected end of boolean literal", 0, null, 6);
        throw null;
    }

    public abstract String c();

    public abstract byte d();

    public final byte e(byte b) {
        int i;
        String str;
        byte d = d();
        if (d != b) {
            String b2 = AbstractJsonLexerKt.b(b);
            int i2 = this.b;
            if (i2 > 0) {
                i = i2 - 1;
            } else {
                i = i2;
            }
            String str2 = ((StringJsonLexer) this).f;
            if (i2 != str2.length() && i >= 0) {
                str = String.valueOf(str2.charAt(i));
            } else {
                str = "EOF";
            }
            j(this, jb.h("Expected ", b2, ", but had '", str, "' instead"), i, null, 4);
            throw null;
        }
        return d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b7, code lost:
    
        j(r22, "Expected numeric literal", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01bd, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0122, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0105, code lost:
    
        j(r22, "Unexpected symbol '" + r15 + "' in numeric literal", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0119, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011e, code lost:
    
        if (r12 == r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0120, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0123, code lost:
    
        if (r1 == r12) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0125, code lost:
    
        if (r14 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0129, code lost:
    
        if (r1 == (r12 - 1)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012f, code lost:
    
        if (r20 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0131, code lost:
    
        if (r3 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0139, code lost:
    
        if (r2.charAt(r12) != '\"') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013b, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013e, code lost:
    
        j(r22, "Expected closing quotation mark", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0145, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0146, code lost:
    
        j(r22, "EOF", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014c, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014d, code lost:
    
        r22.b = r12;
        r1 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0151, code lost:
    
        if (r21 == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0153, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0156, code lost:
    
        if (r11 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0158, code lost:
    
        r3 = java.lang.Math.pow(10.0d, -r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0167, code lost:
    
        r1 = r1 * r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x016c, code lost:
    
        if (r1 > 9.223372036854776E18d) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0172, code lost:
    
        if (r1 < (-9.223372036854776E18d)) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x017a, code lost:
    
        if (java.lang.Math.floor(r1) != r1) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017c, code lost:
    
        r10 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a6, code lost:
    
        if (r14 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a8, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ad, code lost:
    
        if (r10 == Long.MIN_VALUE) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01b0, code lost:
    
        return -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b1, code lost:
    
        j(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017f, code lost:
    
        j(r22, "Can't convert " + r1 + " to Long", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0198, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0199, code lost:
    
        j(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x019f, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0160, code lost:
    
        if (r11 != true) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0162, code lost:
    
        r3 = java.lang.Math.pow(10.0d, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a0, code lost:
    
        defpackage.k8.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a3, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
    
        r10 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long f() {
        boolean z;
        boolean z2;
        boolean z3;
        int n = n(o());
        String str = ((StringJsonLexer) this).f;
        if (n < str.length() && n != -1) {
            if (str.charAt(n) == '\"') {
                n++;
                if (n != str.length()) {
                    z = true;
                } else {
                    j(this, "EOF", 0, null, 6);
                    throw null;
                }
            } else {
                z = false;
            }
            int i = n;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            long j = 0;
            long j2 = 0;
            while (true) {
                if (i != str.length()) {
                    char charAt = str.charAt(i);
                    if ((charAt != 'e' && charAt != 'E') || z5) {
                        z2 = z;
                        if (charAt == '-' && z5) {
                            if (i != n) {
                                i++;
                                z = z2;
                                z4 = false;
                            } else {
                                j(this, "Unexpected symbol '-' in numeric literal", i, null, 4);
                                throw null;
                            }
                        } else if (charAt == '+' && z5) {
                            if (i != n) {
                                i++;
                                z = z2;
                                z4 = true;
                            } else {
                                j(this, "Unexpected symbol '+' in numeric literal", i, null, 4);
                                throw null;
                            }
                        } else {
                            z3 = z5;
                            if (charAt == '-') {
                                if (i == n) {
                                    i++;
                                    z = z2;
                                    z5 = z3;
                                    z6 = true;
                                } else {
                                    j(this, "Unexpected symbol '-' in numeric literal", i, null, 4);
                                    throw null;
                                }
                            } else {
                                if (AbstractJsonLexerKt.a(charAt) != 0) {
                                    break;
                                }
                                int i2 = i + 1;
                                int i3 = charAt - '0';
                                if (i3 < 0 || i3 >= 10) {
                                    break;
                                }
                                if (z3) {
                                    j = (j * 10) + i3;
                                } else {
                                    j2 = (j2 * 10) - i3;
                                    if (j2 > 0) {
                                        j(this, "Numeric value overflow", 0, null, 6);
                                        throw null;
                                    }
                                }
                                i = i2;
                                z = z2;
                                z5 = z3;
                            }
                        }
                    } else if (i != n) {
                        i++;
                        z4 = true;
                        z5 = true;
                    } else {
                        j(this, "Unexpected symbol '" + charAt + "' in numeric literal", i, null, 4);
                        throw null;
                    }
                } else {
                    z2 = z;
                    z3 = z5;
                    break;
                }
            }
        } else {
            j(this, "EOF", 0, null, 6);
            throw null;
        }
    }

    public final String g() {
        String str = this.d;
        if (str != null) {
            str.getClass();
            this.d = null;
            return str;
        }
        return c();
    }

    public final String h() {
        String sb;
        String str = this.d;
        if (str != null) {
            str.getClass();
            this.d = null;
            return str;
        }
        int o = o();
        String str2 = ((StringJsonLexer) this).f;
        if (o < str2.length() && o != -1) {
            byte a = AbstractJsonLexerKt.a(str2.charAt(o));
            if (a == 1) {
                return g();
            }
            if (a == 0) {
                boolean z = false;
                while (true) {
                    byte a2 = AbstractJsonLexerKt.a(str2.charAt(o));
                    StringBuilder sb2 = this.e;
                    if (a2 == 0) {
                        o++;
                        if (o >= str2.length()) {
                            sb2.append((CharSequence) str2, this.b, o);
                            int n = n(o);
                            if (n == -1) {
                                this.b = o;
                                sb2.append((CharSequence) str2, 0, 0);
                                String sb3 = sb2.toString();
                                sb2.setLength(0);
                                return sb3;
                            }
                            o = n;
                            z = true;
                        }
                    } else {
                        int i = this.b;
                        if (!z) {
                            sb = str2.subSequence(i, o).toString();
                        } else {
                            sb2.append((CharSequence) str2, i, o);
                            sb = sb2.toString();
                            sb2.setLength(0);
                        }
                        this.b = o;
                        return sb;
                    }
                }
            } else {
                j(this, "Expected beginning of the string, but got " + str2.charAt(o), 0, null, 6);
                throw null;
            }
        } else {
            j(this, "EOF", o, null, 4);
            throw null;
        }
    }

    public final void i(String str, int i, String str2) {
        String str3;
        String a = this.c.a();
        String str4 = ((StringJsonLexer) this).f;
        str4.getClass();
        if (this.a.f) {
            str3 = JsonExceptionsKt.d(str4, i).toString();
        } else {
            str3 = null;
        }
        throw new JsonException(JsonExceptionsKt.a(i, str, a, str2, str3));
    }

    public final int k(CharSequence charSequence, int i) {
        char charAt = charSequence.charAt(i);
        if ('0' <= charAt && charAt < ':') {
            return charAt - '0';
        }
        if ('a' <= charAt && charAt < 'g') {
            return charAt - 'W';
        }
        if ('A' <= charAt && charAt < 'G') {
            return charAt - '7';
        }
        j(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    public byte l() {
        StringJsonLexer stringJsonLexer = (StringJsonLexer) this;
        int i = this.b;
        while (true) {
            int n = n(i);
            if (n != -1) {
                char charAt = stringJsonLexer.f.charAt(n);
                if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                    this.b = n;
                    return AbstractJsonLexerKt.a(charAt);
                }
                i = n + 1;
            } else {
                this.b = n;
                return (byte) 10;
            }
        }
    }

    public final String m() {
        if (l() != 1) {
            return null;
        }
        String g = g();
        this.d = g;
        return g;
    }

    public abstract int n(int i);

    public abstract int o();

    public final boolean p() {
        int o = o();
        String str = ((StringJsonLexer) this).f;
        if (o >= str.length() || o == -1 || str.charAt(o) != ',') {
            return false;
        }
        this.b++;
        return true;
    }

    public final void q(char c) {
        int i;
        String str;
        int i2 = this.b;
        if (i2 > 0 && c == '\"') {
            try {
                this.b = i2 - 1;
                String h = h();
                this.b = i2;
                if (Intrinsics.a(h, "null")) {
                    i("Expected string literal but 'null' literal was found", this.b - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.b = i2;
                throw th;
            }
        }
        String b = AbstractJsonLexerKt.b(AbstractJsonLexerKt.a(c));
        int i3 = this.b;
        if (i3 > 0) {
            i = i3 - 1;
        } else {
            i = i3;
        }
        String str2 = ((StringJsonLexer) this).f;
        if (i3 != str2.length() && i >= 0) {
            str = String.valueOf(str2.charAt(i));
        } else {
            str = "EOF";
        }
        j(this, jb.h("Expected ", b, ", but had '", str, "' instead"), i, null, 4);
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonReader(source='");
        sb.append((Object) ((StringJsonLexer) this).f);
        sb.append("', currentPosition=");
        return q.j(sb, this.b, ')');
    }
}
