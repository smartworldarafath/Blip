package androidx.media3.extractor.text.cea;

import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CeaDecoder implements SubtitleDecoder {
    public final ArrayDeque a = new ArrayDeque();
    public final ArrayDeque b;
    public final ArrayDeque c;
    public CeaInputBuffer d;
    public long e;
    public long f;
    public long g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CeaInputBuffer extends SubtitleInputBuffer implements Comparable<CeaInputBuffer> {
        public long r;

        @Override // java.lang.Comparable
        public final int compareTo(CeaInputBuffer ceaInputBuffer) {
            CeaInputBuffer ceaInputBuffer2 = ceaInputBuffer;
            if (e(4) != ceaInputBuffer2.e(4)) {
                if (e(4)) {
                    return 1;
                }
                return -1;
            }
            long j = this.n - ceaInputBuffer2.n;
            if (j == 0) {
                j = this.r - ceaInputBuffer2.r;
                if (j == 0) {
                    return 0;
                }
            }
            if (j > 0) {
                return 1;
            }
            return -1;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CeaOutputBuffer extends SubtitleOutputBuffer {
        public b o;

        @Override // androidx.media3.decoder.DecoderOutputBuffer
        public final void g() {
            CeaDecoder ceaDecoder = this.o.a;
            f();
            ceaDecoder.b.add(this);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.media3.extractor.text.cea.CeaDecoder$CeaOutputBuffer, java.lang.Object] */
    public CeaDecoder() {
        for (int i = 0; i < 10; i++) {
            this.a.add(new DecoderInputBuffer(1));
        }
        this.b = new ArrayDeque();
        for (int i2 = 0; i2 < 2; i2++) {
            ArrayDeque arrayDeque = this.b;
            b bVar = new b(this);
            ?? obj = new Object();
            obj.o = bVar;
            arrayDeque.add(obj);
        }
        this.c = new ArrayDeque();
        this.g = -9223372036854775807L;
    }

    @Override // androidx.media3.decoder.Decoder
    public final void b(long j) {
        this.g = j;
    }

    @Override // androidx.media3.decoder.Decoder
    public final void f(SubtitleInputBuffer subtitleInputBuffer) {
        boolean z;
        if (subtitleInputBuffer == this.d) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) subtitleInputBuffer;
        if (!ceaInputBuffer.e(4)) {
            long j = ceaInputBuffer.n;
            if (j != Long.MIN_VALUE) {
                long j2 = this.g;
                if (j2 != -9223372036854775807L && j < j2) {
                    ceaInputBuffer.f();
                    this.a.add(ceaInputBuffer);
                    this.d = null;
                }
            }
        }
        long j3 = this.f;
        this.f = 1 + j3;
        ceaInputBuffer.r = j3;
        this.c.add(ceaInputBuffer);
        this.d = null;
    }

    @Override // androidx.media3.decoder.Decoder
    public void flush() {
        ArrayDeque arrayDeque;
        this.f = 0L;
        this.e = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.c;
            boolean isEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.a;
            if (isEmpty) {
                break;
            }
            CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) arrayDeque2.poll();
            String str = Util.a;
            ceaInputBuffer.f();
            arrayDeque.add(ceaInputBuffer);
        }
        CeaInputBuffer ceaInputBuffer2 = this.d;
        if (ceaInputBuffer2 != null) {
            ceaInputBuffer2.f();
            arrayDeque.add(ceaInputBuffer2);
            this.d = null;
        }
    }

    public abstract Subtitle g();

    public abstract void h(SubtitleInputBuffer subtitleInputBuffer);

    @Override // androidx.media3.decoder.Decoder
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public abstract SubtitleInputBuffer e();

    @Override // androidx.media3.decoder.Decoder
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public SubtitleOutputBuffer d() {
        ArrayDeque arrayDeque = this.b;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        while (true) {
            ArrayDeque arrayDeque2 = this.c;
            if (!arrayDeque2.isEmpty()) {
                CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) arrayDeque2.peek();
                String str = Util.a;
                if (ceaInputBuffer.n <= this.e) {
                    CeaInputBuffer ceaInputBuffer2 = (CeaInputBuffer) arrayDeque2.poll();
                    boolean e = ceaInputBuffer2.e(4);
                    ArrayDeque arrayDeque3 = this.a;
                    if (e) {
                        SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) arrayDeque.pollFirst();
                        subtitleOutputBuffer.j |= 4;
                        ceaInputBuffer2.f();
                        arrayDeque3.add(ceaInputBuffer2);
                        return subtitleOutputBuffer;
                    }
                    h(ceaInputBuffer2);
                    if (k()) {
                        Subtitle g = g();
                        SubtitleOutputBuffer subtitleOutputBuffer2 = (SubtitleOutputBuffer) arrayDeque.pollFirst();
                        long j = ceaInputBuffer2.n;
                        subtitleOutputBuffer2.k = j;
                        subtitleOutputBuffer2.m = g;
                        subtitleOutputBuffer2.n = j;
                        ceaInputBuffer2.f();
                        arrayDeque3.add(ceaInputBuffer2);
                        return subtitleOutputBuffer2;
                    }
                    ceaInputBuffer2.f();
                    arrayDeque3.add(ceaInputBuffer2);
                } else {
                    return null;
                }
            } else {
                return null;
            }
        }
    }

    public abstract boolean k();
}
