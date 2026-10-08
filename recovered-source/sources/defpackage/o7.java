package defpackage;

import android.media.AudioFormat;
import android.media.Spatializer;
import android.os.Build;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.base.Predicate;
import com.google.common.collect.Ordering;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o7 implements Predicate {
    public final /* synthetic */ DefaultTrackSelector j;
    public final /* synthetic */ DefaultTrackSelector.Parameters k;

    public /* synthetic */ o7(DefaultTrackSelector defaultTrackSelector, DefaultTrackSelector.Parameters parameters) {
        this.j = defaultTrackSelector;
        this.k = parameters;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        if (r8.b != false) goto L42;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x005e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e8  */
    @Override // com.google.common.base.Predicate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean apply(Object obj) {
        Boolean bool;
        SpatializerWrapper spatializerWrapper;
        Spatializer spatializer;
        boolean isAvailable;
        Spatializer spatializer2;
        boolean isEnabled;
        boolean z;
        boolean isAvailable2;
        Spatializer spatializer3;
        boolean isEnabled2;
        int i;
        int i2;
        char c;
        Format format = (Format) obj;
        Ordering ordering = DefaultTrackSelector.k;
        DefaultTrackSelector defaultTrackSelector = this.j;
        defaultTrackSelector.getClass();
        if (this.k.B && ((bool = defaultTrackSelector.j) == null || !bool.booleanValue())) {
            int i3 = format.J;
            String str = format.p;
            if (i3 != -1 && i3 > 2) {
                if (str != null) {
                    switch (str.hashCode()) {
                        case -2123537834:
                            if (str.equals("audio/eac3-joc")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187078296:
                            if (str.equals("audio/ac3")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 187078297:
                            if (str.equals("audio/ac4")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1504578661:
                            if (str.equals("audio/eac3")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        case 0:
                        case 1:
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            if (Build.VERSION.SDK_INT >= 32) {
                                SpatializerWrapper spatializerWrapper2 = defaultTrackSelector.h;
                                if (spatializerWrapper2 != null) {
                                    break;
                                }
                            }
                            break;
                        default:
                            if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = defaultTrackSelector.h) != null && spatializerWrapper.b && (spatializer = spatializerWrapper.a) != null) {
                                isAvailable = spatializer.isAvailable();
                                if (isAvailable && (spatializer2 = defaultTrackSelector.h.a) != null) {
                                    isEnabled = spatializer2.isEnabled();
                                    if (isEnabled) {
                                        SpatializerWrapper spatializerWrapper3 = defaultTrackSelector.h;
                                        AudioAttributes audioAttributes = defaultTrackSelector.i;
                                        Spatializer spatializer4 = spatializerWrapper3.a;
                                        if (spatializer4 != null && spatializerWrapper3.b) {
                                            isAvailable2 = spatializer4.isAvailable();
                                            if (isAvailable2 && (spatializer3 = spatializerWrapper3.a) != null) {
                                                isEnabled2 = spatializer3.isEnabled();
                                                if (isEnabled2) {
                                                    int i4 = format.J;
                                                    if (Objects.equals(str, "audio/eac3-joc")) {
                                                        if (i4 == 16) {
                                                            i = 12;
                                                            i2 = format.K;
                                                            if (i2 != -1 || i4 != i) {
                                                                i2 = Util.m(i);
                                                            }
                                                            if (i2 != 0) {
                                                                AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(i2);
                                                                int i5 = format.L;
                                                                if (i5 != -1) {
                                                                    channelMask.setSampleRate(i5);
                                                                }
                                                                Spatializer spatializer5 = spatializerWrapper3.a;
                                                                spatializer5.getClass();
                                                                z = k.c(spatializer5).canBeSpatialized(audioAttributes.a(), channelMask.build());
                                                                if (!z) {
                                                                }
                                                            }
                                                        }
                                                        i = i4;
                                                        i2 = format.K;
                                                        if (i2 != -1) {
                                                        }
                                                        i2 = Util.m(i);
                                                        if (i2 != 0) {
                                                        }
                                                    } else if (Objects.equals(str, "audio/iamf")) {
                                                        if (i4 == -1) {
                                                            i = 6;
                                                            i2 = format.K;
                                                            if (i2 != -1) {
                                                            }
                                                            i2 = Util.m(i);
                                                            if (i2 != 0) {
                                                            }
                                                        }
                                                        i = i4;
                                                        i2 = format.K;
                                                        if (i2 != -1) {
                                                        }
                                                        i2 = Util.m(i);
                                                        if (i2 != 0) {
                                                        }
                                                    } else {
                                                        if (Objects.equals(str, "audio/ac4") && (i4 == 18 || i4 == 21)) {
                                                            i = 24;
                                                            i2 = format.K;
                                                            if (i2 != -1) {
                                                            }
                                                            i2 = Util.m(i);
                                                            if (i2 != 0) {
                                                            }
                                                        }
                                                        i = i4;
                                                        i2 = format.K;
                                                        if (i2 != -1) {
                                                        }
                                                        i2 = Util.m(i);
                                                        if (i2 != 0) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        z = false;
                                        if (!z) {
                                        }
                                    }
                                }
                            }
                            return false;
                    }
                }
                if (Build.VERSION.SDK_INT >= 32) {
                    isAvailable = spatializer.isAvailable();
                    if (isAvailable) {
                        isEnabled = spatializer2.isEnabled();
                        if (isEnabled) {
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }
}
