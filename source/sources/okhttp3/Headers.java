package okhttp3;

import defpackage.fe;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    public final String[] j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final ArrayList a = new ArrayList(20);

        public final void a(String str, String str2) {
            str.getClass();
            str2.getClass();
            ArrayList arrayList = this.a;
            arrayList.add(str);
            arrayList.add(StringsKt.U(str2).toString());
        }

        public final Headers b() {
            return new Headers((String[]) this.a.toArray(new String[0]));
        }

        public final void c(String str) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.a;
                if (i < arrayList.size()) {
                    if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                        arrayList.remove(i);
                        arrayList.remove(i);
                        i -= 2;
                    }
                    i += 2;
                } else {
                    return;
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static void a(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if ('!' > charAt || charAt >= 127) {
                        fe.l(Util.f("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                        return;
                    }
                }
                return;
            }
            u2.g("name is empty");
        }

        public static void b(String str, String str2) {
            String concat;
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                    String f = Util.f("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i), str2);
                    if (Util.n(str2)) {
                        concat = "";
                    } else {
                        concat = ": ".concat(str);
                    }
                    fe.l(f.concat(concat));
                    return;
                }
            }
        }

        public static Headers c(String... strArr) {
            if (strArr.length % 2 == 0) {
                String[] strArr2 = (String[]) strArr.clone();
                int length = strArr2.length;
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    String str = strArr2[i2];
                    if (str != null) {
                        strArr2[i2] = StringsKt.U(str).toString();
                    } else {
                        u2.g("Headers cannot be null");
                        return null;
                    }
                }
                int a = ProgressionUtilKt.a(0, strArr2.length - 1, 2);
                if (a >= 0) {
                    while (true) {
                        String str2 = strArr2[i];
                        String str3 = strArr2[i + 1];
                        a(str2);
                        b(str3, str2);
                        if (i == a) {
                            break;
                        }
                        i += 2;
                    }
                }
                return new Headers(strArr2);
            }
            u2.g("Expected alternating header names and values");
            return null;
        }
    }

    public Headers(String[] strArr) {
        this.j = strArr;
    }

    public final String b(String str) {
        str.getClass();
        String[] strArr = this.j;
        int length = strArr.length - 2;
        int a = ProgressionUtilKt.a(length, 0, -2);
        if (a <= length) {
            while (!StringsKt.o(str, strArr[length], true)) {
                if (length != a) {
                    length -= 2;
                } else {
                    return null;
                }
            }
            return strArr[length + 1];
        }
        return null;
    }

    public final String c(int i) {
        return this.j[i * 2];
    }

    public final Builder d() {
        Builder builder = new Builder();
        ArrayList arrayList = builder.a;
        arrayList.getClass();
        String[] strArr = this.j;
        strArr.getClass();
        List asList = Arrays.asList(strArr);
        asList.getClass();
        arrayList.addAll(asList);
        return builder;
    }

    public final String e(int i) {
        return this.j[(i * 2) + 1];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            if (Arrays.equals(this.j, ((Headers) obj).j)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.j);
    }

    @Override // java.lang.Iterable
    public final Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = new Pair(c(i), e(i));
        }
        return ArrayIteratorKt.a(pairArr);
    }

    public final int size() {
        return this.j.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String c = c(i);
            String e = e(i);
            sb.append(c);
            sb.append(": ");
            if (Util.n(c)) {
                e = "██";
            }
            sb.append(e);
            sb.append("\n");
        }
        return sb.toString();
    }
}
