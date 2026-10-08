package coil3.decode;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.exifinterface.media.ExifInterface;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.k8;
import defpackage.u2;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import okio.ForwardingSource;
import okio.PeekSource;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {
    public final /* synthetic */ BitmapFactoryDecoder j;

    public /* synthetic */ a(BitmapFactoryDecoder bitmapFactoryDecoder) {
        this.j = bitmapFactoryDecoder;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02d0  */
    /* JADX WARN: Type inference failed for: r3v0, types: [okio.Source, coil3.decode.BitmapFactoryDecoder$ExceptionCatchingSource, okio.ForwardingSource] */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        ExifData exifData;
        Rect rect;
        boolean z;
        Context context;
        int i;
        boolean z2;
        Exception exc;
        Bitmap createBitmap;
        boolean z3;
        int i2;
        int min;
        double d;
        double max;
        boolean z4;
        boolean z5;
        int i3;
        BitmapFactory.Options options = new BitmapFactory.Options();
        BitmapFactoryDecoder bitmapFactoryDecoder = this.j;
        Options options2 = bitmapFactoryDecoder.b;
        ?? forwardingSource = new ForwardingSource(bitmapFactoryDecoder.a.U0());
        final RealBufferedSource realBufferedSource = new RealBufferedSource(forwardingSource);
        options.inJustDecodeBounds = true;
        final RealBufferedSource realBufferedSource2 = new RealBufferedSource(new PeekSource(realBufferedSource));
        BitmapFactory.decodeStream(new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public final int available() {
                RealBufferedSource realBufferedSource3 = RealBufferedSource.this;
                if (!realBufferedSource3.l) {
                    return (int) Math.min(realBufferedSource3.k.k, 2147483647L);
                }
                k8.j("closed");
                return 0;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i4, int i5) {
                bArr.getClass();
                RealBufferedSource realBufferedSource3 = RealBufferedSource.this;
                Buffer buffer = realBufferedSource3.k;
                if (!realBufferedSource3.l) {
                    SegmentedByteString.b(bArr.length, i4, i5);
                    if (buffer.k == 0 && realBufferedSource3.j.J0(8192L, buffer) == -1) {
                        return -1;
                    }
                    return buffer.read(bArr, i4, i5);
                }
                k8.j("closed");
                return 0;
            }

            public final String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public final long transferTo(OutputStream outputStream) {
                outputStream.getClass();
                RealBufferedSource realBufferedSource3 = RealBufferedSource.this;
                Buffer buffer = realBufferedSource3.k;
                if (!realBufferedSource3.l) {
                    long j = 0;
                    while (true) {
                        if (buffer.k == 0 && realBufferedSource3.j.J0(8192L, buffer) == -1) {
                            return j;
                        }
                        long j2 = buffer.k;
                        j += j2;
                        SegmentedByteString.b(j2, 0L, j2);
                        Segment segment = buffer.j;
                        while (j2 > 0) {
                            segment.getClass();
                            int min2 = (int) Math.min(j2, segment.c - segment.b);
                            outputStream.write(segment.a, segment.b, min2);
                            int i4 = segment.b + min2;
                            segment.b = i4;
                            long j3 = min2;
                            buffer.k -= j3;
                            j2 -= j3;
                            if (i4 == segment.c) {
                                Segment a = segment.a();
                                buffer.j = a;
                                SegmentPool.a(segment);
                                segment = a;
                            }
                        }
                    }
                } else {
                    k8.j("closed");
                    return 0L;
                }
            }

            @Override // java.io.InputStream
            public final int read() {
                RealBufferedSource realBufferedSource3 = RealBufferedSource.this;
                Buffer buffer = realBufferedSource3.k;
                if (realBufferedSource3.l) {
                    k8.j("closed");
                    return 0;
                }
                if (buffer.k == 0 && realBufferedSource3.j.J0(8192L, buffer) == -1) {
                    return -1;
                }
                return buffer.readByte() & 255;
            }
        }, null, options);
        Exception exc2 = forwardingSource.k;
        if (exc2 == null) {
            options.inJustDecodeBounds = false;
            Paint paint = ExifUtils.a;
            if (bitmapFactoryDecoder.d.a(options.outMimeType)) {
                final RealBufferedSource realBufferedSource3 = new RealBufferedSource(new PeekSource(realBufferedSource));
                ExifInterface exifInterface = new ExifInterface(new ExifInterfaceInputStream(new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
                    @Override // java.io.InputStream
                    public final int available() {
                        RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                        if (!realBufferedSource32.l) {
                            return (int) Math.min(realBufferedSource32.k.k, 2147483647L);
                        }
                        k8.j("closed");
                        return 0;
                    }

                    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                        RealBufferedSource.this.close();
                    }

                    @Override // java.io.InputStream
                    public final int read(byte[] bArr, int i4, int i5) {
                        bArr.getClass();
                        RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                        Buffer buffer = realBufferedSource32.k;
                        if (!realBufferedSource32.l) {
                            SegmentedByteString.b(bArr.length, i4, i5);
                            if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                return -1;
                            }
                            return buffer.read(bArr, i4, i5);
                        }
                        k8.j("closed");
                        return 0;
                    }

                    public final String toString() {
                        return RealBufferedSource.this + ".inputStream()";
                    }

                    @Override // java.io.InputStream
                    public final long transferTo(OutputStream outputStream) {
                        outputStream.getClass();
                        RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                        Buffer buffer = realBufferedSource32.k;
                        if (!realBufferedSource32.l) {
                            long j = 0;
                            while (true) {
                                if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                    return j;
                                }
                                long j2 = buffer.k;
                                j += j2;
                                SegmentedByteString.b(j2, 0L, j2);
                                Segment segment = buffer.j;
                                while (j2 > 0) {
                                    segment.getClass();
                                    int min2 = (int) Math.min(j2, segment.c - segment.b);
                                    outputStream.write(segment.a, segment.b, min2);
                                    int i4 = segment.b + min2;
                                    segment.b = i4;
                                    long j3 = min2;
                                    buffer.k -= j3;
                                    j2 -= j3;
                                    if (i4 == segment.c) {
                                        Segment a = segment.a();
                                        buffer.j = a;
                                        SegmentPool.a(segment);
                                        segment = a;
                                    }
                                }
                            }
                        } else {
                            k8.j("closed");
                            return 0L;
                        }
                    }

                    @Override // java.io.InputStream
                    public final int read() {
                        RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                        Buffer buffer = realBufferedSource32.k;
                        if (realBufferedSource32.l) {
                            k8.j("closed");
                            return 0;
                        }
                        if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                            return -1;
                        }
                        return buffer.readByte() & 255;
                    }
                }));
                int c = exifInterface.c();
                if (c != 2 && c != 7 && c != 4 && c != 5) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                switch (exifInterface.c()) {
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        i3 = 180;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        i3 = 270;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        i3 = 90;
                        break;
                    default:
                        i3 = 0;
                        break;
                }
                exifData = new ExifData(i3, z5);
            } else {
                exifData = ExifData.c;
            }
            int i4 = exifData.b;
            boolean z6 = exifData.a;
            Exception exc3 = forwardingSource.k;
            if (exc3 == null) {
                options.inMutable = false;
                Extras.Key key = ImageRequests_androidKt.c;
                ColorSpace colorSpace = (ColorSpace) ExtrasKt.b(options2, key);
                Context context2 = options2.a;
                if (colorSpace != null) {
                    options.inPreferredColorSpace = (ColorSpace) ExtrasKt.b(options2, key);
                }
                options.inPremultiplied = ((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.d)).booleanValue();
                Bitmap.Config config = (Bitmap.Config) ExtrasKt.b(options2, ImageRequests_androidKt.b);
                if ((z6 || i4 > 0) && (config == null || config == Bitmap.Config.HARDWARE)) {
                    config = Bitmap.Config.ARGB_8888;
                }
                if (((Boolean) ExtrasKt.b(options2, ImageRequests_androidKt.h)).booleanValue() && config == Bitmap.Config.ARGB_8888 && Intrinsics.a(options.outMimeType, "image/jpeg")) {
                    config = Bitmap.Config.RGB_565;
                }
                Bitmap.Config config2 = options.outConfig;
                Bitmap.Config config3 = Bitmap.Config.RGBA_F16;
                if (config2 == config3 && config != Bitmap.Config.HARDWARE) {
                    config = config3;
                }
                options.inPreferredConfig = config;
                int i5 = options.outWidth;
                try {
                    if (i5 > 0) {
                        int i6 = options.outHeight;
                        if (i6 <= 0) {
                            i = 1;
                            rect = null;
                            z = z6;
                            context = context2;
                        } else {
                            if (i4 != 90 && i4 != 270) {
                                i2 = i5;
                            } else {
                                i2 = i6;
                            }
                            if (i4 != 90 && i4 != 270) {
                                i5 = i6;
                            }
                            Size size = options2.b;
                            Scale scale = options2.c;
                            Extras.Key key2 = ImageRequestsKt.b;
                            long a = DecodeUtils.a(i2, i5, size, scale, (Size) ExtrasKt.b(options2, key2));
                            int i7 = (int) (a >> 32);
                            int i8 = (int) (a & 4294967295L);
                            int highestOneBit = Integer.highestOneBit(i2 / i7);
                            rect = null;
                            int highestOneBit2 = Integer.highestOneBit(i5 / i8);
                            context = context2;
                            int ordinal = scale.ordinal();
                            if (ordinal != 0) {
                                if (ordinal == 1) {
                                    min = Math.max(highestOneBit, highestOneBit2);
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                min = Math.min(highestOneBit, highestOneBit2);
                            }
                            if (min < 1) {
                                min = 1;
                            }
                            options.inSampleSize = min;
                            double d2 = min;
                            double d3 = i2 / d2;
                            z = z6;
                            double d4 = i5 / d2;
                            Size size2 = (Size) ExtrasKt.b(options2, key2);
                            double d5 = i7 / d3;
                            double d6 = i8 / d4;
                            int ordinal2 = scale.ordinal();
                            if (ordinal2 != 0) {
                                d = d4;
                                if (ordinal2 == 1) {
                                    max = Math.min(d5, d6);
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                d = d4;
                                max = Math.max(d5, d6);
                            }
                            if (size2.a instanceof Dimension.Pixels) {
                                double d7 = ((Dimension.Pixels) r10).a / d3;
                                if (max > d7) {
                                    max = d7;
                                }
                            }
                            if (size2.b instanceof Dimension.Pixels) {
                                double d8 = ((Dimension.Pixels) r8).a / d;
                                if (max > d8) {
                                    max = d8;
                                }
                            }
                            if (options2.d == Precision.k && max > 1.0d) {
                                max = 1.0d;
                            }
                            if (max == 1.0d) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            options.inScaled = !z4;
                            if (!z4) {
                                if (max > 1.0d) {
                                    options.inDensity = MathKt.a(2.147483647E9d / max);
                                    options.inTargetDensity = Integer.MAX_VALUE;
                                } else {
                                    options.inDensity = Integer.MAX_VALUE;
                                    options.inTargetDensity = MathKt.a(2.147483647E9d * max);
                                }
                            }
                            z2 = false;
                            Bitmap decodeStream = BitmapFactory.decodeStream(new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
                                @Override // java.io.InputStream
                                public final int available() {
                                    RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                                    if (!realBufferedSource32.l) {
                                        return (int) Math.min(realBufferedSource32.k.k, 2147483647L);
                                    }
                                    k8.j("closed");
                                    return 0;
                                }

                                @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                                public final void close() {
                                    RealBufferedSource.this.close();
                                }

                                @Override // java.io.InputStream
                                public final int read(byte[] bArr, int i42, int i52) {
                                    bArr.getClass();
                                    RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                                    Buffer buffer = realBufferedSource32.k;
                                    if (!realBufferedSource32.l) {
                                        SegmentedByteString.b(bArr.length, i42, i52);
                                        if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                            return -1;
                                        }
                                        return buffer.read(bArr, i42, i52);
                                    }
                                    k8.j("closed");
                                    return 0;
                                }

                                public final String toString() {
                                    return RealBufferedSource.this + ".inputStream()";
                                }

                                @Override // java.io.InputStream
                                public final long transferTo(OutputStream outputStream) {
                                    outputStream.getClass();
                                    RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                                    Buffer buffer = realBufferedSource32.k;
                                    if (!realBufferedSource32.l) {
                                        long j = 0;
                                        while (true) {
                                            if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                                return j;
                                            }
                                            long j2 = buffer.k;
                                            j += j2;
                                            SegmentedByteString.b(j2, 0L, j2);
                                            Segment segment = buffer.j;
                                            while (j2 > 0) {
                                                segment.getClass();
                                                int min2 = (int) Math.min(j2, segment.c - segment.b);
                                                outputStream.write(segment.a, segment.b, min2);
                                                int i42 = segment.b + min2;
                                                segment.b = i42;
                                                long j3 = min2;
                                                buffer.k -= j3;
                                                j2 -= j3;
                                                if (i42 == segment.c) {
                                                    Segment a2 = segment.a();
                                                    buffer.j = a2;
                                                    SegmentPool.a(segment);
                                                    segment = a2;
                                                }
                                            }
                                        }
                                    } else {
                                        k8.j("closed");
                                        return 0L;
                                    }
                                }

                                @Override // java.io.InputStream
                                public final int read() {
                                    RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                                    Buffer buffer = realBufferedSource32.k;
                                    if (realBufferedSource32.l) {
                                        k8.j("closed");
                                        return 0;
                                    }
                                    if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                        return -1;
                                    }
                                    return buffer.readByte() & 255;
                                }
                            }, rect, options);
                            realBufferedSource.close();
                            exc = forwardingSource.k;
                            if (exc != null) {
                                if (decodeStream != null) {
                                    decodeStream.setDensity(context.getResources().getDisplayMetrics().densityDpi);
                                    if (z || i4 > 0) {
                                        Matrix matrix = new Matrix();
                                        float width = decodeStream.getWidth() / 2.0f;
                                        float height = decodeStream.getHeight() / 2.0f;
                                        if (z) {
                                            matrix.postScale(-1.0f, 1.0f, width, height);
                                        }
                                        if (i4 > 0) {
                                            matrix.postRotate(i4, width, height);
                                        }
                                        RectF rectF = new RectF(0.0f, 0.0f, decodeStream.getWidth(), decodeStream.getHeight());
                                        matrix.mapRect(rectF);
                                        float f = rectF.left;
                                        if (f != 0.0f || rectF.top != 0.0f) {
                                            matrix.postTranslate(-f, -rectF.top);
                                        }
                                        if (i4 != 90 && i4 != 270) {
                                            int width2 = decodeStream.getWidth();
                                            int height2 = decodeStream.getHeight();
                                            Bitmap.Config config4 = decodeStream.getConfig();
                                            if (config4 == null) {
                                                config4 = Bitmap.Config.ARGB_8888;
                                            }
                                            createBitmap = Bitmap.createBitmap(width2, height2, config4);
                                        } else {
                                            int height3 = decodeStream.getHeight();
                                            int width3 = decodeStream.getWidth();
                                            Bitmap.Config config5 = decodeStream.getConfig();
                                            if (config5 == null) {
                                                config5 = Bitmap.Config.ARGB_8888;
                                            }
                                            createBitmap = Bitmap.createBitmap(height3, width3, config5);
                                        }
                                        new Canvas(createBitmap).drawBitmap(decodeStream, matrix, ExifUtils.a);
                                        decodeStream.recycle();
                                        decodeStream = createBitmap;
                                    }
                                    Image b = Image_androidKt.b(new BitmapDrawable(context.getResources(), decodeStream));
                                    if (options.inSampleSize <= 1 && !options.inScaled) {
                                        z3 = z2;
                                    } else {
                                        z3 = true;
                                    }
                                    return new DecodeResult(b, z3);
                                }
                                u2.l("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                                return null;
                            }
                            throw exc;
                        }
                    } else {
                        rect = null;
                        z = z6;
                        context = context2;
                        i = 1;
                    }
                    Bitmap decodeStream2 = BitmapFactory.decodeStream(new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
                        @Override // java.io.InputStream
                        public final int available() {
                            RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                            if (!realBufferedSource32.l) {
                                return (int) Math.min(realBufferedSource32.k.k, 2147483647L);
                            }
                            k8.j("closed");
                            return 0;
                        }

                        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                        public final void close() {
                            RealBufferedSource.this.close();
                        }

                        @Override // java.io.InputStream
                        public final int read(byte[] bArr, int i42, int i52) {
                            bArr.getClass();
                            RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                            Buffer buffer = realBufferedSource32.k;
                            if (!realBufferedSource32.l) {
                                SegmentedByteString.b(bArr.length, i42, i52);
                                if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                    return -1;
                                }
                                return buffer.read(bArr, i42, i52);
                            }
                            k8.j("closed");
                            return 0;
                        }

                        public final String toString() {
                            return RealBufferedSource.this + ".inputStream()";
                        }

                        @Override // java.io.InputStream
                        public final long transferTo(OutputStream outputStream) {
                            outputStream.getClass();
                            RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                            Buffer buffer = realBufferedSource32.k;
                            if (!realBufferedSource32.l) {
                                long j = 0;
                                while (true) {
                                    if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                        return j;
                                    }
                                    long j2 = buffer.k;
                                    j += j2;
                                    SegmentedByteString.b(j2, 0L, j2);
                                    Segment segment = buffer.j;
                                    while (j2 > 0) {
                                        segment.getClass();
                                        int min2 = (int) Math.min(j2, segment.c - segment.b);
                                        outputStream.write(segment.a, segment.b, min2);
                                        int i42 = segment.b + min2;
                                        segment.b = i42;
                                        long j3 = min2;
                                        buffer.k -= j3;
                                        j2 -= j3;
                                        if (i42 == segment.c) {
                                            Segment a2 = segment.a();
                                            buffer.j = a2;
                                            SegmentPool.a(segment);
                                            segment = a2;
                                        }
                                    }
                                }
                            } else {
                                k8.j("closed");
                                return 0L;
                            }
                        }

                        @Override // java.io.InputStream
                        public final int read() {
                            RealBufferedSource realBufferedSource32 = RealBufferedSource.this;
                            Buffer buffer = realBufferedSource32.k;
                            if (realBufferedSource32.l) {
                                k8.j("closed");
                                return 0;
                            }
                            if (buffer.k == 0 && realBufferedSource32.j.J0(8192L, buffer) == -1) {
                                return -1;
                            }
                            return buffer.readByte() & 255;
                        }
                    }, rect, options);
                    realBufferedSource.close();
                    exc = forwardingSource.k;
                    if (exc != null) {
                    }
                } finally {
                }
                options.inSampleSize = i;
                z2 = false;
                options.inScaled = false;
            } else {
                throw exc3;
            }
        } else {
            throw exc2;
        }
    }
}
