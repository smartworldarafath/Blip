package okhttp3.internal;

import defpackage.fe;
import defpackage.u2;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.ResponseBody$Companion$asResponseBody$1;
import okhttp3.internal.http2.Header;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options$Companion;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Util {
    public static final byte[] a;
    public static final Headers b = Headers.Companion.c(new String[0]);
    public static final ResponseBody$Companion$asResponseBody$1 c;
    public static final TimeZone d;
    public static final Regex e;
    public static final String f;

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e6, code lost:
    
        continue;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [okhttp3.ResponseBody$Companion$asResponseBody$1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2, types: [okio.Buffer, java.lang.Object] */
    static {
        byte[] bArr = new byte[0];
        a = bArr;
        final ?? obj = new Object();
        obj.X(0, bArr);
        final long j = 0;
        c = new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
            @Override // okhttp3.ResponseBody
            public final BufferedSource U0() {
                return obj;
            }

            @Override // okhttp3.ResponseBody
            public final long a() {
                return j;
            }
        };
        ByteString byteString = ByteString.m;
        ByteString[] byteStringArr = {ByteString.Companion.a("efbbbf"), ByteString.Companion.a("feff"), ByteString.Companion.a("fffe"), ByteString.Companion.a("0000ffff"), ByteString.Companion.a("ffff0000")};
        ArrayList w = ArraysKt.w(byteStringArr);
        CollectionsKt.O(w);
        int size = w.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(-1);
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < 5) {
            arrayList.set(CollectionsKt.k(w, byteStringArr[i2]), Integer.valueOf(i3));
            i2++;
            i3++;
        }
        if (((ByteString) w.get(0)).e() > 0) {
            int i4 = 0;
            while (i4 < w.size()) {
                ByteString byteString2 = (ByteString) w.get(i4);
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < w.size()) {
                    ByteString byteString3 = (ByteString) w.get(i6);
                    byteString3.getClass();
                    byteString2.getClass();
                    if (byteString3.n(0, byteString2, byteString2.e())) {
                        if (byteString3.e() != byteString2.e()) {
                            if (((Number) arrayList.get(i6)).intValue() > ((Number) arrayList.get(i4)).intValue()) {
                                w.remove(i6);
                                ((Number) arrayList.remove(i6)).intValue();
                            } else {
                                i6++;
                            }
                        } else {
                            fe.s(byteString3, "duplicate option: ");
                            return;
                        }
                    }
                }
                i4 = i5;
            }
            ?? obj2 = new Object();
            Options$Companion.a(0L, obj2, 0, w, 0, w.size(), arrayList);
            int i7 = (int) (obj2.k / 4);
            int[] iArr = new int[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                iArr[i8] = obj2.readInt();
            }
            TimeZone timeZone = TimeZone.getTimeZone("GMT");
            timeZone.getClass();
            d = timeZone;
            e = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
            f = StringsKt.C(StringsKt.B(OkHttpClient.class.getName(), "okhttp3."), "Client");
            return;
        }
        u2.g("the empty byte string is not a supported option");
    }

    public static final boolean a(HttpUrl httpUrl, HttpUrl httpUrl2) {
        httpUrl.getClass();
        httpUrl2.getClass();
        if (Intrinsics.a(httpUrl.d, httpUrl2.d) && httpUrl.e == httpUrl2.e && Intrinsics.a(httpUrl.a, httpUrl2.a)) {
            return true;
        }
        return false;
    }

    public static final void b(Closeable closeable) {
        closeable.getClass();
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void c(Socket socket) {
        socket.getClass();
        try {
            socket.close();
        } catch (AssertionError e2) {
            throw e2;
        } catch (RuntimeException e3) {
            if (Intrinsics.a(e3.getMessage(), "bio == null")) {
            } else {
                throw e3;
            }
        } catch (Exception unused) {
        }
    }

    public static final int d(int i, int i2, String str, String str2) {
        while (i < i2) {
            if (StringsKt.j(str2, str.charAt(i))) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int e(String str, char c2, int i, int i2) {
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final String f(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
    }

    public static final boolean g(String[] strArr, String[] strArr2, Comparator comparator) {
        strArr.getClass();
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator a2 = ArrayIteratorKt.a(strArr2);
                while (a2.hasNext()) {
                    if (comparator.compare(str, (String) a2.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long h(Response response) {
        String b2 = response.o.b("Content-Length");
        if (b2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(b2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static final List i(Object... objArr) {
        Object[] objArr2 = (Object[]) objArr.clone();
        List unmodifiableList = Collections.unmodifiableList(CollectionsKt.C(Arrays.copyOf(objArr2, objArr2.length)));
        unmodifiableList.getClass();
        return unmodifiableList;
    }

    public static final int j(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Intrinsics.b(charAt, 31) <= 0 || Intrinsics.b(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int k(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                i++;
            } else {
                return i;
            }
        }
        return i2;
    }

    public static final int l(String str, int i, int i2) {
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                    if (i3 == i) {
                        break;
                    }
                    i3--;
                } else {
                    return i3 + 1;
                }
            }
        }
        return i;
    }

    public static final String[] m(String[] strArr, String[] strArr2, Comparator comparator) {
        strArr2.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean n(String str) {
        str.getClass();
        if (!str.equalsIgnoreCase("Authorization") && !str.equalsIgnoreCase("Cookie") && !str.equalsIgnoreCase("Proxy-Authorization") && !str.equalsIgnoreCase("Set-Cookie")) {
            return false;
        }
        return true;
    }

    public static final int o(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        return -1;
    }

    public static final int p(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [okio.Buffer, java.lang.Object] */
    public static final boolean q(Source source, int i) {
        long j;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        long nanoTime = System.nanoTime();
        if (source.i().e()) {
            j = source.i().c() - nanoTime;
        } else {
            j = Long.MAX_VALUE;
        }
        source.i().d(Math.min(j, timeUnit.toNanos(i)) + nanoTime);
        try {
            ?? obj = new Object();
            while (source.J0(8192L, obj) != -1) {
                obj.skip(obj.k);
            }
            if (j == Long.MAX_VALUE) {
                source.i().a();
                return true;
            }
            source.i().d(nanoTime + j);
            return true;
        } catch (InterruptedIOException unused) {
            if (j == Long.MAX_VALUE) {
                source.i().a();
                return false;
            }
            source.i().d(nanoTime + j);
            return false;
        } catch (Throwable th) {
            if (j == Long.MAX_VALUE) {
                source.i().a();
            } else {
                source.i().d(nanoTime + j);
            }
            throw th;
        }
    }

    public static final Headers r(List list) {
        Headers.Builder builder = new Headers.Builder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Header header = (Header) it.next();
            builder.a(header.a.s(), header.b.s());
        }
        return builder.b();
    }

    public static final String s(HttpUrl httpUrl, boolean z) {
        httpUrl.getClass();
        int i = httpUrl.e;
        String str = httpUrl.d;
        if (StringsKt.i(str, ":", false)) {
            str = "[" + str + ']';
        }
        if (!z && i == HttpUrl.Companion.b(httpUrl.a)) {
            return str;
        }
        return str + ':' + i;
    }

    public static final List t(List list) {
        list.getClass();
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        unmodifiableList.getClass();
        return unmodifiableList;
    }

    public static final int u(int i, String str) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
                return i;
            }
        }
        return i;
    }
}
