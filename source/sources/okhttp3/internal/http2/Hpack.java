package okhttp3.internal.http2;

import defpackage.k8;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.http2.Huffman;
import okio.Buffer;
import okio.ByteString;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Hpack {
    public static final Header[] a;
    public static final Map b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Reader {
        public final RealBufferedSource c;
        public int f;
        public int g;
        public int a = 4096;
        public final ArrayList b = new ArrayList();
        public Header[] d = new Header[8];
        public int e = 7;

        public Reader(Http2Reader.ContinuationSource continuationSource) {
            this.c = new RealBufferedSource(continuationSource);
        }

        public final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.d.length;
                while (true) {
                    length--;
                    i2 = this.e;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.d[length];
                    header.getClass();
                    int i4 = header.c;
                    i -= i4;
                    this.g -= i4;
                    this.f--;
                    i3++;
                }
                Header[] headerArr = this.d;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f);
                this.e += i3;
            }
            return i3;
        }

        public final ByteString b(int i) {
            if (i >= 0) {
                Header[] headerArr = Hpack.a;
                if (i <= headerArr.length - 1) {
                    return headerArr[i].a;
                }
            }
            int length = this.e + 1 + (i - Hpack.a.length);
            if (length >= 0) {
                Header[] headerArr2 = this.d;
                if (length < headerArr2.length) {
                    Header header = headerArr2[length];
                    header.getClass();
                    return header.a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        public final void c(Header header) {
            this.b.add(header);
            int i = header.c;
            int i2 = this.a;
            if (i > i2) {
                ArraysKt.m(0, r7.length, null, this.d);
                this.e = this.d.length - 1;
                this.f = 0;
                this.g = 0;
                return;
            }
            a((this.g + i) - i2);
            int i3 = this.f + 1;
            Header[] headerArr = this.d;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.e = this.d.length - 1;
                this.d = headerArr2;
            }
            int i4 = this.e;
            this.e = i4 - 1;
            this.d[i4] = header;
            this.f++;
            this.g += i;
        }

        /* JADX WARN: Type inference failed for: r11v3, types: [okio.Buffer, java.lang.Object] */
        public final ByteString d() {
            boolean z;
            RealBufferedSource realBufferedSource = this.c;
            byte readByte = realBufferedSource.readByte();
            byte[] bArr = Util.a;
            int i = readByte & 255;
            int i2 = 0;
            if ((readByte & 128) == 128) {
                z = true;
            } else {
                z = false;
            }
            long e = e(i, 127);
            if (z) {
                ?? obj = new Object();
                int[] iArr = Huffman.a;
                realBufferedSource.getClass();
                Huffman.Node node = Huffman.c;
                Huffman.Node node2 = node;
                int i3 = 0;
                for (long j = 0; j < e; j++) {
                    byte readByte2 = realBufferedSource.readByte();
                    byte[] bArr2 = Util.a;
                    i2 = (i2 << 8) | (readByte2 & 255);
                    i3 += 8;
                    while (i3 >= 8) {
                        Huffman.Node[] nodeArr = node2.a;
                        nodeArr.getClass();
                        node2 = nodeArr[(i2 >>> (i3 - 8)) & 255];
                        node2.getClass();
                        if (node2.a == null) {
                            obj.g0(node2.b);
                            i3 -= node2.c;
                            node2 = node;
                        } else {
                            i3 -= 8;
                        }
                    }
                }
                while (i3 > 0) {
                    Huffman.Node[] nodeArr2 = node2.a;
                    nodeArr2.getClass();
                    Huffman.Node node3 = nodeArr2[(i2 << (8 - i3)) & 255];
                    node3.getClass();
                    int i4 = node3.c;
                    if (node3.a != null || i4 > i3) {
                        break;
                    }
                    obj.g0(node3.b);
                    i3 -= i4;
                    node2 = node;
                }
                return obj.s(obj.k);
            }
            return realBufferedSource.s(e);
        }

        public final int e(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                byte readByte = this.c.readByte();
                byte[] bArr = Util.a;
                int i5 = readByte & 255;
                if ((readByte & 128) != 0) {
                    i2 += (readByte & Byte.MAX_VALUE) << i4;
                    i4 += 7;
                } else {
                    return i2 + (i5 << i4);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Writer {
        public final Buffer a;
        public boolean c;
        public int g;
        public int h;
        public int b = Integer.MAX_VALUE;
        public int d = 4096;
        public Header[] e = new Header[8];
        public int f = 7;

        public Writer(Buffer buffer) {
            this.a = buffer;
        }

        public final void a(int i) {
            int i2;
            if (i > 0) {
                int length = this.e.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.e[length];
                    header.getClass();
                    i -= header.c;
                    int i4 = this.h;
                    Header header2 = this.e[length];
                    header2.getClass();
                    this.h = i4 - header2.c;
                    this.g--;
                    i3++;
                    length--;
                }
                Header[] headerArr = this.e;
                int i5 = i2 + 1;
                System.arraycopy(headerArr, i5, headerArr, i5 + i3, this.g);
                Header[] headerArr2 = this.e;
                int i6 = this.f + 1;
                Arrays.fill(headerArr2, i6, i6 + i3, (Object) null);
                this.f += i3;
            }
        }

        public final void b(Header header) {
            int i = header.c;
            int i2 = this.d;
            if (i > i2) {
                Header[] headerArr = this.e;
                ArraysKt.m(0, headerArr.length, null, headerArr);
                this.f = this.e.length - 1;
                this.g = 0;
                this.h = 0;
                return;
            }
            a((this.h + i) - i2);
            int i3 = this.g + 1;
            Header[] headerArr2 = this.e;
            if (i3 > headerArr2.length) {
                Header[] headerArr3 = new Header[headerArr2.length * 2];
                System.arraycopy(headerArr2, 0, headerArr3, headerArr2.length, headerArr2.length);
                this.f = this.e.length - 1;
                this.e = headerArr3;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            this.e[i4] = header;
            this.g++;
            this.h += i;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [okio.Buffer, java.lang.Object] */
        public final void c(ByteString byteString) {
            byteString.getClass();
            int[] iArr = Huffman.a;
            int e = byteString.e();
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < e; i++) {
                byte j3 = byteString.j(i);
                byte[] bArr = Util.a;
                j2 += Huffman.b[j3 & 255];
            }
            int i2 = (int) ((j2 + 7) >> 3);
            int e2 = byteString.e();
            Buffer buffer = this.a;
            if (i2 < e2) {
                ?? obj = new Object();
                int[] iArr2 = Huffman.a;
                int e3 = byteString.e();
                int i3 = 0;
                for (int i4 = 0; i4 < e3; i4++) {
                    byte j4 = byteString.j(i4);
                    byte[] bArr2 = Util.a;
                    int i5 = j4 & 255;
                    int i6 = Huffman.a[i5];
                    byte b = Huffman.b[i5];
                    j = (j << b) | i6;
                    i3 += b;
                    while (i3 >= 8) {
                        i3 -= 8;
                        obj.g0((int) (j >> i3));
                    }
                }
                if (i3 > 0) {
                    obj.g0((int) ((j << (8 - i3)) | (255 >>> i3)));
                }
                ByteString s = obj.s(obj.k);
                e(s.e(), 127, 128);
                buffer.Z(s);
                return;
            }
            e(byteString.e(), 127, 0);
            buffer.Z(byteString);
        }

        public final void d(ArrayList arrayList) {
            int i;
            int i2;
            if (this.c) {
                int i3 = this.b;
                if (i3 < this.d) {
                    e(i3, 31, 32);
                }
                this.c = false;
                this.b = Integer.MAX_VALUE;
                e(this.d, 31, 32);
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                Header header = (Header) arrayList.get(i4);
                ByteString q = header.a.q();
                ByteString byteString = header.b;
                Integer num = (Integer) Hpack.b.get(q);
                if (num != null) {
                    int intValue = num.intValue();
                    i2 = intValue + 1;
                    if (2 <= i2 && i2 < 8) {
                        Header[] headerArr = Hpack.a;
                        if (Intrinsics.a(headerArr[intValue].b, byteString)) {
                            i = i2;
                        } else if (Intrinsics.a(headerArr[i2].b, byteString)) {
                            i2 = intValue + 2;
                            i = i2;
                        }
                    }
                    i = i2;
                    i2 = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i2 == -1) {
                    int i5 = this.f + 1;
                    int length = this.e.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        Header header2 = this.e[i5];
                        header2.getClass();
                        if (Intrinsics.a(header2.a, q)) {
                            Header header3 = this.e[i5];
                            header3.getClass();
                            if (Intrinsics.a(header3.b, byteString)) {
                                i2 = Hpack.a.length + (i5 - this.f);
                                break;
                            } else if (i == -1) {
                                i = (i5 - this.f) + Hpack.a.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i2 != -1) {
                    e(i2, 127, 128);
                } else if (i == -1) {
                    this.a.g0(64);
                    c(q);
                    c(byteString);
                    b(header);
                } else {
                    ByteString byteString2 = Header.d;
                    q.getClass();
                    byteString2.getClass();
                    if (q.n(0, byteString2, byteString2.e()) && !Intrinsics.a(Header.i, q)) {
                        e(i, 15, 0);
                        c(byteString);
                    } else {
                        e(i, 63, 64);
                        c(byteString);
                        b(header);
                    }
                }
            }
        }

        public final void e(int i, int i2, int i3) {
            Buffer buffer = this.a;
            if (i < i2) {
                buffer.g0(i | i3);
                return;
            }
            buffer.g0(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                buffer.g0(128 | (i4 & 127));
                i4 >>>= 7;
            }
            buffer.g0(i4);
        }
    }

    static {
        Header header = new Header("", Header.i);
        ByteString byteString = Header.f;
        Header header2 = new Header("GET", byteString);
        Header header3 = new Header("POST", byteString);
        ByteString byteString2 = Header.g;
        Header header4 = new Header("/", byteString2);
        Header header5 = new Header("/index.html", byteString2);
        ByteString byteString3 = Header.h;
        Header header6 = new Header("http", byteString3);
        Header header7 = new Header("https", byteString3);
        ByteString byteString4 = Header.e;
        Header[] headerArr = {header, header2, header3, header4, header5, header6, header7, new Header("200", byteString4), new Header("204", byteString4), new Header("206", byteString4), new Header("304", byteString4), new Header("400", byteString4), new Header("404", byteString4), new Header("500", byteString4), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        a = headerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(headerArr[i].a)) {
                linkedHashMap.put(headerArr[i].a, Integer.valueOf(i));
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        unmodifiableMap.getClass();
        b = unmodifiableMap;
    }

    public static void a(ByteString byteString) {
        byteString.getClass();
        int e = byteString.e();
        for (int i = 0; i < e; i++) {
            byte j = byteString.j(i);
            if (65 <= j && j < 91) {
                k8.j("PROTOCOL_ERROR response malformed: mixed case name: ".concat(byteString.s()));
                return;
            }
        }
    }
}
