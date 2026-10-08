package io.sentry.vendor.gson.stream;

import defpackage.k8;
import defpackage.u2;
import java.io.Closeable;
import java.io.Flushable;
import java.io.Writer;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JsonWriter implements Closeable, Flushable {
    public static final String[] r = new String[128];
    public final Writer j;
    public int[] k;
    public int l;
    public String m;
    public String n;
    public boolean o;
    public String p;
    public final boolean q;

    static {
        for (int i = 0; i <= 31; i++) {
            r[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = r;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        int[] iArr = new int[32];
        this.k = iArr;
        this.l = 0;
        if (iArr.length == 0) {
            this.k = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.k;
        int i = this.l;
        this.l = i + 1;
        iArr2[i] = 6;
        this.n = ":";
        this.q = true;
        this.j = writer;
    }

    public final void A() {
        if (this.p != null) {
            int v = v();
            if (v == 5) {
                this.j.write(44);
            } else if (v != 3) {
                u2.l("Nesting problem.");
                return;
            }
            n();
            this.k[this.l - 1] = 4;
            w(this.p);
            this.p = null;
        }
    }

    public final void a() {
        int v = v();
        if (v != 1) {
            Writer writer = this.j;
            if (v != 2) {
                if (v != 4) {
                    if (v != 6) {
                        if (v == 7) {
                            if (!this.o) {
                                u2.l("JSON must have only one top-level value.");
                                return;
                            }
                        } else {
                            u2.l("Nesting problem.");
                            return;
                        }
                    }
                    this.k[this.l - 1] = 7;
                    return;
                }
                writer.append((CharSequence) this.n);
                this.k[this.l - 1] = 5;
                return;
            }
            writer.append(',');
            n();
            return;
        }
        this.k[this.l - 1] = 2;
        n();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
        int i = this.l;
        if (i <= 1 && (i != 1 || this.k[i - 1] == 7)) {
            this.l = 0;
        } else {
            k8.j("Incomplete document");
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.l != 0) {
            this.j.flush();
        } else {
            u2.l("JsonWriter is closed.");
        }
    }

    public final void h(int i, int i2, char c) {
        int v = v();
        if (v != i2 && v != i) {
            u2.l("Nesting problem.");
            return;
        }
        if (this.p == null) {
            this.l--;
            if (v == i2) {
                n();
            }
            this.j.write(c);
            return;
        }
        k8.p(this.p, "Dangling name: ");
    }

    public final void n() {
        if (this.m != null) {
            Writer writer = this.j;
            writer.write(10);
            int i = this.l;
            for (int i2 = 1; i2 < i; i2++) {
                writer.write(this.m);
            }
        }
    }

    public final void q() {
        if (this.p != null) {
            if (this.q) {
                A();
            } else {
                this.p = null;
                return;
            }
        }
        a();
        this.j.write("null");
    }

    public final int v() {
        int i = this.l;
        if (i != 0) {
            return this.k[i - 1];
        }
        u2.l("JsonWriter is closed.");
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w(String str) {
        String str2;
        Writer writer = this.j;
        writer.write(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                str2 = r[charAt];
                if (str2 == null) {
                }
                if (i < i2) {
                    writer.write(str, i, i2 - i);
                }
                writer.write(str2);
                i = i2 + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                }
                writer.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            writer.write(str, i, length - i);
        }
        writer.write(34);
    }
}
