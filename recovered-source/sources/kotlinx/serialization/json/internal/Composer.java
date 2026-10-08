package kotlinx.serialization.json.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Composer {
    public final JsonToStringWriter a;
    public boolean b = true;

    public Composer(JsonToStringWriter jsonToStringWriter) {
        this.a = jsonToStringWriter;
    }

    public void a() {
        this.b = false;
    }

    public void b(byte b) {
        this.a.c(String.valueOf(b));
    }

    public final void c(char c) {
        JsonToStringWriter jsonToStringWriter = this.a;
        jsonToStringWriter.a(jsonToStringWriter.b, 1);
        char[] cArr = jsonToStringWriter.a;
        int i = jsonToStringWriter.b;
        jsonToStringWriter.b = i + 1;
        cArr[i] = c;
    }

    public void d(int i) {
        this.a.c(String.valueOf(i));
    }

    public void e(long j) {
        this.a.c(String.valueOf(j));
    }

    public final void f(String str) {
        str.getClass();
        this.a.c(str);
    }

    public void g(short s) {
        this.a.c(String.valueOf(s));
    }

    public void h(String str) {
        int i;
        str.getClass();
        int length = str.length() + 2;
        JsonToStringWriter jsonToStringWriter = this.a;
        jsonToStringWriter.a(jsonToStringWriter.b, length);
        char[] cArr = jsonToStringWriter.a;
        int i2 = jsonToStringWriter.b;
        int i3 = i2 + 1;
        cArr[i2] = '\"';
        int length2 = str.length();
        str.getChars(0, length2, cArr, i3);
        int i4 = length2 + i3;
        int i5 = i3;
        while (i5 < i4) {
            char c = cArr[i5];
            byte[] bArr = StringOpsKt.b;
            if (c < bArr.length && bArr[c] != 0) {
                int length3 = str.length();
                for (int i6 = i5 - i3; i6 < length3; i6++) {
                    jsonToStringWriter.a(i5, 2);
                    char charAt = str.charAt(i6);
                    byte[] bArr2 = StringOpsKt.b;
                    if (charAt < bArr2.length) {
                        byte b = bArr2[charAt];
                        if (b == 0) {
                            i = i5 + 1;
                            jsonToStringWriter.a[i5] = charAt;
                        } else {
                            if (b == 1) {
                                String str2 = StringOpsKt.a[charAt];
                                str2.getClass();
                                jsonToStringWriter.a(i5, str2.length());
                                str2.getChars(0, str2.length(), jsonToStringWriter.a, i5);
                                int length4 = str2.length() + i5;
                                jsonToStringWriter.b = length4;
                                i5 = length4;
                            } else {
                                char[] cArr2 = jsonToStringWriter.a;
                                cArr2[i5] = '\\';
                                cArr2[i5 + 1] = (char) b;
                                i5 += 2;
                                jsonToStringWriter.b = i5;
                            }
                        }
                    } else {
                        i = i5 + 1;
                        jsonToStringWriter.a[i5] = charAt;
                    }
                    i5 = i;
                }
                jsonToStringWriter.a(i5, 1);
                jsonToStringWriter.a[i5] = '\"';
                jsonToStringWriter.b = i5 + 1;
                return;
            }
            i5++;
        }
        cArr[i4] = '\"';
        jsonToStringWriter.b = i4 + 1;
    }

    public void i() {
    }

    public void j() {
    }
}
