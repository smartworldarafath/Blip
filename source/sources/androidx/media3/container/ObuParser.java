package androidx.media3.container;

import androidx.media3.common.util.ParsableBitArray;
import com.google.common.base.Preconditions;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ObuParser {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FrameHeader {
        public final boolean a;

        public FrameHeader(SequenceHeader sequenceHeader, Obu obu) {
            boolean z;
            boolean z2;
            int i;
            int i2 = obu.a;
            ByteBuffer byteBuffer = obu.b;
            if (i2 != 6 && i2 != 3) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.e(z);
            int min = Math.min(4, byteBuffer.remaining());
            byte[] bArr = new byte[min];
            byteBuffer.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(min, bArr);
            if (!sequenceHeader.a) {
                if (parsableBitArray.f()) {
                    this.a = false;
                    return;
                }
                int g = parsableBitArray.g(2);
                boolean f = parsableBitArray.f();
                if (!sequenceHeader.b) {
                    if (!f) {
                        this.a = true;
                        return;
                    }
                    if (g != 3 && g != 0) {
                        z2 = parsableBitArray.f();
                    } else {
                        z2 = true;
                    }
                    parsableBitArray.n();
                    if (sequenceHeader.d) {
                        if (parsableBitArray.f()) {
                            if (sequenceHeader.e) {
                                parsableBitArray.n();
                            } else {
                                throw new Exception();
                            }
                        }
                        if (!sequenceHeader.c) {
                            if (g != 3) {
                                parsableBitArray.n();
                            }
                            parsableBitArray.o(sequenceHeader.f);
                            if (g != 2 && g != 0 && !z2) {
                                parsableBitArray.o(3);
                            }
                            if (g != 3 && g != 0) {
                                i = parsableBitArray.g(8);
                            } else {
                                i = 255;
                            }
                            this.a = i != 0;
                            return;
                        }
                        throw new Exception();
                    }
                    throw new Exception();
                }
                throw new Exception();
            }
            throw new Exception();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NotYetImplementedException extends Exception {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Obu {
        public final int a;
        public final ByteBuffer b;

        public Obu(int i, ByteBuffer byteBuffer) {
            this.a = i;
            this.b = byteBuffer;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SequenceHeader {
        public final boolean a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final boolean e;
        public final int f;
        public final int g;
        public final boolean h;
        public final boolean i;
        public final boolean j;
        public final boolean k;
        public final boolean l;
        public final byte m;
        public final byte n;
        public final byte o;

        public SequenceHeader(Obu obu) {
            boolean z;
            int i = obu.a;
            ByteBuffer byteBuffer = obu.b;
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(remaining, bArr);
            this.g = parsableBitArray.g(3);
            parsableBitArray.n();
            boolean f = parsableBitArray.f();
            this.a = f;
            if (f) {
                parsableBitArray.g(5);
                this.b = false;
                this.h = false;
            } else {
                if (parsableBitArray.f()) {
                    parsableBitArray.o(64);
                    if (parsableBitArray.f()) {
                        int i2 = 0;
                        while (!parsableBitArray.f()) {
                            i2++;
                        }
                        if (i2 < 32) {
                            parsableBitArray.o(i2);
                        }
                    }
                    boolean f2 = parsableBitArray.f();
                    this.b = f2;
                    if (f2) {
                        parsableBitArray.o(47);
                    }
                } else {
                    this.b = false;
                }
                this.h = parsableBitArray.f();
                int g = parsableBitArray.g(5);
                for (int i3 = 0; i3 <= g; i3++) {
                    parsableBitArray.o(12);
                    if (i3 == 0) {
                        if (parsableBitArray.g(5) > 7) {
                            parsableBitArray.f();
                        }
                    } else if (parsableBitArray.g(5) > 7) {
                        parsableBitArray.n();
                    }
                    if (this.b) {
                        parsableBitArray.n();
                    }
                    if (this.h && parsableBitArray.f()) {
                        if (i3 == 0) {
                            parsableBitArray.g(4);
                        } else {
                            parsableBitArray.o(4);
                        }
                    }
                }
            }
            int g2 = parsableBitArray.g(4);
            int g3 = parsableBitArray.g(4);
            parsableBitArray.o(g2 + 1);
            parsableBitArray.o(g3 + 1);
            if (!this.a) {
                this.c = parsableBitArray.f();
            } else {
                this.c = false;
            }
            if (this.c) {
                parsableBitArray.o(4);
                parsableBitArray.o(3);
            }
            parsableBitArray.o(3);
            if (this.a) {
                this.e = true;
                this.d = true;
                this.f = 0;
            } else {
                parsableBitArray.o(4);
                boolean f3 = parsableBitArray.f();
                if (f3) {
                    parsableBitArray.o(2);
                }
                if (parsableBitArray.f()) {
                    this.d = true;
                } else {
                    this.d = parsableBitArray.f();
                }
                if (this.d) {
                    if (parsableBitArray.f()) {
                        this.e = true;
                    } else {
                        this.e = parsableBitArray.f();
                    }
                } else {
                    this.e = true;
                }
                if (f3) {
                    this.f = parsableBitArray.g(3) + 1;
                } else {
                    this.f = 0;
                }
            }
            parsableBitArray.o(3);
            boolean f4 = parsableBitArray.f();
            if (this.g == 2 && f4) {
                this.i = parsableBitArray.f();
            } else {
                this.i = false;
            }
            if (this.g != 1) {
                this.j = parsableBitArray.f();
            } else {
                this.j = false;
            }
            if (parsableBitArray.f()) {
                this.m = (byte) parsableBitArray.g(8);
                this.n = (byte) parsableBitArray.g(8);
                this.o = (byte) parsableBitArray.g(8);
            } else {
                this.m = (byte) 0;
                this.n = (byte) 0;
                this.o = (byte) 0;
            }
            if (this.j) {
                parsableBitArray.n();
                this.k = false;
                this.l = false;
            } else if (this.m == 1 && this.n == 13 && this.o == 0) {
                this.k = false;
                this.l = false;
            } else {
                parsableBitArray.n();
                int i4 = this.g;
                if (i4 == 0) {
                    this.k = true;
                    this.l = true;
                } else if (i4 == 1) {
                    this.k = false;
                    this.l = false;
                } else if (this.i) {
                    boolean f5 = parsableBitArray.f();
                    this.k = f5;
                    if (f5) {
                        this.l = parsableBitArray.f();
                    } else {
                        this.l = false;
                    }
                } else {
                    this.k = true;
                    this.l = false;
                }
                if (this.k && this.l) {
                    parsableBitArray.g(2);
                }
            }
            parsableBitArray.n();
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            byte b = byteBuffer.get();
            i |= (b & Byte.MAX_VALUE) << (i2 * 7);
            if ((b & 128) == 0) {
                return i;
            }
        }
        return i;
    }

    public static ArrayList b(ByteBuffer byteBuffer) {
        int remaining;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (asReadOnlyBuffer.hasRemaining()) {
            ByteBuffer duplicate = asReadOnlyBuffer.duplicate();
            try {
                byte b = asReadOnlyBuffer.get();
                int i = (b >> 3) & 15;
                if (((b >> 2) & 1) != 0) {
                    asReadOnlyBuffer.get();
                }
                if (((b >> 1) & 1) != 0) {
                    remaining = a(asReadOnlyBuffer);
                } else {
                    remaining = asReadOnlyBuffer.remaining();
                }
                if (asReadOnlyBuffer.position() + remaining > asReadOnlyBuffer.limit()) {
                    break;
                }
                duplicate.limit(asReadOnlyBuffer.position());
                ByteBuffer duplicate2 = asReadOnlyBuffer.duplicate();
                duplicate2.limit(asReadOnlyBuffer.position() + remaining);
                arrayList.add(new Obu(i, duplicate2));
                asReadOnlyBuffer.position(asReadOnlyBuffer.position() + remaining);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }
}
