package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class AsynchronousMediaCodecBufferEnqueuer implements MediaCodecBufferEnqueuer {
    public static final ArrayDeque g = new ArrayDeque();
    public static final Object h = new Object();
    public final MediaCodec a;
    public final HandlerThread b;
    public Handler c;
    public final AtomicReference d;
    public final ConditionVariable e;
    public boolean f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MessageParams {
        public int a;
        public int b;
        public final MediaCodec.CryptoInfo c = new MediaCodec.CryptoInfo();
        public long d;
        public int e;
    }

    public AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.a = mediaCodec;
        this.b = handlerThread;
        this.e = conditionVariable;
        this.d = new AtomicReference();
    }

    public static MessageParams e() {
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new MessageParams();
                }
                return (MessageParams) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void a() {
        RuntimeException runtimeException = (RuntimeException) this.d.getAndSet(null);
        if (runtimeException == null) {
        } else {
            throw runtimeException;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void b(int i, CryptoInfo cryptoInfo, long j, int i2) {
        a();
        MessageParams e = e();
        e.a = i;
        e.b = 0;
        e.d = j;
        e.e = i2;
        MediaCodec.CryptoInfo cryptoInfo2 = e.c;
        cryptoInfo2.numSubSamples = cryptoInfo.f;
        int[] iArr = cryptoInfo.d;
        int[] iArr2 = cryptoInfo2.numBytesOfClearData;
        if (iArr != null) {
            if (iArr2 != null && iArr2.length >= iArr.length) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            } else {
                iArr2 = Arrays.copyOf(iArr, iArr.length);
            }
        }
        cryptoInfo2.numBytesOfClearData = iArr2;
        int[] iArr3 = cryptoInfo.e;
        int[] iArr4 = cryptoInfo2.numBytesOfEncryptedData;
        if (iArr3 != null) {
            if (iArr4 != null && iArr4.length >= iArr3.length) {
                System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            } else {
                iArr4 = Arrays.copyOf(iArr3, iArr3.length);
            }
        }
        cryptoInfo2.numBytesOfEncryptedData = iArr4;
        byte[] bArr = cryptoInfo.b;
        byte[] bArr2 = cryptoInfo2.key;
        if (bArr != null) {
            if (bArr2 != null && bArr2.length >= bArr.length) {
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            } else {
                bArr2 = Arrays.copyOf(bArr, bArr.length);
            }
        }
        bArr2.getClass();
        cryptoInfo2.key = bArr2;
        byte[] bArr3 = cryptoInfo.a;
        byte[] bArr4 = cryptoInfo2.iv;
        if (bArr3 != null) {
            if (bArr4 != null && bArr4.length >= bArr3.length) {
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            } else {
                bArr4 = Arrays.copyOf(bArr3, bArr3.length);
            }
        }
        bArr4.getClass();
        cryptoInfo2.iv = bArr4;
        cryptoInfo2.mode = cryptoInfo.c;
        cryptoInfo2.setPattern(new MediaCodec.CryptoInfo.Pattern(cryptoInfo.g, cryptoInfo.h));
        Handler handler = this.c;
        String str = Util.a;
        handler.obtainMessage(2, e).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void c(Bundle bundle) {
        a();
        Handler handler = this.c;
        String str = Util.a;
        handler.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void d(int i, int i2, int i3, long j) {
        a();
        MessageParams e = e();
        e.a = i;
        e.b = i2;
        e.d = j;
        e.e = i3;
        Handler handler = this.c;
        String str = Util.a;
        handler.obtainMessage(1, e).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void flush() {
        if (this.f) {
            try {
                Handler handler = this.c;
                handler.getClass();
                handler.removeCallbacksAndMessages(null);
                ConditionVariable conditionVariable = this.e;
                synchronized (conditionVariable) {
                    conditionVariable.b = false;
                }
                Handler handler2 = this.c;
                handler2.getClass();
                handler2.obtainMessage(3).sendToTarget();
                synchronized (conditionVariable) {
                    while (!conditionVariable.b) {
                        conditionVariable.a.getClass();
                        conditionVariable.wait();
                    }
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void shutdown() {
        if (this.f) {
            flush();
            this.b.quit();
        }
        this.f = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecBufferEnqueuer
    public final void start() {
        if (!this.f) {
            HandlerThread handlerThread = this.b;
            handlerThread.start();
            this.c = new Handler(handlerThread.getLooper()) { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    AsynchronousMediaCodecBufferEnqueuer asynchronousMediaCodecBufferEnqueuer = AsynchronousMediaCodecBufferEnqueuer.this;
                    ArrayDeque arrayDeque = AsynchronousMediaCodecBufferEnqueuer.g;
                    int i = message.what;
                    MessageParams messageParams = null;
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    AtomicReference atomicReference = asynchronousMediaCodecBufferEnqueuer.d;
                                    IllegalStateException illegalStateException = new IllegalStateException(String.valueOf(i));
                                    while (!atomicReference.compareAndSet(null, illegalStateException) && atomicReference.get() == null) {
                                    }
                                } else {
                                    try {
                                        asynchronousMediaCodecBufferEnqueuer.a.setParameters((Bundle) message.obj);
                                    } catch (RuntimeException e) {
                                        AtomicReference atomicReference2 = asynchronousMediaCodecBufferEnqueuer.d;
                                        while (!atomicReference2.compareAndSet(null, e) && atomicReference2.get() == null) {
                                        }
                                    }
                                }
                            } else {
                                asynchronousMediaCodecBufferEnqueuer.e.c();
                            }
                        } else {
                            MessageParams messageParams2 = (MessageParams) message.obj;
                            int i2 = messageParams2.a;
                            MediaCodec.CryptoInfo cryptoInfo = messageParams2.c;
                            long j = messageParams2.d;
                            int i3 = messageParams2.e;
                            try {
                                if (Build.VERSION.SDK_INT >= 31) {
                                    asynchronousMediaCodecBufferEnqueuer.a.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                                } else {
                                    synchronized (AsynchronousMediaCodecBufferEnqueuer.h) {
                                        asynchronousMediaCodecBufferEnqueuer.a.queueSecureInputBuffer(i2, 0, cryptoInfo, j, i3);
                                    }
                                }
                            } catch (RuntimeException e2) {
                                AtomicReference atomicReference3 = asynchronousMediaCodecBufferEnqueuer.d;
                                while (!atomicReference3.compareAndSet(null, e2) && atomicReference3.get() == null) {
                                }
                            }
                            messageParams = messageParams2;
                        }
                    } else {
                        MessageParams messageParams3 = (MessageParams) message.obj;
                        try {
                            asynchronousMediaCodecBufferEnqueuer.a.queueInputBuffer(messageParams3.a, 0, messageParams3.b, messageParams3.d, messageParams3.e);
                        } catch (RuntimeException e3) {
                            AtomicReference atomicReference4 = asynchronousMediaCodecBufferEnqueuer.d;
                            while (!atomicReference4.compareAndSet(null, e3) && atomicReference4.get() == null) {
                            }
                        }
                        messageParams = messageParams3;
                    }
                    if (messageParams != null) {
                        ArrayDeque arrayDeque2 = AsynchronousMediaCodecBufferEnqueuer.g;
                        synchronized (arrayDeque2) {
                            arrayDeque2.add(messageParams);
                        }
                    }
                }
            };
            this.f = true;
        }
    }
}
