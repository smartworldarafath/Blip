package androidx.media3.exoplayer.audio;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDescriptor;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import defpackage.u0;
import defpackage.v1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioCapabilities {
    public static final ImmutableList e;
    public static final AudioCapabilities f;
    public static final ImmutableList g;
    public static final ImmutableMap h;
    public final SparseArray a = new SparseArray();
    public final int b;
    public final ImmutableList c;
    public final ImmutableList d;

    static {
        ImmutableList t = ImmutableList.t(12);
        e = t;
        f = new AudioCapabilities(ImmutableList.t(AudioProfile.d), t, ImmutableList.r());
        Object[] objArr = {2, 5, 6};
        ObjectArrays.a(3, objArr);
        g = ImmutableList.j(3, objArr);
        ImmutableMap.Builder builder = new ImmutableMap.Builder(4);
        builder.b(5, 6);
        builder.b(17, 6);
        builder.b(7, 6);
        builder.b(30, 10);
        builder.b(18, 6);
        builder.b(6, 8);
        builder.b(8, 8);
        builder.b(14, 8);
        h = builder.a(true);
    }

    public AudioCapabilities(List list, ImmutableList immutableList, List list2) {
        for (int i = 0; i < list.size(); i++) {
            AudioProfile audioProfile = (AudioProfile) list.get(i);
            this.a.put(audioProfile.a, audioProfile);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.a.size(); i3++) {
            i2 = Math.max(i2, ((AudioProfile) this.a.valueAt(i3)).b);
        }
        this.b = i2;
        this.c = ImmutableList.m(immutableList);
        this.d = ImmutableList.m(list2);
    }

    public static ImmutableList a(int[] iArr, int i) {
        ImmutableList.Builder k = ImmutableList.k();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i2 : iArr) {
            k.d(new AudioProfile(i2, i));
        }
        return k.i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0066, code lost:
    
        r13 = r7.getSpeakerLayoutChannelMask();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00a6, code lost:
    
        if (r13.isEmpty() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x01c7, code lost:
    
        if (r6.isEmpty() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x01c9, code lost:
    
        r12 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x01d5, code lost:
    
        if (r6.isEmpty() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x01f5, code lost:
    
        if (r6.isEmpty() == false) goto L128;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AudioCapabilities b(Context context, Intent intent, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo, List list) {
        AudioDeviceInfo audioDeviceInfo2;
        List audioDevicesForAttributes;
        int i;
        ImmutableList immutableList;
        AudioDeviceInfo[] audioDeviceInfoArr;
        boolean z;
        int i2;
        boolean isDirectPlaybackSupported;
        List directProfilesForAttributes;
        int encapsulationType;
        int format;
        int[] channelMasks;
        int[] channelMasks2;
        int type;
        ImmutableList a;
        List audioDescriptors;
        int standard;
        byte[] descriptor;
        int i3;
        int i4;
        int i5;
        List audioDescriptors2;
        int speakerLayoutChannelMask;
        AudioManager a2 = AudioManagerCompat.a(context);
        int i6 = 0;
        if (audioDeviceInfo != null) {
            audioDeviceInfo2 = audioDeviceInfo;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                audioDevicesForAttributes = a2.getAudioDevicesForAttributes(audioAttributes.a());
                if (!audioDevicesForAttributes.isEmpty()) {
                    audioDeviceInfo2 = (AudioDeviceInfo) audioDevicesForAttributes.get(0);
                }
            }
            audioDeviceInfo2 = null;
        }
        if (audioDeviceInfo2 != null) {
            immutableList = SpeakerLayoutUtil.a;
            if (!DeviceTypeUtil.a(audioDeviceInfo2.getType())) {
                if (audioDeviceInfo2.getType() == 1) {
                    immutableList = ImmutableList.t(4);
                } else if (audioDeviceInfo2.getType() == 2) {
                    if (Build.VERSION.SDK_INT >= 36 && speakerLayoutChannelMask != 0 && speakerLayoutChannelMask != 1) {
                        immutableList = ImmutableList.t(Integer.valueOf(speakerLayoutChannelMask));
                    } else {
                        Log.f("SpeakerLayoutUtil", "Built-in speaker's getSpeakerLayoutChannelMask not usable, defaulting to stereo.");
                    }
                } else {
                    int i7 = Build.VERSION.SDK_INT;
                    if (i7 >= 31 && audioDeviceInfo2.getType() == 10) {
                        ImmutableList a3 = SpeakerLayoutUtil.a(audioDeviceInfo2);
                        if (a3.isEmpty()) {
                            audioDescriptors2 = audioDeviceInfo2.getAudioDescriptors();
                            a3 = AudioDescriptorUtil.a(audioDescriptors2);
                        }
                        i = 0;
                        immutableList = a3;
                    } else {
                        if (i7 >= 31) {
                            int type2 = audioDeviceInfo2.getType();
                            if (i7 >= 31 && type2 == 29) {
                                ImmutableList a4 = SpeakerLayoutUtil.a(audioDeviceInfo2);
                                if (a4.isEmpty()) {
                                    audioDescriptors = audioDeviceInfo2.getAudioDescriptors();
                                    if (i7 >= 34) {
                                        if (i7 < 34 || audioDescriptors == null) {
                                            i = 0;
                                            a = ImmutableList.r();
                                        } else {
                                            ArrayList arrayList = new ArrayList();
                                            Iterator it = audioDescriptors.iterator();
                                            while (it.hasNext()) {
                                                AudioDescriptor d = u0.d(it.next());
                                                int i8 = i6;
                                                standard = d.getStandard();
                                                if (standard == 2) {
                                                    descriptor = d.getDescriptor();
                                                    if (descriptor.length != 3) {
                                                        Log.f("AudioDescriptorUtil", "Invalid SADB length: " + descriptor.length);
                                                    } else {
                                                        if (Build.VERSION.SDK_INT >= 34 && descriptor.length == 3) {
                                                            byte b = descriptor[i8];
                                                            if ((b & 1) != 0) {
                                                                i4 = 12;
                                                            } else {
                                                                i4 = i8;
                                                            }
                                                            if ((b & 2) != 0) {
                                                                i4 |= 32;
                                                            }
                                                            if ((b & 4) != 0) {
                                                                i4 |= 16;
                                                            }
                                                            if ((b & 8) != 0) {
                                                                i4 |= 192;
                                                            }
                                                            if ((b & 16) != 0) {
                                                                i4 |= 1024;
                                                            }
                                                            if ((b & 32) != 0) {
                                                                i4 |= 768;
                                                            }
                                                            if ((b & 128) != 0) {
                                                                i4 |= 201326592;
                                                            }
                                                            byte b2 = descriptor[1];
                                                            if ((b2 & 1) != 0) {
                                                                i4 |= 81920;
                                                            }
                                                            if ((b2 & 2) != 0) {
                                                                i4 |= 8192;
                                                            }
                                                            if ((b2 & 4) != 0) {
                                                                i4 |= 32768;
                                                            }
                                                            if ((b2 & 8) != 0) {
                                                                i4 |= 6144;
                                                            }
                                                            if ((b2 & 16) != 0) {
                                                                i4 |= 33554432;
                                                            }
                                                            if ((b2 & 32) != 0) {
                                                                i4 |= 262144;
                                                            }
                                                            if ((b2 & 64) != 0) {
                                                                i4 |= 6144;
                                                            }
                                                            if ((b2 & 128) != 0) {
                                                                i4 |= 3145728;
                                                            }
                                                            byte b3 = descriptor[2];
                                                            if ((b3 & 1) != 0) {
                                                                i4 |= 655360;
                                                            }
                                                            if ((b3 & 2) != 0) {
                                                                i5 = 8388608 | i4;
                                                            } else {
                                                                i5 = i4;
                                                            }
                                                            if ((b3 & 4) != 0) {
                                                                i3 = 20971520 | i5;
                                                            } else {
                                                                i3 = i5;
                                                            }
                                                        } else {
                                                            i3 = i8;
                                                        }
                                                        arrayList.add(Integer.valueOf(i3));
                                                    }
                                                }
                                                i6 = i8;
                                            }
                                            i = i6;
                                            arrayList.sort(new v1(1));
                                            a = ImmutableList.m(arrayList);
                                        }
                                    } else {
                                        i = 0;
                                    }
                                    a = AudioDescriptorUtil.a(audioDescriptors);
                                } else {
                                    i = 0;
                                    immutableList = a4;
                                }
                            }
                        }
                        i = 0;
                        if (i7 >= 31 && ((type = audioDeviceInfo2.getType()) == 11 || type == 12 || (i7 >= 31 && type == 22))) {
                            a = SpeakerLayoutUtil.a(audioDeviceInfo2);
                        }
                    }
                }
            }
            i = 0;
        } else {
            i = 0;
            immutableList = e;
        }
        int i9 = Build.VERSION.SDK_INT;
        ImmutableMap immutableMap = h;
        if (i9 >= 33 && (Util.C(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
            directProfilesForAttributes = a2.getDirectProfilesForAttributes(audioAttributes.a());
            HashMap hashMap = new HashMap();
            hashMap.put(2, new HashSet(Ints.a(12)));
            for (int i10 = i; i10 < directProfilesForAttributes.size(); i10++) {
                android.media.AudioProfile e2 = u0.e(directProfilesForAttributes.get(i10));
                encapsulationType = e2.getEncapsulationType();
                if (encapsulationType != 1) {
                    format = e2.getFormat();
                    if (Util.A(format) || immutableMap.containsKey(Integer.valueOf(format))) {
                        if (hashMap.containsKey(Integer.valueOf(format))) {
                            Set set = (Set) hashMap.get(Integer.valueOf(format));
                            set.getClass();
                            channelMasks2 = e2.getChannelMasks();
                            set.addAll(Ints.a(channelMasks2));
                        } else {
                            Integer valueOf = Integer.valueOf(format);
                            channelMasks = e2.getChannelMasks();
                            hashMap.put(valueOf, new HashSet(Ints.a(channelMasks)));
                        }
                    }
                }
            }
            ImmutableList.Builder k = ImmutableList.k();
            for (Map.Entry entry : hashMap.entrySet()) {
                k.d(new AudioProfile(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new AudioCapabilities(k.i(), immutableList, list);
        }
        if (audioDeviceInfo2 == null) {
            audioDeviceInfoArr = a2.getDevices(2);
        } else {
            audioDeviceInfoArr = new AudioDeviceInfo[1];
            audioDeviceInfoArr[i] = audioDeviceInfo2;
        }
        int length = audioDeviceInfoArr.length;
        for (int i11 = i; i11 < length; i11++) {
            if (DeviceTypeUtil.a(audioDeviceInfoArr[i11].getType())) {
                return new AudioCapabilities(ImmutableList.t(AudioProfile.d), immutableList, list);
            }
        }
        ImmutableSet.Builder builder = new ImmutableSet.Builder();
        builder.h(2);
        if (Build.VERSION.SDK_INT >= 29 && (Util.C(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
            ImmutableList.Builder k2 = ImmutableList.k();
            UnmodifiableIterator it2 = immutableMap.keySet().iterator();
            while (it2.hasNext()) {
                Integer num = (Integer) it2.next();
                int intValue = num.intValue();
                if (Build.VERSION.SDK_INT >= Util.l(intValue)) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), audioAttributes.a());
                    if (isDirectPlaybackSupported) {
                        k2.d(num);
                    }
                }
            }
            k2.d(2);
            builder.i(k2.i());
            return new AudioCapabilities(a(Ints.e(builder.j()), 10), immutableList, list);
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", i) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            String str = Build.MANUFACTURER;
            if (!str.equals("Amazon") && !str.equals("Xiaomi")) {
                i2 = 0;
                if (intent == null && !z && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", i2) == 1) {
                    int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
                    if (intArrayExtra != null) {
                        builder.i(Ints.a(intArrayExtra));
                    }
                    return new AudioCapabilities(a(Ints.e(builder.j()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)), immutableList, list);
                }
                return new AudioCapabilities(a(Ints.e(builder.j()), 10), immutableList, list);
            }
        }
        i2 = 0;
        if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            builder.i(g);
        }
        if (intent == null) {
        }
        return new AudioCapabilities(a(Ints.e(builder.j()), 10), immutableList, list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fb, code lost:
    
        if (r8 != 5) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010c A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair c(Format format, AudioAttributes audioAttributes) {
        boolean isDirectPlaybackSupported;
        int m;
        String str = format.p;
        int i = format.K;
        int i2 = format.J;
        str.getClass();
        int b = MimeTypes.b(str, format.l);
        Integer valueOf = Integer.valueOf(b);
        ImmutableMap immutableMap = h;
        if (immutableMap.containsKey(valueOf)) {
            int i3 = 6;
            SparseArray sparseArray = this.a;
            if (b == 18 && !Util.i(sparseArray, 18)) {
                b = 6;
            } else if ((b == 8 && !Util.i(sparseArray, 8)) || (b == 30 && !Util.i(sparseArray, 30))) {
                b = 7;
            }
            if (Util.i(sparseArray, b)) {
                AudioProfile audioProfile = (AudioProfile) sparseArray.get(b);
                audioProfile.getClass();
                int i4 = audioProfile.b;
                ImmutableSet immutableSet = audioProfile.c;
                boolean z = false;
                if (i2 != -1 && b != 18) {
                    if (format.p.equals("audio/vnd.dts.uhd;profile=p2") && Build.VERSION.SDK_INT < 33) {
                        if (i2 > 10) {
                            return null;
                        }
                    } else {
                        if (immutableSet == null) {
                            if (i2 <= i4) {
                                z = true;
                            }
                        } else {
                            if (i != -1) {
                                m = i;
                            } else {
                                m = Util.m(i2);
                            }
                            if (m != 0) {
                                z = immutableSet.contains(Integer.valueOf(m));
                            }
                        }
                        if (!z) {
                            return null;
                        }
                    }
                    i4 = i2;
                } else {
                    int i5 = format.L;
                    if (i5 == -1) {
                        i5 = 48000;
                    }
                    int i6 = audioProfile.a;
                    if (immutableSet == null) {
                        if (Build.VERSION.SDK_INT >= 29) {
                            i4 = 10;
                            while (true) {
                                if (i4 > 0) {
                                    int m2 = Util.m(i4);
                                    if (m2 != 0) {
                                        isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i6).setSampleRate(i5).setChannelMask(m2).build(), audioAttributes.a());
                                        if (isDirectPlaybackSupported) {
                                            break;
                                        }
                                    }
                                    i4--;
                                } else {
                                    i4 = 0;
                                    break;
                                }
                            }
                        } else {
                            Object obj = 0;
                            Object obj2 = immutableMap.get(Integer.valueOf(i6));
                            if (obj2 != null) {
                                obj = obj2;
                            }
                            i4 = ((Integer) obj).intValue();
                        }
                    }
                }
                if (Build.VERSION.SDK_INT <= 28) {
                    if (i4 == 7) {
                        i3 = 8;
                    } else if (i4 != 3) {
                        if (i4 != 4) {
                        }
                    }
                    HashSet hashSet = MediaLibraryInfo.a;
                    if (i != -1 || i2 != i3) {
                        i = Util.m(i3);
                    }
                    if (i != 0) {
                        return null;
                    }
                    return Pair.create(Integer.valueOf(b), Integer.valueOf(i));
                }
                i3 = i4;
                HashSet hashSet2 = MediaLibraryInfo.a;
                if (i != -1) {
                }
                i = Util.m(i3);
                if (i != 0) {
                }
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        if (r1 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean contentEquals;
        if (this != obj) {
            if (obj instanceof AudioCapabilities) {
                AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
                SparseArray sparseArray = audioCapabilities.a;
                String str = Util.a;
                SparseArray sparseArray2 = this.a;
                if (sparseArray2 != null) {
                    if (sparseArray != null) {
                        if (Build.VERSION.SDK_INT >= 31) {
                            contentEquals = sparseArray2.contentEquals(sparseArray);
                        } else {
                            int size = sparseArray2.size();
                            if (size == sparseArray.size()) {
                                for (int i = 0; i < size; i++) {
                                    if (Objects.equals(sparseArray2.valueAt(i), sparseArray.get(sparseArray2.keyAt(i)))) {
                                    }
                                }
                                contentEquals = true;
                            }
                        }
                    }
                    contentEquals = false;
                    break;
                }
                if (!contentEquals || this.b != audioCapabilities.b || !Objects.equals(this.c, audioCapabilities.c) || !Objects.equals(this.d, audioCapabilities.d)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int i2 = this.b * 31;
        String str = Util.a;
        int i3 = Build.VERSION.SDK_INT;
        SparseArray sparseArray = this.a;
        if (i3 >= 31) {
            i = sparseArray.contentHashCode();
        } else {
            i = 17;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                i = Objects.hashCode(sparseArray.valueAt(i4)) + ((sparseArray.keyAt(i4) + (i * 31)) * 31);
            }
        }
        return Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((i2 + i) * 31)) * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", audioProfiles=" + this.a + ", speakerLayoutChannelMasks=" + this.c + ", spatializerChannelMasks=" + this.d + "]";
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AudioProfile {
        public static final AudioProfile d;
        public final int a;
        public final int b;
        public final ImmutableSet c;

        static {
            AudioProfile audioProfile;
            if (Build.VERSION.SDK_INT >= 33) {
                ImmutableSet.Builder builder = new ImmutableSet.Builder();
                for (int i = 1; i <= 10; i++) {
                    builder.h(Integer.valueOf(Util.m(i)));
                }
                audioProfile = new AudioProfile(2, builder.j());
            } else {
                audioProfile = new AudioProfile(2, 10);
            }
            d = audioProfile;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AudioProfile(int i, Set set) {
            this.a = i;
            ImmutableSet m = ImmutableSet.m(set);
            this.c = m;
            UnmodifiableIterator it = m.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.b = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioProfile)) {
                return false;
            }
            AudioProfile audioProfile = (AudioProfile) obj;
            if (this.a == audioProfile.a && this.b == audioProfile.b && Objects.equals(this.c, audioProfile.c)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int i = ((this.a * 31) + this.b) * 31;
            ImmutableSet immutableSet = this.c;
            if (immutableSet == null) {
                hashCode = 0;
            } else {
                hashCode = immutableSet.hashCode();
            }
            return i + hashCode;
        }

        public final String toString() {
            return "AudioProfile[format=" + this.a + ", maxChannelCount=" + this.b + ", channelMasks=" + this.c + "]";
        }

        public AudioProfile(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = null;
        }
    }
}
