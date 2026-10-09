package coil3.decode;

import coil3.decode.Decoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.InterruptibleKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import okio.Buffer;
import okio.ForwardingSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder implements Decoder {
    public final ImageSource a;
    public final Options b;
    public final Semaphore c;
    public final ExifOrientationStrategy d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ExceptionCatchingSource extends ForwardingSource {
        public Exception k;

        @Override // okio.ForwardingSource, okio.Source
        public final long J0(long j, Buffer buffer) {
            try {
                return super.J0(j, buffer);
            } catch (Exception e) {
                this.k = e;
                throw e;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {
        public final Semaphore a;
        public final ExifOrientationStrategy b;

        public Factory(Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
            this.a = semaphore;
            this.b = exifOrientationStrategy;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder a(SourceFetchResult sourceFetchResult, Options options) {
            return new BitmapFactoryDecoder(sourceFetchResult.a, options, this.a, this.b);
        }
    }

    public BitmapFactoryDecoder(ImageSource imageSource, Options options, Semaphore semaphore, ExifOrientationStrategy exifOrientationStrategy) {
        this.a = imageSource;
        this.b = options;
        this.c = semaphore;
        this.d = exifOrientationStrategy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        if (r2 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Continuation continuation) {
        BitmapFactoryDecoder$decode$1 bitmapFactoryDecoder$decode$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        Semaphore semaphore;
        Throwable th;
        Object obj;
        Object a;
        try {
            if (continuation instanceof BitmapFactoryDecoder$decode$1) {
                bitmapFactoryDecoder$decode$1 = (BitmapFactoryDecoder$decode$1) continuation;
                int i2 = bitmapFactoryDecoder$decode$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    bitmapFactoryDecoder$decode$1.p = i2 - Integer.MIN_VALUE;
                    Object obj2 = bitmapFactoryDecoder$decode$1.n;
                    coroutineSingletons = CoroutineSingletons.j;
                    i = bitmapFactoryDecoder$decode$1.p;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                obj = bitmapFactoryDecoder$decode$1.m;
                                try {
                                    ResultKt.b(obj2);
                                    DecodeResult decodeResult = (DecodeResult) obj2;
                                    ((SemaphoreAndMutexImpl) obj).d();
                                    return decodeResult;
                                } catch (Throwable th2) {
                                    th = th2;
                                    ((SemaphoreAndMutexImpl) obj).d();
                                    throw th;
                                }
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        Semaphore semaphore2 = bitmapFactoryDecoder$decode$1.m;
                        ResultKt.b(obj2);
                        semaphore = semaphore2;
                    } else {
                        ResultKt.b(obj2);
                        Semaphore semaphore3 = this.c;
                        bitmapFactoryDecoder$decode$1.m = semaphore3;
                        bitmapFactoryDecoder$decode$1.p = 1;
                        Object b = ((SemaphoreAndMutexImpl) semaphore3).b(bitmapFactoryDecoder$decode$1);
                        semaphore = semaphore3;
                    }
                    a aVar = new a(this);
                    bitmapFactoryDecoder$decode$1.m = semaphore;
                    bitmapFactoryDecoder$decode$1.p = 2;
                    a = InterruptibleKt.a(aVar, bitmapFactoryDecoder$decode$1);
                    if (a != coroutineSingletons) {
                        Semaphore semaphore4 = semaphore;
                        obj2 = a;
                        obj = semaphore4;
                        DecodeResult decodeResult2 = (DecodeResult) obj2;
                        ((SemaphoreAndMutexImpl) obj).d();
                        return decodeResult2;
                    }
                    return coroutineSingletons;
                }
            }
            a aVar2 = new a(this);
            bitmapFactoryDecoder$decode$1.m = semaphore;
            bitmapFactoryDecoder$decode$1.p = 2;
            a = InterruptibleKt.a(aVar2, bitmapFactoryDecoder$decode$1);
            if (a != coroutineSingletons) {
            }
            return coroutineSingletons;
        } catch (Throwable th3) {
            Semaphore semaphore5 = semaphore;
            th = th3;
            obj = semaphore5;
            ((SemaphoreAndMutexImpl) obj).d();
            throw th;
        }
        bitmapFactoryDecoder$decode$1 = new BitmapFactoryDecoder$decode$1(this, (ContinuationImpl) continuation);
        Object obj22 = bitmapFactoryDecoder$decode$1.n;
        coroutineSingletons = CoroutineSingletons.j;
        i = bitmapFactoryDecoder$decode$1.p;
        if (i == 0) {
        }
    }
}
