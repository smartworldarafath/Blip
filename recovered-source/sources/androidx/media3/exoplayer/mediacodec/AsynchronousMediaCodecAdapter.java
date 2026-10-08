package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.common.util.CircularIntArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import com.google.common.base.Preconditions;
import defpackage.f3;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsynchronousMediaCodecAdapter implements MediaCodecAdapter {
    public final MediaCodec a;
    public final AsynchronousMediaCodecCallback b;
    public final MediaCodecBufferEnqueuer c;
    public final LoudnessCodecController d;
    public boolean e;
    public int f = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements MediaCodecAdapter.Factory {
        public final c a;
        public final c b;
        public boolean c = true;

        public Factory(c cVar, c cVar2) {
            this.a = cVar;
            this.b = cVar2;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AsynchronousMediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) {
            MediaCodec mediaCodec;
            MediaCodecBufferEnqueuer asynchronousMediaCodecBufferEnqueuer;
            int i;
            String str = configuration.a.a;
            AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = null;
            try {
                Trace.beginSection("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    if (this.c && Build.VERSION.SDK_INT >= 36) {
                        asynchronousMediaCodecBufferEnqueuer = new SynchronousMediaCodecBufferEnqueuer(mediaCodec);
                        i = 4;
                    } else {
                        asynchronousMediaCodecBufferEnqueuer = new AsynchronousMediaCodecBufferEnqueuer(mediaCodec, (HandlerThread) this.b.get());
                        i = 0;
                    }
                    AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter2 = new AsynchronousMediaCodecAdapter(mediaCodec, (HandlerThread) this.a.get(), asynchronousMediaCodecBufferEnqueuer, configuration.f);
                    try {
                        Trace.endSection();
                        Surface surface = configuration.d;
                        if (surface == null && configuration.a.h && Build.VERSION.SDK_INT >= 35) {
                            i |= 8;
                        }
                        AsynchronousMediaCodecAdapter.t(asynchronousMediaCodecAdapter2, configuration.b, surface, configuration.e, i);
                        return asynchronousMediaCodecAdapter2;
                    } catch (Exception e) {
                        e = e;
                        asynchronousMediaCodecAdapter = asynchronousMediaCodecAdapter2;
                        if (asynchronousMediaCodecAdapter == null) {
                            if (mediaCodec != null) {
                                mediaCodec.release();
                            }
                        } else {
                            asynchronousMediaCodecAdapter.a();
                        }
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                mediaCodec = null;
            }
        }
    }

    public AsynchronousMediaCodecAdapter(MediaCodec mediaCodec, HandlerThread handlerThread, MediaCodecBufferEnqueuer mediaCodecBufferEnqueuer, LoudnessCodecController loudnessCodecController) {
        this.a = mediaCodec;
        this.b = new AsynchronousMediaCodecCallback(handlerThread);
        this.c = mediaCodecBufferEnqueuer;
        this.d = loudnessCodecController;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004f, code lost:
    
        if (r7 == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void t(AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        boolean z;
        LoudnessCodecController loudnessCodecController;
        boolean addMediaCodec;
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = asynchronousMediaCodecAdapter.b;
        MediaCodec mediaCodec = asynchronousMediaCodecAdapter.a;
        HandlerThread handlerThread = asynchronousMediaCodecCallback.b;
        if (asynchronousMediaCodecCallback.c == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(asynchronousMediaCodecCallback, handler);
        asynchronousMediaCodecCallback.c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, mediaCrypto, i);
        Trace.endSection();
        asynchronousMediaCodecAdapter.c.start();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = asynchronousMediaCodecAdapter.d) != null) {
            android.media.LoudnessCodecController loudnessCodecController2 = loudnessCodecController.c;
            if (loudnessCodecController2 != null) {
                addMediaCodec = loudnessCodecController2.addMediaCodec(mediaCodec);
            }
            Preconditions.n(loudnessCodecController.a.add(mediaCodec));
        }
        asynchronousMediaCodecAdapter.f = 1;
    }

    public static String u(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void a() {
        LoudnessCodecController loudnessCodecController;
        LoudnessCodecController loudnessCodecController2;
        try {
            if (this.f == 1) {
                this.c.shutdown();
                AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
                synchronized (asynchronousMediaCodecCallback.a) {
                    asynchronousMediaCodecCallback.m = true;
                    asynchronousMediaCodecCallback.b.quit();
                    asynchronousMediaCodecCallback.a();
                }
            }
            this.f = 2;
            if (!this.e) {
                try {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 30 && i < 33) {
                        this.a.stop();
                    }
                    if (i >= 35 && (loudnessCodecController2 = this.d) != null) {
                        loudnessCodecController2.a(this.a);
                    }
                    this.a.release();
                    this.e = true;
                } finally {
                }
            }
        } catch (Throwable th) {
            if (!this.e) {
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30 && i2 < 33) {
                        this.a.stop();
                    }
                    if (i2 >= 35 && (loudnessCodecController = this.d) != null) {
                        loudnessCodecController.a(this.a);
                    }
                    this.a.release();
                    this.e = true;
                } finally {
                }
            }
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void b(int i, CryptoInfo cryptoInfo, long j, int i2) {
        this.c.b(i, cryptoInfo, j, i2);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void c(Bundle bundle) {
        this.c.c(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void d(int i, int i2, int i3, long j) {
        this.c.d(i, i2, i3, j);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final boolean e(MediaCodecAdapter.OnBufferAvailableListener onBufferAvailableListener) {
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        synchronized (asynchronousMediaCodecCallback.a) {
            asynchronousMediaCodecCallback.o = onBufferAvailableListener;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void f(int i) {
        this.a.releaseOutputBuffer(i, false);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void flush() {
        this.c.flush();
        this.a.flush();
        final AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        synchronized (asynchronousMediaCodecCallback.a) {
            asynchronousMediaCodecCallback.l++;
            Handler handler = asynchronousMediaCodecCallback.c;
            String str = Util.a;
            handler.post(new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.d
                @Override // java.lang.Runnable
                public final void run() {
                    AsynchronousMediaCodecCallback asynchronousMediaCodecCallback2 = AsynchronousMediaCodecCallback.this;
                    synchronized (asynchronousMediaCodecCallback2.a) {
                        try {
                            if (asynchronousMediaCodecCallback2.m) {
                                return;
                            }
                            long j = asynchronousMediaCodecCallback2.l - 1;
                            asynchronousMediaCodecCallback2.l = j;
                            if (j > 0) {
                                return;
                            }
                            if (j < 0) {
                                IllegalStateException illegalStateException = new IllegalStateException();
                                synchronized (asynchronousMediaCodecCallback2.a) {
                                    asynchronousMediaCodecCallback2.n = illegalStateException;
                                }
                                return;
                            }
                            asynchronousMediaCodecCallback2.a();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
        this.a.start();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void g(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener(this) { // from class: androidx.media3.exoplayer.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                onFrameRenderedListener.a(j);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final MediaFormat h() {
        MediaFormat mediaFormat;
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        synchronized (asynchronousMediaCodecCallback.a) {
            try {
                mediaFormat = asynchronousMediaCodecCallback.h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void i() {
        this.a.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void j(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022 A[Catch: all -> 0x0024, DONT_GENERATE, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0026, B:20:0x003e, B:23:0x0034, B:24:0x0040, B:25:0x0045), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0026, B:20:0x003e, B:23:0x0034, B:24:0x0040, B:25:0x0045), top: B:3:0x000a }] */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int k() {
        boolean z;
        this.c.a();
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        synchronized (asynchronousMediaCodecCallback.a) {
            try {
                asynchronousMediaCodecCallback.b();
                boolean z2 = false;
                if (asynchronousMediaCodecCallback.l <= 0 && !asynchronousMediaCodecCallback.m) {
                    z = false;
                    int i = -1;
                    if (!z) {
                        return -1;
                    }
                    CircularIntArray circularIntArray = asynchronousMediaCodecCallback.d;
                    int i2 = circularIntArray.b;
                    int i3 = circularIntArray.c;
                    if (i2 == i3) {
                        z2 = true;
                    }
                    if (!z2) {
                        if (i2 != i3) {
                            i = circularIntArray.a[i2];
                            circularIntArray.b = (i2 + 1) & circularIntArray.d;
                        } else {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                    }
                    return i;
                }
                z = true;
                int i4 = -1;
                if (!z) {
                }
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void l(final f3 f3Var) {
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        Runnable runnable = new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.b
            @Override // java.lang.Runnable
            public final void run() {
                AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = AsynchronousMediaCodecAdapter.this;
                f3 f3Var2 = f3Var;
                asynchronousMediaCodecAdapter.c.a();
                AsynchronousMediaCodecCallback asynchronousMediaCodecCallback2 = asynchronousMediaCodecAdapter.b;
                synchronized (asynchronousMediaCodecCallback2.a) {
                    asynchronousMediaCodecCallback2.b();
                    f3Var2.run();
                }
            }
        };
        synchronized (asynchronousMediaCodecCallback.a) {
            asynchronousMediaCodecCallback.b();
            runnable.run();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022 A[Catch: all -> 0x0024, DONT_GENERATE, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0027, B:19:0x0032, B:22:0x0036, B:24:0x0042, B:25:0x0069, B:29:0x005f, B:30:0x006b, B:31:0x0070), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0027 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0027, B:19:0x0032, B:22:0x0036, B:24:0x0042, B:25:0x0069, B:29:0x005f, B:30:0x006b, B:31:0x0070), top: B:3:0x000a }] */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int m(MediaCodec.BufferInfo bufferInfo) {
        boolean z;
        this.c.a();
        AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.b;
        synchronized (asynchronousMediaCodecCallback.a) {
            try {
                asynchronousMediaCodecCallback.b();
                boolean z2 = false;
                if (asynchronousMediaCodecCallback.l <= 0 && !asynchronousMediaCodecCallback.m) {
                    z = false;
                    if (!z) {
                        return -1;
                    }
                    CircularIntArray circularIntArray = asynchronousMediaCodecCallback.e;
                    int i = circularIntArray.b;
                    int i2 = circularIntArray.c;
                    if (i == i2) {
                        z2 = true;
                    }
                    if (z2) {
                        return -1;
                    }
                    if (i != i2) {
                        int i3 = circularIntArray.a[i];
                        circularIntArray.b = circularIntArray.d & (i + 1);
                        if (i3 >= 0) {
                            asynchronousMediaCodecCallback.h.getClass();
                            MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) asynchronousMediaCodecCallback.f.remove();
                            bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                        } else if (i3 == -2) {
                            asynchronousMediaCodecCallback.h = (MediaFormat) asynchronousMediaCodecCallback.g.remove();
                        }
                        return i3;
                    }
                    throw new ArrayIndexOutOfBoundsException();
                }
                z = true;
                if (!z) {
                }
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void n(int i) {
        this.a.setVideoScalingMode(i);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer o(int i) {
        return this.a.getInputBuffer(i);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void p(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final ByteBuffer q(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void r(ArrayList arrayList) {
        this.a.subscribeToVendorParameters(arrayList);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public final void s(ArrayList arrayList) {
        this.a.unsubscribeFromVendorParameters(arrayList);
    }
}
