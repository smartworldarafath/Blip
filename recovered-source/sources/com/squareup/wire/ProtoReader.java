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
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ProtoReader {
    public final BufferedSource a;
    public long b;
    public int d;
    public FieldEncoding h;
    public long c = Long.MAX_VALUE;
    public int e = 2;
    public int f = -1;
    public long g = -1;
    public final ArrayList i = new ArrayList();

    public ProtoReader(BufferedSource bufferedSource) {
        this.a = bufferedSource;
    }

    public void a(int i, FieldEncoding fieldEncoding, Object obj) {
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
        long j = this.b;
        long j2 = this.c;
        if (j <= j2) {
            if (j == j2) {
                this.c = this.g;
                this.g = -1L;
                this.e = 6;
                return;
            }
            this.e = 7;
            return;
        }
        k8.l("Expected to end at ", this.c, " but was ", this.b);
    }

    public final long c() {
        if (this.e == 2) {
            long j = this.b;
            long j2 = this.c;
            if (j <= j2) {
                long j3 = j2 - j;
                this.a.W0(j3);
                this.e = 6;
                this.b = this.c;
                this.c = this.g;
                this.g = -1L;
                return j3;
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

    public long d() {
        if (this.e == 2) {
            int i = this.d + 1;
            this.d = i;
            if (i <= 100) {
                ArrayList arrayList = this.i;
                if (i > arrayList.size()) {
                    arrayList.add(new Object());
                }
                long j = this.g;
                this.g = -1L;
                this.e = 6;
                return j;
            }
            k8.j("Wire recursion limit exceeded");
            return 0L;
        }
        u2.l("Unexpected call to beginMessage()");
        return 0L;
    }

    public final long e(long j) {
        if (j >= 0) {
            long j2 = this.b;
            long j3 = this.c;
            if (j2 <= j3) {
                if (j <= j3 - j2) {
                    return j2 + j;
                }
            } else {
                throw new EOFException();
            }
        }
        throw new EOFException();
    }

    public ByteString f(long j) {
        if (this.e == 6) {
            int i = this.d - 1;
            this.d = i;
            if (i >= 0 && this.g == -1) {
                if (this.b != this.c && i != 0) {
                    k8.l("Expected to end at ", this.c, " but was ", this.b);
                    return null;
                }
                this.c = j;
                Buffer buffer = (Buffer) this.i.get(i);
                long j2 = buffer.k;
                if (j2 > 0) {
                    return buffer.s(j2);
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
        byte j = j();
        if (j >= 0) {
            return j;
        }
        int i2 = j & Byte.MAX_VALUE;
        byte j2 = j();
        if (j2 >= 0) {
            i = j2 << 7;
        } else {
            i2 |= (j2 & Byte.MAX_VALUE) << 7;
            byte j3 = j();
            if (j3 >= 0) {
                i = j3 << 14;
            } else {
                i2 |= (j3 & Byte.MAX_VALUE) << 14;
                byte j4 = j();
                if (j4 >= 0) {
                    i = j4 << 21;
                } else {
                    int i3 = i2 | ((j4 & Byte.MAX_VALUE) << 21);
                    byte j5 = j();
                    int i4 = i3 | (j5 << 28);
                    if (j5 < 0) {
                        for (int i5 = 0; i5 < 5; i5++) {
                            if (j() < 0) {
                            }
                        }
                        StringBuilder sb = new StringBuilder("Malformed VARINT. Reader position: ");
                        sb.append(this.b);
                        sb.append(". Last read tag: ");
                        throw new ProtocolException(q.j(sb, this.f, '.'));
                    }
                    return i4;
                }
            }
        }
        return i | i2;
    }

    public int h() {
        int i = this.e;
        if (i == 7) {
            this.e = 2;
            return this.f;
        }
        if (i == 6) {
            while (this.b < this.c && !this.a.J()) {
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
                                t(i2);
                            } else {
                                this.h = FieldEncoding.m;
                                this.e = 2;
                                int g2 = g();
                                r(g2, this.f);
                                if (this.g == -1) {
                                    long e = e(g2);
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

    public FieldEncoding i() {
        return this.h;
    }

    public final byte j() {
        e(1L);
        BufferedSource bufferedSource = this.a;
        bufferedSource.W0(1L);
        this.b++;
        return bufferedSource.readByte();
    }

    public ByteString k() {
        long c = c();
        BufferedSource bufferedSource = this.a;
        bufferedSource.W0(c);
        return bufferedSource.s(c);
    }

    public int l() {
        int i = this.e;
        if (i != 5 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED32 or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        e(4L);
        BufferedSource bufferedSource = this.a;
        bufferedSource.W0(4L);
        this.b += 4;
        int D0 = bufferedSource.D0();
        b(5);
        return D0;
    }

    public long m() {
        int i = this.e;
        if (i != 1 && i != 2) {
            StringBuilder sb = new StringBuilder("Expected FIXED64 or LENGTH_DELIMITED but was ");
            sb.append(this.e);
            sb.append(". Reader position: ");
            sb.append(this.b);
            sb.append(". Last read tag: ");
            throw new ProtocolException(q.j(sb, this.f, '.'));
        }
        e(8L);
        BufferedSource bufferedSource = this.a;
        bufferedSource.W0(8L);
        this.b += 8;
        long O0 = bufferedSource.O0();
        b(1);
        return O0;
    }

    public String n() {
        long c = c();
        BufferedSource bufferedSource = this.a;
        bufferedSource.W0(c);
        return bufferedSource.p(c);
    }

    public void o(int i) {
        FieldEncoding i2 = i();
        i2.getClass();
        a(i, i2, i2.a().c(this));
    }

    public int p() {
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

    public long q() {
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
            if ((j() & 128) == 0) {
                b(0);
                return j;
            }
        }
        StringBuilder sb2 = new StringBuilder("Malformed VARINT. Reader position: ");
        sb2.append(this.b);
        sb2.append(". Last read tag: ");
        throw new ProtocolException(q.j(sb2, this.f, '.'));
    }

    public final void r(int i, int i2) {
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

    public void s() {
        int i = this.e;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 5) {
                        l();
                        return;
                    } else {
                        u2.l("Unexpected call to skip()");
                        return;
                    }
                }
                this.a.skip(c());
                return;
            }
            m();
            return;
        }
        q();
    }

    public final void t(int i) {
        while (this.b < this.c) {
            BufferedSource bufferedSource = this.a;
            if (bufferedSource.J()) {
                break;
            }
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
                                        l();
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
                                        t(i2);
                                    } finally {
                                    }
                                } else {
                                    throw new IOException("Wire recursion limit exceeded");
                                }
                                this.d--;
                            }
                        } else {
                            int g2 = g();
                            r(g2, i2);
                            long j2 = g2;
                            long e = e(j2);
                            bufferedSource.skip(j2);
                            this.b = e;
                        }
                    } else {
                        this.e = 1;
                        m();
                    }
                } else {
                    this.e = 0;
                    q();
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
