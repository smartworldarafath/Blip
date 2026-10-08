package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import com.google.common.primitives.ImmutableIntArray;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnsupportedBrandsSniffFailure implements SniffFailure {
    public final int a;
    public final ImmutableIntArray b;

    public UnsupportedBrandsSniffFailure(int[] iArr, int i) {
        this.a = i;
        ImmutableIntArray immutableIntArray = ImmutableIntArray.l;
        if (iArr != null && iArr.length != 0) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            immutableIntArray = new ImmutableIntArray(copyOf, copyOf.length);
        }
        this.b = immutableIntArray;
    }

    public final String toString() {
        ImmutableIntArray immutableIntArray = this.b;
        ArrayList arrayList = new ArrayList(immutableIntArray.k);
        for (int i = 0; i < immutableIntArray.k; i++) {
            arrayList.add(Util.M(immutableIntArray.a(i)));
        }
        return "UnsupportedBrands{major=" + Util.M(this.a) + ", compatible=" + arrayList + "}";
    }
}
