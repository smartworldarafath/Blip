package androidx.media3.extractor.jpeg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.StartOffsetExtractorInput;
import androidx.media3.extractor.StartOffsetExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.jpeg.MotionPhotoDescription;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import io.sentry.d;
import java.util.List;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class JpegMotionPhotoExtractor implements Extractor {
    public ExtractorOutput b;
    public int c;
    public int d;
    public int e;
    public MotionPhotoMetadata g;
    public ExtractorInput h;
    public StartOffsetExtractorInput i;
    public Mp4Extractor j;
    public final ParsableByteArray a = new ParsableByteArray(2);
    public long f = -1;

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
        Mp4Extractor mp4Extractor = this.j;
        if (mp4Extractor != null) {
            mp4Extractor.getClass();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        String u;
        ParsableByteArray parsableByteArray = this.a;
        parsableByteArray.J(2);
        extractorInput.n(parsableByteArray.a, 0, 2);
        if (parsableByteArray.G() == 65496) {
            while (true) {
                parsableByteArray.J(2);
                extractorInput.n(parsableByteArray.a, 0, 2);
                int G = parsableByteArray.G();
                this.d = G;
                if (G == 65498) {
                    break;
                }
                parsableByteArray.J(2);
                extractorInput.n(parsableByteArray.a, 0, 2);
                int G2 = parsableByteArray.G() - 2;
                if (G2 < 0) {
                    break;
                }
                if (this.d != 65505) {
                    extractorInput.f(G2);
                } else {
                    parsableByteArray.J(G2);
                    extractorInput.n(parsableByteArray.a, 0, G2);
                    if (Objects.equals(parsableByteArray.u(), "http://ns.adobe.com/xap/1.0/") && (u = parsableByteArray.u()) != null) {
                        for (int i = 0; i < 4; i++) {
                            if (u.contains(XmpMotionPhotoDescriptionParser.a[i] + "=\"1\"")) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            Mp4Extractor mp4Extractor = this.j;
            mp4Extractor.getClass();
            mp4Extractor.c(j, j2);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.b = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0193  */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        String u;
        MotionPhotoDescription motionPhotoDescription;
        MotionPhotoMetadata motionPhotoMetadata;
        boolean z;
        long j;
        int i = this.c;
        long j2 = -1;
        ParsableByteArray parsableByteArray = this.a;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i == 6) {
                                return -1;
                            }
                            d.d();
                            return 0;
                        }
                        if (this.i == null || extractorInput != this.h) {
                            this.h = extractorInput;
                            this.i = new StartOffsetExtractorInput(extractorInput, this.f);
                        }
                        Mp4Extractor mp4Extractor = this.j;
                        mp4Extractor.getClass();
                        int f = mp4Extractor.f(this.i, positionHolder);
                        if (f == 1) {
                            positionHolder.a += this.f;
                        }
                        return f;
                    }
                    long position = extractorInput.getPosition();
                    long j3 = this.f;
                    if (position != j3) {
                        positionHolder.a = j3;
                        return 1;
                    }
                    if (!extractorInput.d(parsableByteArray.a, 0, 1, true)) {
                        g();
                        return 0;
                    }
                    extractorInput.j();
                    if (this.j == null) {
                        this.j = new Mp4Extractor(SubtitleParser.Factory.a, 8);
                    }
                    StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.f);
                    this.i = startOffsetExtractorInput;
                    if (this.j.b(startOffsetExtractorInput)) {
                        Mp4Extractor mp4Extractor2 = this.j;
                        long j4 = this.f;
                        ExtractorOutput extractorOutput = this.b;
                        extractorOutput.getClass();
                        mp4Extractor2.d(new StartOffsetExtractorOutput(j4, extractorOutput));
                        MotionPhotoMetadata motionPhotoMetadata2 = this.g;
                        motionPhotoMetadata2.getClass();
                        ExtractorOutput extractorOutput2 = this.b;
                        extractorOutput2.getClass();
                        TrackOutput s = extractorOutput2.s(1024, 4);
                        Format.Builder builder = new Format.Builder();
                        builder.n = MimeTypes.l("image/jpeg");
                        builder.l = new Metadata(motionPhotoMetadata2);
                        s.e(new Format(builder));
                        this.c = 5;
                        return 0;
                    }
                    g();
                    return 0;
                }
                if (this.d == 65505) {
                    ParsableByteArray parsableByteArray2 = new ParsableByteArray(this.e);
                    extractorInput.readFully(parsableByteArray2.a, 0, this.e);
                    if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(parsableByteArray2.u()) && (u = parsableByteArray2.u()) != null) {
                        long g = extractorInput.g();
                        if (g != -1) {
                            try {
                                motionPhotoDescription = XmpMotionPhotoDescriptionParser.a(u);
                            } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
                                Log.f("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                                motionPhotoDescription = null;
                            }
                            if (motionPhotoDescription != null) {
                                List list = motionPhotoDescription.b;
                                if (list.size() >= 2) {
                                    int size = list.size() - 1;
                                    long j5 = -1;
                                    long j6 = -1;
                                    long j7 = -1;
                                    long j8 = -1;
                                    while (size >= 0) {
                                        MotionPhotoDescription.ContainerItem containerItem = (MotionPhotoDescription.ContainerItem) list.get(size);
                                        long j9 = j2;
                                        if (!containerItem.a.equals("video/mp4") && !containerItem.a.equals("video/quicktime")) {
                                            z = false;
                                        } else {
                                            z = true;
                                        }
                                        if (size == 0) {
                                            g -= containerItem.c;
                                            j = 0;
                                        } else {
                                            j = g - containerItem.b;
                                        }
                                        long j10 = g;
                                        g = j;
                                        if (z && g != j10) {
                                            j8 = j10 - g;
                                            j7 = g;
                                        }
                                        if (size == 0) {
                                            j6 = j10;
                                            j5 = g;
                                        }
                                        size--;
                                        j2 = j9;
                                    }
                                    long j11 = j2;
                                    if (j7 != j11 && j8 != j11 && j5 != j11 && j6 != j11) {
                                        motionPhotoMetadata = new MotionPhotoMetadata(j5, j6, motionPhotoDescription.a, j7, j8);
                                        this.g = motionPhotoMetadata;
                                        if (motionPhotoMetadata != null) {
                                            this.f = motionPhotoMetadata.d;
                                        }
                                    }
                                }
                            }
                        }
                        motionPhotoMetadata = null;
                        this.g = motionPhotoMetadata;
                        if (motionPhotoMetadata != null) {
                        }
                    }
                } else {
                    extractorInput.k(this.e);
                }
                this.c = 0;
                return 0;
            }
            parsableByteArray.J(2);
            extractorInput.n(parsableByteArray.a, 0, 2);
            this.e = parsableByteArray.G() - 2;
            extractorInput.k(2);
            this.c = 2;
            return 0;
        }
        parsableByteArray.J(2);
        extractorInput.readFully(parsableByteArray.a, 0, 2);
        int G = parsableByteArray.G();
        this.d = G;
        if (G == 65498) {
            if (this.f != -1) {
                this.c = 4;
                return 0;
            }
            g();
            return 0;
        }
        if ((G < 65488 || G > 65497) && G != 65281) {
            this.c = 1;
        }
        return 0;
    }

    public final void g() {
        ExtractorOutput extractorOutput = this.b;
        extractorOutput.getClass();
        extractorOutput.n();
        this.b.f(new SeekMap.Unseekable(-9223372036854775807L));
        this.c = 6;
    }
}
