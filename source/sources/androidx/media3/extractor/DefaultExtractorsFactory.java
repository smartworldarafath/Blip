package androidx.media3.extractor;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.amr.AmrExtractor;
import androidx.media3.extractor.avi.AviExtractor;
import androidx.media3.extractor.avif.AvifExtractor;
import androidx.media3.extractor.bmp.BmpExtractor;
import androidx.media3.extractor.flac.FlacExtractor;
import androidx.media3.extractor.flv.FlvExtractor;
import androidx.media3.extractor.heif.HeifExtractor;
import androidx.media3.extractor.jpeg.JpegExtractor;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.png.PngExtractor;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.extractor.webp.WebpExtractor;
import com.google.common.collect.ImmutableList;
import defpackage.f7;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultExtractorsFactory {
    public static final int[] c = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    public static final ExtensionLoader d = new ExtensionLoader(new f7(9));
    public static final ExtensionLoader e = new ExtensionLoader(new f7(10));
    public ImmutableList a;
    public final DefaultSubtitleParserFactory b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ExtensionLoader {
        public final ConstructorSupplier a;
        public final AtomicBoolean b = new AtomicBoolean(false);

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public interface ConstructorSupplier {
            Constructor c();
        }

        public ExtensionLoader(ConstructorSupplier constructorSupplier) {
            this.a = constructorSupplier;
        }

        public final Extractor a(Object... objArr) {
            Constructor c;
            synchronized (this.b) {
                if (!this.b.get()) {
                    try {
                        c = this.a.c();
                    } catch (ClassNotFoundException unused) {
                        this.b.set(true);
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating extension", e);
                    }
                }
                c = null;
            }
            if (c == null) {
                return null;
            }
            try {
                return (Extractor) c.newInstance(objArr);
            } catch (Exception e2) {
                throw new IllegalStateException("Unexpected error creating extractor", e2);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v17, types: [androidx.media3.extractor.wav.WavExtractor, java.lang.Object] */
    public final void a(int i, ArrayList arrayList) {
        DefaultSubtitleParserFactory defaultSubtitleParserFactory = this.b;
        switch (i) {
            case 0:
                arrayList.add(new Ac3Extractor());
                return;
            case 1:
                arrayList.add(new Ac4Extractor());
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                arrayList.add(new AdtsExtractor());
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                arrayList.add(new AmrExtractor());
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Extractor a = d.a(0);
                if (a != null) {
                    arrayList.add(a);
                    return;
                } else {
                    arrayList.add(new FlacExtractor());
                    return;
                }
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                arrayList.add(new FlvExtractor());
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                arrayList.add(new MatroskaExtractor(defaultSubtitleParserFactory, 0));
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                arrayList.add(new Mp3Extractor());
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                arrayList.add(new FragmentedMp4Extractor(defaultSubtitleParserFactory, 704));
                arrayList.add(new Mp4Extractor(defaultSubtitleParserFactory, 160));
                return;
            case KeyModifiers.a /* 9 */:
                arrayList.add(new Object());
                return;
            case KeyModifiers.b /* 10 */:
                arrayList.add(new PsExtractor());
                return;
            case 11:
                if (this.a == null) {
                    this.a = ImmutableList.r();
                }
                arrayList.add(new TsExtractor(0, defaultSubtitleParserFactory, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(this.a)));
                return;
            case KeyModifiers.c /* 12 */:
                ?? obj = new Object();
                obj.c = 0;
                obj.d = -1L;
                obj.f = -1;
                obj.g = -1L;
                arrayList.add(obj);
                return;
            case 13:
            default:
                return;
            case 14:
                arrayList.add(new JpegExtractor());
                return;
            case 15:
                Extractor a2 = e.a(new Object[0]);
                if (a2 != null) {
                    arrayList.add(a2);
                    return;
                }
                return;
            case 16:
                arrayList.add(new AviExtractor(defaultSubtitleParserFactory));
                return;
            case 17:
                arrayList.add(new PngExtractor());
                return;
            case 18:
                arrayList.add(new WebpExtractor());
                return;
            case 19:
                arrayList.add(new BmpExtractor());
                return;
            case 20:
                arrayList.add(new HeifExtractor());
                return;
            case 21:
                arrayList.add(new AvifExtractor());
                return;
        }
    }
}
