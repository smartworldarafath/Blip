package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioProfile;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.u0;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class SpeakerLayoutUtil {
    public static final ImmutableList a = ImmutableList.t(12);

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.function.Function] */
    public static ImmutableList a(AudioDeviceInfo audioDeviceInfo) {
        List audioProfiles;
        int encapsulationType;
        int format;
        int[] channelMasks;
        audioProfiles = audioDeviceInfo.getAudioProfiles();
        TreeSet treeSet = new TreeSet(Comparator.comparing(new Object()).reversed());
        Iterator it = audioProfiles.iterator();
        while (it.hasNext()) {
            AudioProfile e = u0.e(it.next());
            encapsulationType = e.getEncapsulationType();
            if (encapsulationType != 1) {
                format = e.getFormat();
                if (Util.A(format)) {
                    channelMasks = e.getChannelMasks();
                    for (int i : channelMasks) {
                        treeSet.add(Integer.valueOf(i));
                    }
                }
            }
        }
        return ImmutableList.m(treeSet);
    }
}
