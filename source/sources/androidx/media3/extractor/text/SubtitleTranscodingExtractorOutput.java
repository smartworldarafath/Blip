package androidx.media3.extractor.text;

import android.util.SparseArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubtitleTranscodingExtractorOutput implements ExtractorOutput {
    public final ExtractorOutput j;
    public final SubtitleParser.Factory k;
    public final SparseArray l = new SparseArray();
    public boolean m;

    public SubtitleTranscodingExtractorOutput(ExtractorOutput extractorOutput, SubtitleParser.Factory factory) {
        this.j = extractorOutput;
        this.k = factory;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void f(SeekMap seekMap) {
        this.j.f(seekMap);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.j.n();
        if (this.m) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = this.l;
                if (i < sparseArray.size()) {
                    ((SubtitleTranscodingTrackOutput) sparseArray.valueAt(i)).i = true;
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput s(int i, int i2) {
        if (i2 != 3 && i2 != 5) {
            this.m = true;
        }
        ExtractorOutput extractorOutput = this.j;
        if (i2 != 3) {
            return extractorOutput.s(i, i2);
        }
        SparseArray sparseArray = this.l;
        SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput = (SubtitleTranscodingTrackOutput) sparseArray.get(i);
        if (subtitleTranscodingTrackOutput != null) {
            return subtitleTranscodingTrackOutput;
        }
        SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput2 = new SubtitleTranscodingTrackOutput(extractorOutput.s(i, i2), this.k);
        sparseArray.put(i, subtitleTranscodingTrackOutput2);
        return subtitleTranscodingTrackOutput2;
    }
}
