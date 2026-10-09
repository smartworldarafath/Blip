package io.sentry.vendor.gson.stream;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.u2;
import io.sentry.d;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JsonReader implements Closeable {
    public final Reader j;
    public long r;
    public int s;
    public String t;
    public int[] u;
    public String[] w;
    public int[] x;
    public boolean k = false;
    public final char[] l = new char[1024];
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public int p = 0;
    public int q = 0;
    public int v = 1;

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.u = iArr;
        iArr[0] = 6;
        this.w = new String[32];
        this.x = new int[32];
        this.j = reader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        r10.m = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        if (r1 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        r1.append(r7, r3, r2 - r3);
        r10.m = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String A(char c) {
        char[] cArr;
        int i;
        StringBuilder sb = null;
        do {
            int i2 = this.m;
            int i3 = this.n;
            while (true) {
                int i4 = i3;
                int i5 = i2;
                while (true) {
                    cArr = this.l;
                    if (i2 >= i4) {
                        break;
                    }
                    int i6 = i2 + 1;
                    char c2 = cArr[i2];
                    if (c2 == c) {
                        this.m = i6;
                        int i7 = (i6 - i5) - 1;
                        if (sb == null) {
                            return new String(cArr, i5, i7);
                        }
                        sb.append(cArr, i5, i7);
                        return sb.toString();
                    }
                    if (c2 == '\\') {
                        break;
                    }
                    if (c2 == '\n') {
                        this.o++;
                        this.p = i6;
                    }
                    i2 = i6;
                }
                sb.append(cArr, i5, i);
                sb.append(P());
                i2 = this.m;
                i3 = this.n;
            }
        } while (n(1));
        X("Unterminated string");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0048, code lost:
    
        a();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x0042. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String E() {
        char[] cArr;
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        do {
            int i2 = 0;
            while (true) {
                int i3 = this.m + i2;
                int i4 = this.n;
                cArr = this.l;
                if (i3 < i4) {
                    char c = cArr[i3];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i2 < cArr.length) {
                    if (n(i2 + 1)) {
                    }
                } else {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i2, 16));
                    }
                    sb2.append(cArr, this.m, i2);
                    this.m += i2;
                }
            }
            i = i2;
            int i5 = this.m;
            if (sb2 != null) {
                sb = new String(cArr, i5, i);
            } else {
                sb2.append(cArr, i5, i);
                sb = sb2.toString();
            }
            this.m += i;
            return sb;
        } while (n(1));
        int i52 = this.m;
        if (sb2 != null) {
        }
        this.m += i;
        return sb;
    }

    public final void O(int i) {
        int i2 = this.v;
        int[] iArr = this.u;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.u = Arrays.copyOf(iArr, i3);
            this.x = Arrays.copyOf(this.x, i3);
            this.w = (String[]) Arrays.copyOf(this.w, i3);
        }
        int[] iArr2 = this.u;
        int i4 = this.v;
        this.v = i4 + 1;
        iArr2[i4] = i;
    }

    public final char P() {
        int i;
        if (this.m == this.n && !n(1)) {
            X("Unterminated escape sequence");
            throw null;
        }
        int i2 = this.m;
        int i3 = i2 + 1;
        this.m = i3;
        char[] cArr = this.l;
        char c = cArr[i2];
        if (c != '\n') {
            if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
                if (c != 'b') {
                    if (c != 'f') {
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c != 'r') {
                            if (c != 't') {
                                if (c == 'u') {
                                    if (i2 + 5 > this.n && !n(4)) {
                                        X("Unterminated escape sequence");
                                        throw null;
                                    }
                                    int i4 = this.m;
                                    int i5 = i4 + 4;
                                    char c2 = 0;
                                    while (i4 < i5) {
                                        char c3 = cArr[i4];
                                        char c4 = (char) (c2 << 4);
                                        if (c3 >= '0' && c3 <= '9') {
                                            i = c3 - '0';
                                        } else if (c3 >= 'a' && c3 <= 'f') {
                                            i = c3 - 'W';
                                        } else if (c3 >= 'A' && c3 <= 'F') {
                                            i = c3 - '7';
                                        } else {
                                            throw new NumberFormatException("\\u".concat(new String(cArr, this.m, 4)));
                                        }
                                        c2 = (char) (i + c4);
                                        i4++;
                                    }
                                    this.m += 4;
                                    return c2;
                                }
                                X("Invalid escape sequence");
                                throw null;
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\f';
                }
                return '\b';
            }
            return c;
        }
        this.o++;
        this.p = i3;
        return c;
    }

    public final void R(char c) {
        do {
            int i = this.m;
            int i2 = this.n;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = this.l[i];
                if (c2 == c) {
                    this.m = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.m = i3;
                    P();
                    i = this.m;
                    i2 = this.n;
                } else {
                    if (c2 == '\n') {
                        this.o++;
                        this.p = i3;
                    }
                    i = i3;
                }
            }
            this.m = i;
        } while (n(1));
        X("Unterminated string");
        throw null;
    }

    public final void S() {
        char c;
        do {
            if (this.m < this.n || n(1)) {
                int i = this.m;
                int i2 = i + 1;
                this.m = i2;
                c = this.l[i];
                if (c == '\n') {
                    this.o++;
                    this.p = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    public final void X(String str) {
        throw new IOException(str.concat(v()));
    }

    public final void a() {
        if (this.k) {
            return;
        }
        X("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.q = 0;
        this.u[0] = 8;
        this.v = 1;
        this.j.close();
    }

    public final String e0() {
        String A;
        int i = this.q;
        if (i == 0) {
            i = h();
        }
        if (i == 14) {
            A = E();
        } else if (i == 12) {
            A = A('\'');
        } else if (i == 13) {
            A = A('\"');
        } else {
            StringBuilder sb = new StringBuilder("Expected a name but was ");
            sb.append(peek());
            d.h(sb, v());
            return null;
        }
        this.q = 0;
        this.w[this.v - 1] = A;
        return A;
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x020a, code lost:
    
        if (q(r9) != false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0199, code lost:
    
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x020d, code lost:
    
        if (r11 != 2) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x020f, code lost:
    
        if (r13 == false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0215, code lost:
    
        if (r14 != Long.MIN_VALUE) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0217, code lost:
    
        if (r4 == false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x021e, code lost:
    
        if (r14 != 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0220, code lost:
    
        if (r4 != false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0222, code lost:
    
        if (r4 == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0225, code lost:
    
        r14 = -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0226, code lost:
    
        r24.r = r14;
        r24.m += r2;
        r9 = 15;
        r24.q = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x021a, code lost:
    
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0232, code lost:
    
        if (r11 == r10) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0235, code lost:
    
        if (r11 == 4) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0238, code lost:
    
        if (r11 != 7) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x023a, code lost:
    
        r24.s = r2;
        r9 = 16;
        r24.q = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0179 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0265 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0266  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int h() {
        int w;
        String str;
        String str2;
        int i;
        int i2;
        char c;
        char c2;
        boolean z;
        int i3;
        int[] iArr = this.u;
        int i4 = this.v - 1;
        int i5 = iArr[i4];
        char[] cArr = this.l;
        if (i5 == 1) {
            iArr[i4] = 2;
        } else if (i5 == 2) {
            int w2 = w(true);
            if (w2 != 44) {
                if (w2 != 59) {
                    if (w2 == 93) {
                        this.q = 4;
                        return 4;
                    }
                    X("Unterminated array");
                    throw null;
                }
                a();
            }
        } else if (i5 != 3 && i5 != 5) {
            if (i5 == 4) {
                iArr[i4] = 5;
                int w3 = w(true);
                if (w3 != 58) {
                    if (w3 == 61) {
                        a();
                        if (this.m < this.n || n(1)) {
                            int i6 = this.m;
                            if (cArr[i6] == '>') {
                                this.m = i6 + 1;
                            }
                        }
                    } else {
                        X("Expected ':'");
                        throw null;
                    }
                }
            } else if (i5 == 6) {
                if (this.k) {
                    w(true);
                    int i7 = this.m;
                    int i8 = i7 - 1;
                    this.m = i8;
                    if ((i7 + 4 <= this.n || n(5)) && cArr[i8] == ')' && cArr[i7] == ']' && cArr[i7 + 1] == '}' && cArr[i7 + 2] == '\'' && cArr[i7 + 3] == '\n') {
                        this.m += 5;
                    }
                }
                this.u[this.v - 1] = 7;
            } else if (i5 == 7) {
                if (w(false) == -1) {
                    this.q = 17;
                    return 17;
                }
                a();
                this.m--;
            } else if (i5 == 8) {
                u2.l("JsonReader is closed");
                return 0;
            }
        } else {
            iArr[i4] = 4;
            if (i5 == 5 && (w = w(true)) != 44) {
                if (w != 59) {
                    if (w == 125) {
                        this.q = 2;
                        return 2;
                    }
                    X("Unterminated object");
                    throw null;
                }
                a();
            }
            int w4 = w(true);
            if (w4 != 34) {
                if (w4 != 39) {
                    if (w4 != 125) {
                        a();
                        this.m--;
                        if (q((char) w4)) {
                            this.q = 14;
                            return 14;
                        }
                        X("Expected name");
                        throw null;
                    }
                    if (i5 != 5) {
                        this.q = 2;
                        return 2;
                    }
                    X("Expected name");
                    throw null;
                }
                a();
                this.q = 12;
                return 12;
            }
            this.q = 13;
            return 13;
        }
        int w5 = w(true);
        if (w5 != 34) {
            if (w5 != 39) {
                if (w5 != 44 && w5 != 59) {
                    if (w5 != 91) {
                        if (w5 != 93) {
                            if (w5 != 123) {
                                int i9 = this.m - 1;
                                this.m = i9;
                                char c3 = cArr[i9];
                                if (c3 != 't' && c3 != 'T') {
                                    if (c3 != 'f' && c3 != 'F') {
                                        if (c3 == 'n' || c3 == 'N') {
                                            str = "null";
                                            str2 = "NULL";
                                            i = 7;
                                        }
                                        i2 = 0;
                                        if (i2 == 0) {
                                            return i2;
                                        }
                                        int i10 = this.m;
                                        int i11 = this.n;
                                        boolean z2 = true;
                                        int i12 = 0;
                                        boolean z3 = false;
                                        char c4 = 0;
                                        long j = 0;
                                        while (true) {
                                            if (i10 + i12 == i11) {
                                                if (i12 == cArr.length) {
                                                    break;
                                                }
                                                if (!n(i12 + 1)) {
                                                    break;
                                                }
                                                i10 = this.m;
                                                i11 = this.n;
                                            }
                                            char c5 = cArr[i10 + i12];
                                            if (c5 != '+') {
                                                if (c5 != 'E' && c5 != 'e') {
                                                    if (c5 != '-') {
                                                        if (c5 != '.') {
                                                            if (c5 < '0' || c5 > '9') {
                                                                break;
                                                            }
                                                            if (c4 != 1 && c4 != 0) {
                                                                if (c4 == 2) {
                                                                    if (j == 0) {
                                                                        break;
                                                                    }
                                                                    long j2 = (10 * j) - (c5 - '0');
                                                                    if (j <= -922337203685477580L && (j != -922337203685477580L || j2 >= j)) {
                                                                        z = false;
                                                                    } else {
                                                                        z = true;
                                                                    }
                                                                    z2 &= z;
                                                                    j = j2;
                                                                } else if (c4 == 3) {
                                                                    c4 = 4;
                                                                } else if (c4 == 5 || c4 == 6) {
                                                                    c4 = 7;
                                                                }
                                                            } else {
                                                                j = -(c5 - '0');
                                                                c4 = 2;
                                                            }
                                                            i12++;
                                                        } else {
                                                            if (c4 != 2) {
                                                                break;
                                                            }
                                                            c4 = 3;
                                                            i12++;
                                                        }
                                                    } else {
                                                        c2 = 6;
                                                        if (c4 == 0) {
                                                            z3 = true;
                                                            c4 = 1;
                                                            i12++;
                                                        } else {
                                                            if (c4 != 5) {
                                                                break;
                                                            }
                                                            c4 = c2;
                                                            i12++;
                                                        }
                                                    }
                                                } else {
                                                    if (c4 != 2 && c4 != 4) {
                                                        break;
                                                    }
                                                    c4 = 5;
                                                    i12++;
                                                }
                                                if (i3 == 0) {
                                                    return i3;
                                                }
                                                if (q(cArr[this.m])) {
                                                    a();
                                                    this.q = 10;
                                                    return 10;
                                                }
                                                X("Expected value");
                                                throw null;
                                            }
                                            c2 = 6;
                                            if (c4 != 5) {
                                                break;
                                            }
                                            c4 = c2;
                                            i12++;
                                        }
                                        i3 = 0;
                                        if (i3 == 0) {
                                        }
                                    } else {
                                        str = "false";
                                        str2 = "FALSE";
                                        i = 6;
                                    }
                                } else {
                                    str = "true";
                                    str2 = "TRUE";
                                    i = 5;
                                }
                                int length = str.length();
                                int i13 = 1;
                                while (true) {
                                    int i14 = this.m;
                                    int i15 = this.n;
                                    if (i13 < length) {
                                        if ((i14 + i13 >= i15 && !n(i13 + 1)) || ((c = cArr[this.m + i13]) != str.charAt(i13) && c != str2.charAt(i13))) {
                                            break;
                                        }
                                        i13++;
                                    } else if ((i14 + length >= i15 && !n(length + 1)) || !q(cArr[this.m + length])) {
                                        this.m += length;
                                        this.q = i;
                                        i2 = i;
                                    }
                                }
                                if (i2 == 0) {
                                }
                            } else {
                                this.q = 1;
                                return 1;
                            }
                        } else if (i5 == 1) {
                            this.q = 4;
                            return 4;
                        }
                    } else {
                        this.q = 3;
                        return 3;
                    }
                }
                if (i5 != 1 && i5 != 2) {
                    X("Unexpected value");
                    throw null;
                }
                a();
                this.m--;
                this.q = 7;
                return 7;
            }
            a();
            this.q = 8;
            return 8;
        }
        this.q = 9;
        return 9;
    }

    public final boolean hasNext() {
        int i = this.q;
        if (i == 0) {
            i = h();
        }
        if (i != 2 && i != 4) {
            return true;
        }
        return false;
    }

    public final boolean n(int i) {
        int i2;
        int i3;
        int i4 = this.p;
        int i5 = this.m;
        this.p = i4 - i5;
        int i6 = this.n;
        char[] cArr = this.l;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.n = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.n = 0;
        }
        this.m = 0;
        do {
            int i8 = this.n;
            int read = this.j.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.n + read;
            this.n = i2;
            if (this.o == 0 && (i3 = this.p) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.m++;
                this.p = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public final double nextDouble() {
        char c;
        int i = this.q;
        if (i == 0) {
            i = h();
        }
        if (i == 15) {
            this.q = 0;
            int[] iArr = this.x;
            int i2 = this.v - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.r;
        }
        if (i == 16) {
            this.t = new String(this.l, this.m, this.s);
            this.m += this.s;
        } else if (i != 8 && i != 9) {
            if (i == 10) {
                this.t = E();
            } else if (i != 11) {
                StringBuilder sb = new StringBuilder("Expected a double but was ");
                sb.append(peek());
                d.h(sb, v());
                return 0.0d;
            }
        } else {
            if (i == 8) {
                c = '\'';
            } else {
                c = '\"';
            }
            this.t = A(c);
        }
        this.q = 11;
        double parseDouble = Double.parseDouble(this.t);
        if (!this.k && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new IOException("JSON forbids NaN and infinities: " + parseDouble + v());
        }
        this.t = null;
        this.q = 0;
        int[] iArr2 = this.x;
        int i3 = this.v - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public final JsonToken peek() {
        int i = this.q;
        if (i == 0) {
            i = h();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return JsonToken.END_OBJECT;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return JsonToken.BEGIN_ARRAY;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return JsonToken.END_ARRAY;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return JsonToken.BOOLEAN;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return JsonToken.NULL;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case KeyModifiers.a /* 9 */:
            case KeyModifiers.b /* 10 */:
            case 11:
                return JsonToken.STRING;
            case KeyModifiers.c /* 12 */:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final boolean q(char c) {
        if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
            if (c != '#') {
                if (c != ',') {
                    if (c != '/' && c != '=') {
                        if (c != '{' && c != '}' && c != ':') {
                            if (c != ';') {
                                switch (c) {
                                    case '[':
                                    case ']':
                                        return false;
                                    case '\\':
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            a();
            return false;
        }
        return false;
    }

    public final String toString() {
        return getClass().getSimpleName().concat(v());
    }

    public final String v() {
        StringBuilder k = jb.k(" at line ", this.o + 1, " column ", (this.m - this.p) + 1, " path ");
        StringBuilder sb = new StringBuilder("$");
        int i = this.v;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.u[i2];
            if (i3 != 1 && i3 != 2) {
                if (i3 == 3 || i3 == 4 || i3 == 5) {
                    sb.append('.');
                    String str = this.w[i2];
                    if (str != null) {
                        sb.append(str);
                    }
                }
            } else {
                sb.append('[');
                sb.append(this.x[i2]);
                sb.append(']');
            }
        }
        k.append(sb.toString());
        return k.toString();
    }

    public final int w(boolean z) {
        char c;
        int i = this.m;
        int i2 = this.n;
        while (true) {
            if (i == i2) {
                this.m = i;
                if (!n(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input".concat(v()));
                }
                i = this.m;
                i2 = this.n;
            }
            int i3 = i + 1;
            char[] cArr = this.l;
            c = cArr[i];
            if (c == '\n') {
                this.o++;
                this.p = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.m = i3;
                    if (i3 == i2) {
                        this.m = i;
                        boolean n = n(2);
                        this.m++;
                        if (!n) {
                            break;
                        }
                    }
                    a();
                    int i4 = this.m;
                    char c2 = cArr[i4];
                    if (c2 != '*') {
                        if (c2 != '/') {
                            break;
                        }
                        this.m = i4 + 1;
                        S();
                        i = this.m;
                        i2 = this.n;
                    } else {
                        this.m = i4 + 1;
                        while (true) {
                            if (this.m + 2 > this.n && !n(2)) {
                                X("Unterminated comment");
                                throw null;
                            }
                            int i5 = this.m;
                            if (cArr[i5] == '\n') {
                                this.o++;
                                this.p = i5 + 1;
                            } else {
                                int i6 = 0;
                                while (true) {
                                    int i7 = this.m;
                                    if (i6 < 2) {
                                        if (cArr[i7 + i6] != "*/".charAt(i6)) {
                                            break;
                                        }
                                        i6++;
                                    } else {
                                        i = i7 + 2;
                                        i2 = this.n;
                                        break;
                                    }
                                }
                            }
                            this.m++;
                        }
                    }
                } else if (c == '#') {
                    this.m = i3;
                    a();
                    S();
                    i = this.m;
                    i2 = this.n;
                } else {
                    this.m = i3;
                    return c;
                }
            }
            i = i3;
        }
        return c;
    }
}
