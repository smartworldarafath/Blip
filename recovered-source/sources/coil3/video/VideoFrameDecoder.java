package coil3.video;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image_androidKt;
import coil3.decode.AssetMetadata;
import coil3.decode.ContentMetadata;
import coil3.decode.DecodeResult;
import coil3.decode.DecodeUtils;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.decode.ResourceMetadata;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.video.MediaDataSourceFetcher;
import coil3.video.internal.FileHandleMediaDataSource;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.Continuation;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import okio.FileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VideoFrameDecoder implements Decoder {
    public final ImageSource a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Decoder.Factory {
        @Override // coil3.decode.Decoder.Factory
        public final Decoder a(SourceFetchResult sourceFetchResult, Options options) {
            String str = sourceFetchResult.b;
            if (str != null && StringsKt.J(str, "video/", false)) {
                return new VideoFrameDecoder(sourceFetchResult.a, options);
            }
            return null;
        }
    }

    public VideoFrameDecoder(ImageSource imageSource, Options options) {
        this.a = imageSource;
        this.b = options;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // coil3.decode.Decoder
    public final Object a(Continuation continuation) {
        MediaMetadataRetriever mediaMetadataRetriever;
        boolean isTerminated;
        int i;
        int i2;
        Integer S;
        int intValue;
        Integer S2;
        int i3;
        Size size;
        Long T;
        Options options;
        long j;
        MediaMetadataRetriever mediaMetadataRetriever2;
        boolean z;
        boolean isTerminated2;
        Bitmap frameAtTime;
        Options options2;
        Bitmap scaledFrameAtTime;
        MediaMetadataRetriever mediaMetadataRetriever3;
        byte[] embeddedPicture;
        Integer S3;
        Integer S4;
        Integer S5;
        TimeUnit timeUnit = TimeUnit.DAYS;
        MediaMetadataRetriever mediaMetadataRetriever4 = new MediaMetadataRetriever();
        try {
            c(mediaMetadataRetriever4, this.a);
            String extractMetadata = mediaMetadataRetriever4.extractMetadata(24);
            if (extractMetadata != null && (S5 = StringsKt.S(extractMetadata)) != null) {
                i = S5.intValue();
            } else {
                i = 0;
            }
            if (i != 90 && i != 270) {
                String extractMetadata2 = mediaMetadataRetriever4.extractMetadata(18);
                if (extractMetadata2 != null && (S4 = StringsKt.S(extractMetadata2)) != null) {
                    i2 = S4.intValue();
                } else {
                    i2 = 0;
                }
                String extractMetadata3 = mediaMetadataRetriever4.extractMetadata(19);
                if (extractMetadata3 != null && (S3 = StringsKt.S(extractMetadata3)) != null) {
                    intValue = S3.intValue();
                }
                intValue = 0;
            } else {
                String extractMetadata4 = mediaMetadataRetriever4.extractMetadata(19);
                if (extractMetadata4 != null && (S2 = StringsKt.S(extractMetadata4)) != null) {
                    i2 = S2.intValue();
                } else {
                    i2 = 0;
                }
                String extractMetadata5 = mediaMetadataRetriever4.extractMetadata(18);
                if (extractMetadata5 != null && (S = StringsKt.S(extractMetadata5)) != null) {
                    intValue = S.intValue();
                }
                intValue = 0;
            }
            int i4 = i2;
            Options options3 = this.b;
            if (i4 > 0 && intValue > 0) {
                Size size2 = options3.b;
                Scale scale = options3.c;
                Extras.Key key = coil3.request.ImageRequestsKt.b;
                long a = DecodeUtils.a(i4, intValue, size2, scale, (Size) ExtrasKt.b(options3, key));
                int i5 = intValue;
                double b = DecodeUtils.b(i4, i5, (int) (a >> 32), (int) (a & 4294967295L), options3.c, (Size) ExtrasKt.b(options3, key));
                i3 = i5;
                if (options3.d == Precision.k && b > 1.0d) {
                    b = 1.0d;
                }
                size = SizeKt.a(MathKt.a(i4 * b), MathKt.a(b * i3));
            } else {
                i3 = intValue;
                size = Size.c;
            }
            Size size3 = size;
            long longValue = ((Number) ExtrasKt.b(options3, ImageRequestsKt.c)).longValue();
            long j2 = 0;
            if (longValue < 0) {
                double doubleValue = ((Number) ExtrasKt.b(options3, ImageRequestsKt.d)).doubleValue();
                if (doubleValue >= 0.0d) {
                    String extractMetadata6 = mediaMetadataRetriever4.extractMetadata(9);
                    if (extractMetadata6 != null && (T = StringsKt.T(extractMetadata6)) != null) {
                        j2 = T.longValue();
                    }
                    longValue = MathKt.c(doubleValue * j2) * 1000;
                } else {
                    longValue = 0;
                }
            }
            Dimension dimension = size3.a;
            Dimension dimension2 = size3.b;
            ?? obj = new Object();
            Bitmap bitmap = null;
            if (((Boolean) ExtrasKt.b(options3, ImageRequestsKt.b)).booleanValue() && (embeddedPicture = mediaMetadataRetriever4.getEmbeddedPicture()) != null) {
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length);
                if (decodeByteArray != null) {
                    i4 = decodeByteArray.getWidth();
                    i3 = decodeByteArray.getHeight();
                } else {
                    decodeByteArray = null;
                }
                obj.j = decodeByteArray;
            }
            int i6 = i3;
            if (obj.j == null) {
                Extras.Key key2 = ImageRequestsKt.a;
                if (((Number) ExtrasKt.b(options3, key2)).intValue() >= 0) {
                    int intValue2 = ((Number) ExtrasKt.b(options3, key2)).intValue();
                    Bitmap.Config config = (Bitmap.Config) ExtrasKt.b(options3, ImageRequests_androidKt.b);
                    MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
                    bitmapParams.setPreferredConfig(config);
                    frameAtTime = mediaMetadataRetriever4.getFrameAtIndex(intValue2, bitmapParams);
                    if (frameAtTime != null) {
                        i4 = frameAtTime.getWidth();
                        i6 = frameAtTime.getHeight();
                        options = options3;
                        j = longValue;
                        mediaMetadataRetriever3 = mediaMetadataRetriever4;
                        obj.j = frameAtTime;
                        mediaMetadataRetriever2 = mediaMetadataRetriever3;
                    } else {
                        options = options3;
                        j = longValue;
                        frameAtTime = bitmap;
                        mediaMetadataRetriever3 = mediaMetadataRetriever4;
                        obj.j = frameAtTime;
                        mediaMetadataRetriever2 = mediaMetadataRetriever3;
                    }
                } else {
                    boolean z2 = dimension instanceof Dimension.Pixels;
                    Extras.Key key3 = ImageRequestsKt.e;
                    if (z2 && (dimension2 instanceof Dimension.Pixels)) {
                        int intValue3 = ((Number) ExtrasKt.b(options3, key3)).intValue();
                        int i7 = ((Dimension.Pixels) dimension).a;
                        int i8 = ((Dimension.Pixels) dimension2).a;
                        Bitmap.Config config2 = (Bitmap.Config) ExtrasKt.b(options3, ImageRequests_androidKt.b);
                        try {
                            if (Build.VERSION.SDK_INT >= 30) {
                                j = longValue;
                                MediaMetadataRetriever.BitmapParams bitmapParams2 = new MediaMetadataRetriever.BitmapParams();
                                bitmapParams2.setPreferredConfig(config2);
                                options2 = options3;
                                MediaMetadataRetriever mediaMetadataRetriever5 = mediaMetadataRetriever4;
                                scaledFrameAtTime = mediaMetadataRetriever5.getScaledFrameAtTime(j, intValue3, i7, i8, bitmapParams2);
                                mediaMetadataRetriever4 = mediaMetadataRetriever5;
                            } else {
                                options2 = options3;
                                j = longValue;
                                MediaMetadataRetriever mediaMetadataRetriever6 = mediaMetadataRetriever4;
                                scaledFrameAtTime = mediaMetadataRetriever6.getScaledFrameAtTime(j, intValue3, i7, i8);
                                mediaMetadataRetriever4 = mediaMetadataRetriever6;
                            }
                            bitmap = scaledFrameAtTime;
                            options = options2;
                        } catch (Throwable th) {
                            th = th;
                            mediaMetadataRetriever = mediaMetadataRetriever4;
                            if (Build.VERSION.SDK_INT >= 29) {
                                if (!(mediaMetadataRetriever instanceof AutoCloseable)) {
                                    if (mediaMetadataRetriever instanceof ExecutorService) {
                                        ExecutorService executorService = (ExecutorService) mediaMetadataRetriever;
                                        if (executorService != ForkJoinPool.commonPool() && !(isTerminated = executorService.isTerminated())) {
                                            executorService.shutdown();
                                            boolean z3 = false;
                                            while (!isTerminated) {
                                                try {
                                                    isTerminated = executorService.awaitTermination(1L, timeUnit);
                                                } catch (InterruptedException unused) {
                                                    if (!z3) {
                                                        executorService.shutdownNow();
                                                        z3 = true;
                                                    }
                                                }
                                            }
                                            if (z3) {
                                                Thread.currentThread().interrupt();
                                            }
                                        }
                                    } else {
                                        mediaMetadataRetriever.release();
                                    }
                                } else {
                                    mediaMetadataRetriever.close();
                                }
                            } else {
                                mediaMetadataRetriever.release();
                            }
                            throw th;
                        }
                    } else {
                        options = options3;
                        j = longValue;
                        int intValue4 = ((Number) ExtrasKt.b(options, key3)).intValue();
                        Bitmap.Config config3 = (Bitmap.Config) ExtrasKt.b(options, ImageRequests_androidKt.b);
                        if (Build.VERSION.SDK_INT >= 30) {
                            MediaMetadataRetriever.BitmapParams bitmapParams3 = new MediaMetadataRetriever.BitmapParams();
                            bitmapParams3.setPreferredConfig(config3);
                            frameAtTime = mediaMetadataRetriever4.getFrameAtTime(j, intValue4, bitmapParams3);
                        } else {
                            frameAtTime = mediaMetadataRetriever4.getFrameAtTime(j, intValue4);
                        }
                        if (frameAtTime != null) {
                            i4 = frameAtTime.getWidth();
                            i6 = frameAtTime.getHeight();
                            mediaMetadataRetriever3 = mediaMetadataRetriever4;
                            obj.j = frameAtTime;
                            mediaMetadataRetriever2 = mediaMetadataRetriever3;
                        }
                    }
                    frameAtTime = bitmap;
                    mediaMetadataRetriever3 = mediaMetadataRetriever4;
                    obj.j = frameAtTime;
                    mediaMetadataRetriever2 = mediaMetadataRetriever3;
                }
            } else {
                options = options3;
                j = longValue;
                mediaMetadataRetriever2 = mediaMetadataRetriever4;
            }
            int i9 = i6;
            int i10 = i4;
            Object obj2 = obj.j;
            if (obj2 != null) {
                Bitmap b2 = b((Bitmap) obj2, size3);
                if (i10 <= 0 || i9 <= 0 || DecodeUtils.b(i10, i9, b2.getWidth(), b2.getHeight(), options.c, (Size) ExtrasKt.b(options, coil3.request.ImageRequestsKt.b)) < 1.0d) {
                    z = true;
                } else {
                    z = false;
                }
                DecodeResult decodeResult = new DecodeResult(Image_androidKt.b(new BitmapDrawable(options.a.getResources(), b2)), z);
                if (Build.VERSION.SDK_INT >= 29) {
                    if (mediaMetadataRetriever2 instanceof AutoCloseable) {
                        mediaMetadataRetriever2.close();
                        return decodeResult;
                    }
                    if (mediaMetadataRetriever2 instanceof ExecutorService) {
                        ExecutorService executorService2 = (ExecutorService) mediaMetadataRetriever2;
                        if (executorService2 != ForkJoinPool.commonPool() && !(isTerminated2 = executorService2.isTerminated())) {
                            executorService2.shutdown();
                            boolean z4 = false;
                            while (!isTerminated2) {
                                try {
                                    isTerminated2 = executorService2.awaitTermination(1L, timeUnit);
                                } catch (InterruptedException unused2) {
                                    if (!z4) {
                                        executorService2.shutdownNow();
                                        z4 = true;
                                    }
                                }
                            }
                            if (z4) {
                                Thread.currentThread().interrupt();
                            }
                        }
                        return decodeResult;
                    }
                    mediaMetadataRetriever2.release();
                    return decodeResult;
                }
                mediaMetadataRetriever2.release();
                return decodeResult;
            }
            throw new IllegalStateException(("Failed to decode frame at " + j + " microseconds.").toString());
        } catch (Throwable th2) {
            th = th2;
            mediaMetadataRetriever = mediaMetadataRetriever4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        if (coil3.decode.DecodeUtils.b(r4, r5, r6, r1, r10.c, (coil3.size.Size) coil3.ExtrasKt.b(r10, coil3.request.ImageRequestsKt.b)) == 1.0d) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap b(Bitmap bitmap, Size size) {
        int width;
        int height;
        int width2;
        int height2;
        Bitmap.Config config;
        Dimension dimension = size.b;
        Dimension dimension2 = size.a;
        Bitmap.Config config2 = bitmap.getConfig();
        Bitmap.Config config3 = Bitmap.Config.HARDWARE;
        Options options = this.b;
        if (config2 != config3 || ImageRequests_androidKt.a(options) == config3) {
            if (options.d != Precision.k) {
                int width3 = bitmap.getWidth();
                int height3 = bitmap.getHeight();
                if (dimension2 instanceof Dimension.Pixels) {
                    width = ((Dimension.Pixels) dimension2).a;
                } else {
                    width = bitmap.getWidth();
                }
                int i = width;
                if (dimension instanceof Dimension.Pixels) {
                    height = ((Dimension.Pixels) dimension).a;
                } else {
                    height = bitmap.getHeight();
                }
            }
            return bitmap;
        }
        int width4 = bitmap.getWidth();
        int height4 = bitmap.getHeight();
        if (dimension2 instanceof Dimension.Pixels) {
            width2 = ((Dimension.Pixels) dimension2).a;
        } else {
            width2 = bitmap.getWidth();
        }
        int i2 = width2;
        if (dimension instanceof Dimension.Pixels) {
            height2 = ((Dimension.Pixels) dimension).a;
        } else {
            height2 = bitmap.getHeight();
        }
        float b = (float) DecodeUtils.b(width4, height4, i2, height2, options.c, (Size) ExtrasKt.b(options, coil3.request.ImageRequestsKt.b));
        int b2 = MathKt.b(bitmap.getWidth() * b);
        int b3 = MathKt.b(bitmap.getHeight() * b);
        Extras.Key key = ImageRequests_androidKt.b;
        if (((Bitmap.Config) ExtrasKt.b(options, key)) == config3) {
            config = Bitmap.Config.ARGB_8888;
        } else {
            config = (Bitmap.Config) ExtrasKt.b(options, key);
        }
        Paint paint = new Paint(3);
        Bitmap createBitmap = Bitmap.createBitmap(b2, b3, config);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(b, b);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        bitmap.recycle();
        return createBitmap;
    }

    public final void c(MediaMetadataRetriever mediaMetadataRetriever, ImageSource imageSource) {
        ImageSource.Metadata e = imageSource.e();
        if (e instanceof MediaDataSourceFetcher.MediaSourceMetadata) {
            mediaMetadataRetriever.setDataSource(((MediaDataSourceFetcher.MediaSourceMetadata) e).a);
            return;
        }
        boolean z = e instanceof AssetMetadata;
        Options options = this.b;
        if (z) {
            AssetFileDescriptor openFd = options.a.getAssets().openFd(((AssetMetadata) e).a);
            try {
                mediaMetadataRetriever.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                openFd.close();
            } finally {
            }
        } else {
            if (e instanceof ContentMetadata) {
                mediaMetadataRetriever.setDataSource(options.a, Uri.parse(((ContentMetadata) e).a.a));
                return;
            }
            if (e instanceof ResourceMetadata) {
                ResourceMetadata resourceMetadata = (ResourceMetadata) e;
                mediaMetadataRetriever.setDataSource("android.resource://" + resourceMetadata.a + "/" + resourceMetadata.b);
                return;
            }
            if (imageSource.getFileSystem() == FileSystem.j) {
                mediaMetadataRetriever.setDataSource(imageSource.d0().toFile().getPath());
            } else {
                mediaMetadataRetriever.setDataSource(new FileHandleMediaDataSource(imageSource.getFileSystem().R(imageSource.d0())));
            }
        }
    }
}
