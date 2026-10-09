package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.u0;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class AudioDescriptorUtil {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.function.Function] */
    public static ImmutableList a(List list) {
        int standard;
        byte[] descriptor;
        if (Build.VERSION.SDK_INT >= 31 && list != null) {
            TreeSet treeSet = new TreeSet(Comparator.comparing(new Object()).reversed());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioDescriptor d = u0.d(it.next());
                standard = d.getStandard();
                if (standard == 1) {
                    descriptor = d.getDescriptor();
                    if (descriptor.length != 3) {
                        Log.f("AudioDescriptorUtil", "Invalid SAD length: " + descriptor.length);
                    } else {
                        byte b = descriptor[0];
                        int i = (b & 7) + 1;
                        if (((b >> 3) & 15) == 1) {
                            treeSet.add(Integer.valueOf(Util.m(i)));
                        }
                    }
                }
            }
            return ImmutableList.m(treeSet);
        }
        return ImmutableList.r();
    }
}
