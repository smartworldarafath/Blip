package com.squareup.wire;

import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import kotlin.collections.ArraysKt;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.SegmentedByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ByteArrayProtoReader32 implements ProtoReader32 {
    public final byte[] a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public FieldEncoding h;
    public final ArrayList i;
    public ProtoReader32AsProtoReader j;

    public ByteArrayProtoReader32(int i, byte[] bArr) {
        bArr.getClass();
        this.a = bArr;
        this.b = 0;
        this.c = i;
        if (bArr.length >= 0) {
            int length = bArr.length;
            if (i >= 0 && i <= length) {
                this.e = 2;
                this.f = -1;
                this.g = -1;
                this.i = new ArrayList();
                return;
            }
            throw new IllegalArgumentException(("limit=" + this.c + " must be between pos=" + this.b + " and source size " + bArr.length).toString());
        }
        k8.h(this.b, bArr.length, " must be between 0 and source size ", "pos=");
        throw null;
    }

    public final void a(int i, FieldEncoding fieldEncoding, Object obj) {
        fieldEncoding.getClass();
        ProtoWriter protoWriter = new ProtoWriter((BufferedSink) this.i.get(this.d - 1));
        ProtoAdapter a = fieldEncoding.a();
        a.getClass();
        a.f(protoWriter, i, obj);
    }

    public final void b(int i) {
        if (this.e == i) {
            this.e = 6;
            return;
        }
        int i2 = this.b;
        int i3 = this.c;
        if (i2 <= i3) {
            if (i2 == i3) {
                this.c = this.g;
                this.g = -1;
                this.e = 6;
                return;
            }
            this.e = 7;
            return;
        }
        throw new IOException("Expected to end at " + this.c + " but was " + this.b);
    }

    public final int c() {
        if (this.e == 2) {
            int i = this.b;
            int i2 = this.c;
            if (i <= i2) {
                int i3 = i2 - i;
                this.e = 6;
                this.c = this.g;
                this.g = -1;
                return i3;
            }
            throw new EOFException();
        }
        StringBuilder sb = new StringBuilder("Expected LENGTH_DELIMITED but was ");
        sb.append(this.e);
        sb.append(". Reader position: ");
        sb.append(this.b);
        sb.append(". Last read tag: ");
        throw new ProtocolException(q.j(sb, this.f, '.'));
    }

    public final int d() {
        if (this.e == 2) {
            int i = this.d + 1;
            this.d = i;
            if (i <= 100) {
                ArrayList arrayList = this.i;
                if (i > arrayList.size()) {
                    arrayList.add(new Object());
                }
                int i2 = this.g;
                this.g = -1;
                this.e = 6;
                return i2;
            }
            k8.j("Wire recursion limit exceeded");
            return 0;
        }
        u2.l("Unexpected call to beginMessage()");
        return 0;
    }

    public final int e(int i) {
        if (i >= 0) {
            int i2 = this.b;
            int i3 = this.c;
            if (i2 <= i3) {
                if (i <= i3 - i2) {
                    return i2 + i;
                }
            } else {
                throw new EOFException();
            }
        }
        throw new EOFException();
    }

    public final ByteString f(int i) {
        if (this.e == 6) {
            int i2 = this.d - 1;
            this.d = i2;
            if (i2 >= 0 && this.g == -1) {
                if (this.b != this.c && i2 != 0) {
                    throw new IOException("Expected to end at " + this.c + " but was " + this.b);
                }
                this.c = i;
                Buffer buffer = (Buffer) this.i.get(i2);
                long j = buffer.k;
                if (j > 0) {
                    return buffer.s(j);
                }
                return ByteString.m;
            }
            u2.l("No corresponding call to beginMessage()");
            return null;
        }
        u2.l("Unexpected call to endMessage()");
        return null;
    }

    public final int g() {
        int i;
        byte i2 = i();
        if (i2 >= 0) {
            return i2;
        }
        int i3 = i2 & Byte.MAX_VALUE;
        byte i4 = i();
        if (i4 >= 0) {
            i = i4 << 7;
        } else {
            i3 |= (i4 & Byte.MAX_VALUE) << 7;
            byte i5 = i();
            if (i5 >= 0) {
                i = i5 << 14;
            } else {
                i3 |= (i5 & Byte.MAX_VALUE) << 14;
                byte i6 = i();
                if (i6 >= 0) {
                    i = i6 << 21;
                } else {
                    int i7 = i3 | ((i6 & Byte.MAX_VALUE) << 21);
                    byte i8 = i();
                    int i9 = i7 | (i8 << 28);
                    if (i8 < 0) {
                        for (int i10 = 0; i10 < 5; i10++) {
                            if (i() < 0) {
                            }
                        }
                        StringBuilder sb = new StringBuilder("Malformed VARINT. Reader position: ");
                        sb.append(this.b);
                        sb.append(". Last read tag: ");
                        throw new ProtocolException(q.j(sb, this.f, '.'));
                    }
                    return i9;
                }
            }
        }
        return i | i3;
    }

    public final int h() {
        int i = this.e;
        if (i == 7) {
            this.e = 2;
            return this.f;
        }
        if (i == 6) {
            while (this.b < this.c) {
                int g = g();
                if (g != 0) {
                    int i2 = g >>> 3;
                    this.f = i2;
                    int i3 = g & 7;
                    if (i3 != 0) {
                        if (i3 != 1) {
                            if (i3 != 2) {
                                if (i3 != 3) {
                                    if (i3 != 4) {
                                        if (i3 == 5) {
                                            this.h = FieldEncoding.n;
                                            this.e = 5;
                                            return i2;
                                        }
                                        StringBuilder j = jb.j("Unexpected field encoding: ", i3, ". Reader position: ");
                                        j.append(this.b);
                                        j.append(". Last read tag: ");
                                        throw new ProtocolException(q.j(j, this.f, '.'));
                                    }
                                    StringBuilder sb = new StringBuilder("Unexpected end group. Reader position: ");
                                    sb.append(this.b);
                                    sb.append(". Last read tag: ");
                                    throw new ProtocolException(q.j(sb, this.f, '.'));
                                }
                                s(i2);
                            } else {
                                this.h = FieldEncoding.m;
                                this.e = 2;
                                int g2 = g();
                                q(g2, this.f);
                                if (this.g == -1) {
                                    int e = e(g2);
                                    this.g = this.c;
                                    this.c = e;
                                    return this.f;
                                }
                                d.d();
                                return 0;
                            }
                        } else {
                            this.h = FieldEncoding.l;
                            this.e = 1;
                            return i2;
                        }
                    } else {
                        this.h = FieldEncoding.k;
                        this.e = 0;
                        return i2;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder("Unexpected tag 0. Reader position: ");
                    sb2.append(this.b);
                    sb2.append(". Last read tag: ");
                    throw new ProtocolException(q.j(sb2, this.f, '.'));
                }
            }
            return -1;
        }
        u2.l("Unexpected call to nextTag()");
        return 0;
    }

    public final byte i() {
        e(1);
        int i = this.b;
        this.b = i + 1;
        return this.a[i];
    }

    public final ByteString j() {
        int c = c();
        int e = e(c);
        ByteString byteString = ByteString.m;
        int i = this.b;
        byte[] bArr = this.a;
        bArr.getClass();
        SegmentedByteString.b(bArr.length, i, c);
        ByteString byteString2 = new ByteString(ArraysKt.k(bArr, i, c + i));
        this.b = e;
        return byteString2;
    }

    public final int k() {
        int i = this.e;
        if (i != 5 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED32 or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        e(4);
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        byte[] bArr = this.a;
        int i4 = bArr[i2] & 255;
        int i5 = i2 + 2;
        this.b = i5;
        int i6 = ((bArr[i3] & 255) << 8) | i4;
        int i7 = i2 + 3;
        this.b = i7;
        int i8 = i6 | ((bArr[i5] & 255) << 16);
        this.b = i2 + 4;
        int i9 = ((bArr[i7] & 255) << 24) | i8;
        b(5);
        return i9;
    }

    public final long l() {
        int i = this.e;
        if (i != 1 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED64 or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        e(8);
        int i2 = this.b;
        this.b = i2 + 1;
        byte[] bArr = this.a;
        this.b = i2 + 2;
        long j = (bArr[i2] & 255) | ((bArr[r3] & 255) << 8);
        this.b = i2 + 3;
        long j2 = j | ((bArr[r9] & 255) << 16);
        this.b = i2 + 4;
        long j3 = j2 | ((bArr[r3] & 255) << 24);
        this.b = i2 + 5;
        long j4 = j3 | ((bArr[r9] & 255) << 32);
        this.b = i2 + 6;
        long j5 = j4 | ((bArr[r3] & 255) << 40);
        this.b = i2 + 7;
        this.b = i2 + 8;
        long j6 = ((bArr[r3] & 255) << 56) | j5 | ((bArr[r9] & 255) << 48);
        b(1);
        return j6;
    }

    public final String m() {
        int e = e(c());
        String k = StringsKt.k(this.b, e, 4, this.a);
        this.b = e;
        return k;
    }

    public final void n(int i) {
        FieldEncoding fieldEncoding = this.h;
        fieldEncoding.getClass();
        a(i, fieldEncoding, fieldEncoding.a().b(this));
    }

    public final int o() {
        int i = this.e;
        if (i != 0 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        int g = g();
        b(0);
        return g;
    }

    public final long p() {
        int i = this.e;
        if (i != 0 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected VARINT or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        long j = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j |= (r6 & Byte.MAX_VALUE) << i2;
            if ((i() & 128) == 0) {
                b(0);
                return j;
            }
        }
        StringBuilder sb2 = new StringBuilder("WireInput encountered a malformed varint. Reader position: ");
        sb2.append(this.b);
        sb2.append(". Last read tag: ");
        throw new ProtocolException(q.j(sb2, this.f, '.'));
    }

    public final void q(int i, int i2) {
        if (i >= 0) {
            return;
        }
        StringBuilder j = jb.j("Negative length: ", i, ". Reader position: ");
        j.append(this.b);
        j.append(". Last read tag: ");
        j.append(i2);
        j.append('.');
        throw new ProtocolException(j.toString());
    }

    public final void r() {
        int i = this.e;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 5) {
                        k();
                        return;
                    } else {
                        u2.l("Unexpected call to skip()");
                        return;
                    }
                }
                this.b = e(c());
                return;
            }
            l();
            return;
        }
        p();
    }

    public final void s(int i) {
        while (this.b < this.c) {
            int g = g();
            if (g != 0) {
                int i2 = g >>> 3;
                int i3 = g & 7;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 != 4) {
                                    if (i3 == 5) {
                                        this.e = 5;
                                        k();
                                    } else {
                                        StringBuilder j = jb.j("Unexpected field encoding: ", i3, ". Reader position: ");
                                        j.append(this.b);
                                        j.append(". Last read tag: ");
                                        j.append(i2);
                                        j.append('.');
                                        throw new ProtocolException(j.toString());
                                    }
                                } else {
                                    if (i2 == i) {
                                        return;
                                    }
                                    throw new ProtocolException("Unexpected end group. Reader position: " + this.b + ". Last read tag: " + i2 + '.');
                                }
                            } else {
                                int i4 = this.d + 1;
                                this.d = i4;
                                if (i4 <= 100) {
                                    try {
                                        s(i2);
                                    } finally {
                                    }
                                } else {
                                    throw new IOException("Wire recursion limit exceeded");
                                }
                                this.d--;
                            }
                        } else {
                            int g2 = g();
                            q(g2, i2);
                            this.b = e(g2);
                        }
                    } else {
                        this.e = 1;
                        l();
                    }
                } else {
                    this.e = 0;
                    p();
                }
            } else {
                StringBuilder sb = new StringBuilder("Unexpected tag 0. Reader position: ");
                sb.append(this.b);
                sb.append(". Last read tag: ");
                throw new ProtocolException(q.j(sb, this.f, '.'));
            }
        }
        throw new EOFException();
    }
}
