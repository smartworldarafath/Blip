package com.abovevacant.epitaph.io;

import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WireReader {
    public final byte[] a;
    public int b;
    public final int c;

    public WireReader(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.b = 0;
        this.c = length;
    }

    public static void a(int i, int i2, int i3) {
        String str;
        if (i2 == i3) {
            return;
        }
        StringBuilder j = jb.j("Field ", i, ": expected ");
        String str2 = "varint";
        if (i2 == 0) {
            str = "varint";
        } else if (i2 == 1) {
            str = "fixed64";
        } else if (i2 == 2) {
            str = "length-delimited";
        } else if (i2 == 5) {
            str = "fixed32";
        } else {
            str = "unknown";
        }
        j.append(str);
        j.append(" (wire type ");
        j.append(i2);
        j.append(") but got ");
        if (i3 != 0) {
            if (i3 == 1) {
                str2 = "fixed64";
            } else if (i3 == 2) {
                str2 = "length-delimited";
            } else if (i3 == 5) {
                str2 = "fixed32";
            } else {
                str2 = "unknown";
            }
        }
        j.append(str2);
        j.append(" (wire type ");
        j.append(i3);
        j.append(")");
        throw new IOException(j.toString());
    }

    public final boolean b() {
        if (g() != 0) {
            return true;
        }
        return false;
    }

    public final byte[] c() {
        int g = (int) g();
        if (g >= 0) {
            int i = this.b;
            if (this.c - i >= g) {
                byte[] bArr = new byte[g];
                System.arraycopy(this.a, i, bArr, 0, g);
                this.b += g;
                return bArr;
            }
            throw new EOFException("Not enough bytes for length-delimited field");
        }
        k8.j(q.g(g, "Negative length: "));
        return null;
    }

    public final WireReader d() {
        return new WireReader(c());
    }

    public final String e() {
        return new String(c(), StandardCharsets.UTF_8);
    }

    public final int f() {
        if (this.b < this.c) {
            return (int) g();
        }
        return 0;
    }

    public final long g() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.b;
            if (i2 < this.c) {
                this.b = i2 + 1;
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((this.a[i2] & 128) == 0) {
                    return j;
                }
            } else {
                throw new EOFException("Truncated varint");
            }
        }
        k8.j("Malformed varint");
        return 0L;
    }

    public final void h(int i) {
        if (i != 0) {
            int i2 = this.c;
            if (i != 1) {
                if (i != 2) {
                    if (i == 5) {
                        int i3 = this.b;
                        if (i2 - i3 >= 4) {
                            this.b = i3 + 4;
                            return;
                        }
                        throw new EOFException("Not enough bytes to skip fixed32");
                    }
                    k8.j(q.g(i, "Unknown wire type: "));
                    return;
                }
                int g = (int) g();
                int i4 = this.b;
                if (i2 - i4 >= g) {
                    this.b = i4 + g;
                    return;
                }
                throw new EOFException("Not enough bytes to skip length-delimited");
            }
            int i5 = this.b;
            if (i2 - i5 >= 8) {
                this.b = i5 + 8;
                return;
            }
            throw new EOFException("Not enough bytes to skip fixed64");
        }
        g();
    }
}
