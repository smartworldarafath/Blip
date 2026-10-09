package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubtitleTranscodingTrackOutput implements TrackOutput {
    public final TrackOutput a;
    public final SubtitleParser.Factory b;
    public SubtitleParser g;
    public Format h;
    public boolean i;
    public int d = 0;
    public int e = 0;
    public byte[] f = Util.b;
    public final ParsableByteArray c = new ParsableByteArray();

    public SubtitleTranscodingTrackOutput(TrackOutput trackOutput, SubtitleParser.Factory factory) {
        this.a = trackOutput;
        this.b = factory;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int a(DataReader dataReader, int i, boolean z) {
        if (this.g == null) {
            return this.a.a(dataReader, i, z);
        }
        h(i);
        int read = dataReader.read(this.f, this.e, i);
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.e += read;
        return read;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(ParsableByteArray parsableByteArray, int i, int i2) {
        if (this.g == null) {
            this.a.b(parsableByteArray, i, i2);
            return;
        }
        h(i);
        parsableByteArray.k(this.f, this.e, i);
        this.e += i;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void e(Format format) {
        boolean z;
        SubtitleParser subtitleParser;
        format.p.getClass();
        String str = format.p;
        if (MimeTypes.g(str) == 3) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        boolean equals = format.equals(this.h);
        SubtitleParser.Factory factory = this.b;
        if (!equals) {
            this.h = format;
            if (factory.f(format)) {
                subtitleParser = factory.b(format);
            } else {
                subtitleParser = null;
            }
            this.g = subtitleParser;
        }
        SubtitleParser subtitleParser2 = this.g;
        TrackOutput trackOutput = this.a;
        if (subtitleParser2 == null) {
            trackOutput.e(format);
            return;
        }
        Format.Builder a = format.a();
        a.o = MimeTypes.l("application/x-media3-cues");
        a.k = str;
        a.t = Long.MAX_VALUE;
        a.P = factory.a(format);
        trackOutput.e(new Format(a));
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void g(final long j, final int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
        boolean z;
        if (this.g == null) {
            this.a.g(j, i, i2, i3, cryptoData);
            return;
        }
        if (cryptoData == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d("DRM on subtitles is not supported", z);
        int i4 = (this.e - i3) - i2;
        try {
            this.g.b(this.f, i4, i2, new Consumer() { // from class: androidx.media3.extractor.text.b
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    boolean z2;
                    CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                    SubtitleTranscodingTrackOutput subtitleTranscodingTrackOutput = SubtitleTranscodingTrackOutput.this;
                    ParsableByteArray parsableByteArray = subtitleTranscodingTrackOutput.c;
                    subtitleTranscodingTrackOutput.h.getClass();
                    ImmutableList immutableList = cuesWithTiming.a;
                    long j2 = cuesWithTiming.c;
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(immutableList.size());
                    Iterator<E> it = immutableList.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((Cue) it.next()).c());
                    }
                    Bundle bundle = new Bundle();
                    bundle.putParcelableArrayList("c", arrayList);
                    bundle.putLong("d", j2);
                    Parcel obtain = Parcel.obtain();
                    obtain.writeBundle(bundle);
                    byte[] marshall = obtain.marshall();
                    obtain.recycle();
                    parsableByteArray.getClass();
                    parsableByteArray.K(marshall.length, marshall);
                    subtitleTranscodingTrackOutput.a.f(marshall.length, parsableByteArray);
                    long j3 = cuesWithTiming.b;
                    Format format = subtitleTranscodingTrackOutput.h;
                    long j4 = j;
                    if (j3 == -9223372036854775807L) {
                        if (format.u == Long.MAX_VALUE) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.n(z2);
                    } else {
                        long j5 = format.u;
                        if (j5 == Long.MAX_VALUE) {
                            j4 += j3;
                        } else {
                            j4 = j3 + j5;
                        }
                    }
                    subtitleTranscodingTrackOutput.a.g(j4, i | 1, marshall.length, 0, null);
                }
            });
        } catch (RuntimeException e) {
            if (this.i) {
                Log.g("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
            } else {
                throw e;
            }
        }
        int i5 = i4 + i2;
        this.d = i5;
        if (i5 == this.e) {
            this.d = 0;
            this.e = 0;
        }
    }

    public final void h(int i) {
        byte[] bArr;
        int length = this.f.length;
        int i2 = this.e;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.d;
        int max = Math.max(i3 * 2, i + i3);
        byte[] bArr2 = this.f;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.d, bArr, 0, i3);
        this.d = 0;
        this.e = i3;
        this.f = bArr;
    }
}
