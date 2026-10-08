package androidx.media3.extractor.heif;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.StartOffsetExtractorInput;
import androidx.media3.extractor.StartOffsetExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class HeicMotionPhotoExtractor implements Extractor {
    public ExtractorOutput b;
    public ExtractorInput c;
    public StartOffsetExtractorInput d;
    public Mp4Extractor e;
    public int g;
    public long h;
    public int i;
    public final ParsableByteArray a = new ParsableByteArray(16);
    public long j = -1;
    public int f = 0;

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
        Mp4Extractor mp4Extractor = this.e;
        if (mp4Extractor != null) {
            mp4Extractor.getClass();
            this.e = null;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        return HeifSniffer.a(extractorInput, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        if (j == 0) {
            this.f = 0;
            this.i = 0;
            this.j = -1L;
            if (this.e != null) {
                this.e = null;
                return;
            }
            return;
        }
        if (this.f == 3) {
            Mp4Extractor mp4Extractor = this.e;
            mp4Extractor.getClass();
            mp4Extractor.c(j, j2);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.b = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        while (true) {
            int i = this.f;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                return -1;
                            }
                            d.d();
                            return 0;
                        }
                        if (this.d == null || extractorInput != this.c) {
                            this.c = extractorInput;
                            this.d = new StartOffsetExtractorInput(extractorInput, this.j);
                        }
                        Mp4Extractor mp4Extractor = this.e;
                        mp4Extractor.getClass();
                        int f = mp4Extractor.f(this.d, positionHolder);
                        if (f == 1) {
                            positionHolder.a += this.j;
                        }
                        return f;
                    }
                    if (this.e == null) {
                        this.e = new Mp4Extractor(SubtitleParser.Factory.a, 8);
                    }
                    StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.j);
                    this.d = startOffsetExtractorInput;
                    if (this.e.b(startOffsetExtractorInput)) {
                        Mp4Extractor mp4Extractor2 = this.e;
                        long j = this.j;
                        ExtractorOutput extractorOutput = this.b;
                        extractorOutput.getClass();
                        mp4Extractor2.d(new StartOffsetExtractorOutput(j, extractorOutput));
                        this.f = 3;
                    } else {
                        ExtractorOutput extractorOutput2 = this.b;
                        extractorOutput2.getClass();
                        extractorOutput2.n();
                        this.b.f(new SeekMap.Unseekable(-9223372036854775807L));
                        this.f = 4;
                    }
                } else {
                    extractorInput.k((int) (this.h - this.i));
                    this.i = 0;
                    this.f = 0;
                }
            } else {
                int i2 = this.i;
                ParsableByteArray parsableByteArray = this.a;
                if (i2 == 0) {
                    if (!extractorInput.a(parsableByteArray.a, 0, 8, true)) {
                        ExtractorOutput extractorOutput3 = this.b;
                        extractorOutput3.getClass();
                        extractorOutput3.n();
                        this.b.f(new SeekMap.Unseekable(-9223372036854775807L));
                        this.f = 4;
                        return -1;
                    }
                    this.i = 8;
                    parsableByteArray.M(0);
                    this.h = parsableByteArray.B();
                    this.g = parsableByteArray.m();
                }
                if (this.h == 1) {
                    extractorInput.readFully(parsableByteArray.a, 8, 8);
                    this.i += 8;
                    this.h = parsableByteArray.F();
                }
                if (this.g == 1836086884) {
                    long position = extractorInput.getPosition();
                    this.j = position;
                    long j2 = this.i;
                    MotionPhotoMetadata motionPhotoMetadata = new MotionPhotoMetadata(0L, position - j2, -9223372036854775807L, position, this.h - j2);
                    ExtractorOutput extractorOutput4 = this.b;
                    extractorOutput4.getClass();
                    TrackOutput s = extractorOutput4.s(1024, 4);
                    Format.Builder builder = new Format.Builder();
                    builder.n = MimeTypes.l("image/heic");
                    builder.l = new Metadata(motionPhotoMetadata);
                    s.e(new Format(builder));
                    this.f = 2;
                } else {
                    this.f = 1;
                }
            }
        }
    }
}
