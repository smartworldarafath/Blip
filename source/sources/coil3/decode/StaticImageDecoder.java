package coil3.decode;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Size;
import coil3.BitmapImage;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.decode.StaticImageDecoder;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import defpackage.u2;
import defpackage.vi;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StaticImageDecoder implements Decoder {
    public final ImageDecoder.Source a;
    public final AutoCloseable b;
    public final Options c;
    public final Semaphore d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {
        public final Semaphore a;

        public Factory(Semaphore semaphore) {
            this.a = semaphore;
        }

        @Override // coil3.decode.Decoder.Factory
        public final Decoder a(SourceFetchResult sourceFetchResult, Options options) {
            ImageDecoder.Source createSource;
            Path I0;
            Bitmap.Config a = ImageRequests_androidKt.a(options);
            Context context = options.a;
            if (a == Bitmap.Config.ARGB_8888 || a == Bitmap.Config.HARDWARE) {
                ImageSource imageSource = sourceFetchResult.a;
                if (imageSource.getFileSystem() == FileSystem.j && (I0 = imageSource.I0()) != null) {
                    createSource = ImageDecoder.createSource(I0.toFile());
                } else {
                    ImageSource.Metadata e = imageSource.e();
                    if (e instanceof AssetMetadata) {
                        createSource = ImageDecoder.createSource(context.getAssets(), ((AssetMetadata) e).a);
                    } else if ((e instanceof ContentMetadata) && Build.VERSION.SDK_INT >= 29) {
                        try {
                            AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) e).b;
                            Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                            createSource = ImageDecoder.createSource(new vi(2, assetFileDescriptor));
                        } catch (ErrnoException unused) {
                        }
                    } else {
                        if (e instanceof ResourceMetadata) {
                            ResourceMetadata resourceMetadata = (ResourceMetadata) e;
                            if (resourceMetadata.a.equals(context.getPackageName())) {
                                createSource = ImageDecoder.createSource(context.getResources(), resourceMetadata.b);
                            }
                        }
                        if (e instanceof ByteBufferMetadata) {
                            createSource = ImageDecoder.createSource(((ByteBufferMetadata) e).a);
                        }
                        createSource = null;
                    }
                }
                if (createSource != null) {
                    return new StaticImageDecoder(createSource, sourceFetchResult.a, options, this.a);
                }
            }
            return null;
        }
    }

    public StaticImageDecoder(ImageDecoder.Source source, AutoCloseable autoCloseable, Options options, Semaphore semaphore) {
        this.a = source;
        this.b = autoCloseable;
        this.c = options;
        this.d = semaphore;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    @Override // coil3.decode.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Continuation continuation) {
        StaticImageDecoder$decode$1 staticImageDecoder$decode$1;
        int i;
        Object obj;
        try {
            try {
                if (continuation instanceof StaticImageDecoder$decode$1) {
                    staticImageDecoder$decode$1 = (StaticImageDecoder$decode$1) continuation;
                    int i2 = staticImageDecoder$decode$1.p;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        staticImageDecoder$decode$1.p = i2 - Integer.MIN_VALUE;
                        Object obj2 = staticImageDecoder$decode$1.n;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = staticImageDecoder$decode$1.p;
                        if (i == 0) {
                            if (i == 1) {
                                obj = (Semaphore) staticImageDecoder$decode$1.m;
                                ResultKt.b(obj2);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj2);
                            Object obj3 = this.d;
                            staticImageDecoder$decode$1.m = obj3;
                            staticImageDecoder$decode$1.p = 1;
                            if (((SemaphoreAndMutexImpl) obj3).b(staticImageDecoder$decode$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            obj = obj3;
                        }
                        AutoCloseable autoCloseable = this.b;
                        final ?? obj4 = new Object();
                        DecodeResult decodeResult = new DecodeResult(new BitmapImage(ImageDecoder.decodeBitmap(this.a, new ImageDecoder.OnHeaderDecodedListener() { // from class: coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1
                            @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                            public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                                int i3;
                                boolean z;
                                Size size = imageInfo.getSize();
                                int width = size.getWidth();
                                int height = size.getHeight();
                                final StaticImageDecoder staticImageDecoder = StaticImageDecoder.this;
                                Options options = staticImageDecoder.c;
                                coil3.size.Size size2 = options.b;
                                Scale scale = options.c;
                                Extras.Key key = ImageRequestsKt.b;
                                long a = DecodeUtils.a(width, height, size2, scale, (coil3.size.Size) ExtrasKt.b(options, key));
                                int i4 = (int) (a >> 32);
                                int i5 = (int) (a & 4294967295L);
                                if (width > 0 && height > 0 && (width != i4 || height != i5)) {
                                    double b = DecodeUtils.b(width, height, i4, i5, options.c, (coil3.size.Size) ExtrasKt.b(options, key));
                                    if (b < 1.0d) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    obj4.j = z;
                                    if (z || options.d == Precision.j) {
                                        imageDecoder.setTargetSize(MathKt.a(width * b), MathKt.a(b * height));
                                    }
                                }
                                imageDecoder.setOnPartialImageListener(new ImageDecoder.OnPartialImageListener() { // from class: bg
                                    @Override // android.graphics.ImageDecoder.OnPartialImageListener
                                    public final boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                                        return ((Boolean) ExtrasKt.b(StaticImageDecoder.this.c, ImageRequests_androidKt.f)).booleanValue();
                                    }
                                });
                                if (ImageRequests_androidKt.a(options) == Bitmap.Config.HARDWARE) {
                                    i3 = 3;
                                } else {
                                    i3 = 1;
                                }
                                imageDecoder.setAllocator(i3);
                                imageDecoder.setMemorySizePolicy(!((Boolean) ExtrasKt.b(options, ImageRequests_androidKt.h)).booleanValue() ? 1 : 0);
                                Extras.Key key2 = ImageRequests_androidKt.c;
                                if (((ColorSpace) ExtrasKt.b(options, key2)) != null) {
                                    imageDecoder.setTargetColorSpace((ColorSpace) ExtrasKt.b(options, key2));
                                }
                                imageDecoder.setUnpremultipliedRequired(!((Boolean) ExtrasKt.b(options, ImageRequests_androidKt.d)).booleanValue());
                            }
                        })), obj4.j);
                        AutoCloseableKt.a(autoCloseable, null);
                        return decodeResult;
                    }
                }
                final Ref$BooleanRef obj42 = new Object();
                DecodeResult decodeResult2 = new DecodeResult(new BitmapImage(ImageDecoder.decodeBitmap(this.a, new ImageDecoder.OnHeaderDecodedListener() { // from class: coil3.decode.StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        int i3;
                        boolean z;
                        Size size = imageInfo.getSize();
                        int width = size.getWidth();
                        int height = size.getHeight();
                        final StaticImageDecoder staticImageDecoder = StaticImageDecoder.this;
                        Options options = staticImageDecoder.c;
                        coil3.size.Size size2 = options.b;
                        Scale scale = options.c;
                        Extras.Key key = ImageRequestsKt.b;
                        long a = DecodeUtils.a(width, height, size2, scale, (coil3.size.Size) ExtrasKt.b(options, key));
                        int i4 = (int) (a >> 32);
                        int i5 = (int) (a & 4294967295L);
                        if (width > 0 && height > 0 && (width != i4 || height != i5)) {
                            double b = DecodeUtils.b(width, height, i4, i5, options.c, (coil3.size.Size) ExtrasKt.b(options, key));
                            if (b < 1.0d) {
                                z = true;
                            } else {
                                z = false;
                            }
                            obj42.j = z;
                            if (z || options.d == Precision.j) {
                                imageDecoder.setTargetSize(MathKt.a(width * b), MathKt.a(b * height));
                            }
                        }
                        imageDecoder.setOnPartialImageListener(new ImageDecoder.OnPartialImageListener() { // from class: bg
                            @Override // android.graphics.ImageDecoder.OnPartialImageListener
                            public final boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
                                return ((Boolean) ExtrasKt.b(StaticImageDecoder.this.c, ImageRequests_androidKt.f)).booleanValue();
                            }
                        });
                        if (ImageRequests_androidKt.a(options) == Bitmap.Config.HARDWARE) {
                            i3 = 3;
                        } else {
                            i3 = 1;
                        }
                        imageDecoder.setAllocator(i3);
                        imageDecoder.setMemorySizePolicy(!((Boolean) ExtrasKt.b(options, ImageRequests_androidKt.h)).booleanValue() ? 1 : 0);
                        Extras.Key key2 = ImageRequests_androidKt.c;
                        if (((ColorSpace) ExtrasKt.b(options, key2)) != null) {
                            imageDecoder.setTargetColorSpace((ColorSpace) ExtrasKt.b(options, key2));
                        }
                        imageDecoder.setUnpremultipliedRequired(!((Boolean) ExtrasKt.b(options, ImageRequests_androidKt.d)).booleanValue());
                    }
                })), obj42.j);
                AutoCloseableKt.a(autoCloseable, null);
                return decodeResult2;
            } finally {
            }
            AutoCloseable autoCloseable2 = this.b;
        } finally {
            ((SemaphoreAndMutexImpl) obj).d();
        }
        staticImageDecoder$decode$1 = new StaticImageDecoder$decode$1(this, (ContinuationImpl) continuation);
        Object obj22 = staticImageDecoder$decode$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = staticImageDecoder$decode$1.p;
        if (i == 0) {
        }
    }
}
