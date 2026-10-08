package androidx.media3.exoplayer.image;

import android.content.Context;
import android.graphics.Point;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.exoplayer.RendererCapabilities;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BitmapFactoryImageDecoder extends SimpleDecoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> implements Decoder {
    public final Context n;
    public final int o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory {
        public final Context a;

        public Factory(Context context) {
            context.getClass();
            this.a = context;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
        
            if (android.os.Build.VERSION.SDK_INT >= 34) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int a(Format format) {
            String str = format.p;
            if (str != null && MimeTypes.i(str)) {
                String str2 = format.p;
                String str3 = Util.a;
                str2.getClass();
                char c = 65535;
                switch (str2.hashCode()) {
                    case -1487656890:
                        if (str2.equals("image/avif")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1487464693:
                        if (str2.equals("image/heic")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1487464690:
                        if (str2.equals("image/heif")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1487394660:
                        if (str2.equals("image/jpeg")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1487018032:
                        if (str2.equals("image/webp")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -879272239:
                        if (str2.equals("image/bmp")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -879258763:
                        if (str2.equals("image/png")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 1:
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        return RendererCapabilities.j(4, 0, 0, 0);
                }
                return RendererCapabilities.j(1, 0, 0, 0);
            }
            return RendererCapabilities.j(0, 0, 0, 0);
        }
    }

    public BitmapFactoryImageDecoder(Context context) {
        super(new DecoderInputBuffer[1], new ImageOutputBuffer[1]);
        this.n = context;
        this.o = -1;
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderInputBuffer g() {
        return new DecoderInputBuffer(1);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderOutputBuffer h() {
        return new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public final void g() {
                BitmapFactoryImageDecoder.this.n(this);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException i(Throwable th) {
        return new Exception("Unexpected decode error", th);
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z) {
        boolean z2;
        ImageOutputBuffer imageOutputBuffer = (ImageOutputBuffer) decoderOutputBuffer;
        ByteBuffer byteBuffer = decoderInputBuffer.m;
        byteBuffer.getClass();
        Preconditions.n(byteBuffer.hasArray());
        if (byteBuffer.arrayOffset() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.e(z2);
        try {
            int i = this.o;
            if (i == -1) {
                Context context = this.n;
                if (context != null) {
                    Point o = Util.o(context);
                    int i2 = o.x;
                    int i3 = o.y;
                    Format format = decoderInputBuffer.k;
                    if (format != null) {
                        int i4 = format.R;
                        if (i4 != -1) {
                            i2 *= i4;
                        }
                        int i5 = format.S;
                        if (i5 != -1) {
                            i3 *= i5;
                        }
                    }
                    i = (Math.max(i2, i3) * 2) - 1;
                } else {
                    i = 4096;
                }
            }
            imageOutputBuffer.m = BitmapUtil.a(byteBuffer.array(), byteBuffer.remaining(), i);
            imageOutputBuffer.k = decoderInputBuffer.n;
            return null;
        } catch (ParserException e) {
            return new Exception("Could not decode image data with BitmapFactory.", e);
        } catch (IOException e2) {
            return new Exception(e2);
        }
    }
}
