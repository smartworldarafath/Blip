package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.Preconditions;
import defpackage.v1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class WebvttSubtitle implements Subtitle {
    public final List j;
    public final long[] k;
    public final long[] l;

    public WebvttSubtitle(ArrayList arrayList) {
        this.j = Collections.unmodifiableList(new ArrayList(arrayList));
        this.k = new long[arrayList.size() * 2];
        for (int i = 0; i < arrayList.size(); i++) {
            WebvttCueInfo webvttCueInfo = (WebvttCueInfo) arrayList.get(i);
            int i2 = i * 2;
            long[] jArr = this.k;
            jArr[i2] = webvttCueInfo.b;
            jArr[i2 + 1] = webvttCueInfo.c;
        }
        long[] jArr2 = this.k;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.l = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j) {
        long[] jArr = this.l;
        int a = Util.a(jArr, j, false);
        if (a < jArr.length) {
            return a;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long b(int i) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        long[] jArr = this.l;
        if (i < jArr.length) {
            z2 = true;
        }
        Preconditions.e(z2);
        return jArr[i];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List c(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            List list = this.j;
            if (i >= list.size()) {
                break;
            }
            int i2 = i * 2;
            long[] jArr = this.k;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                WebvttCueInfo webvttCueInfo = (WebvttCueInfo) list.get(i);
                Cue cue = webvttCueInfo.a;
                if (cue.e == -3.4028235E38f) {
                    arrayList2.add(webvttCueInfo);
                } else {
                    arrayList.add(cue);
                }
            }
            i++;
        }
        Collections.sort(arrayList2, new v1(8));
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            Cue.Builder a = ((WebvttCueInfo) arrayList2.get(i3)).a.a();
            a.e = (-1) - i3;
            a.f = 1;
            arrayList.add(a.a());
        }
        return arrayList;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return this.l.length;
    }
}
