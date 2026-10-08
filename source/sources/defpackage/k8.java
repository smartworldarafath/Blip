package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.mp4.Track;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.primitives.Ints;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k8 implements LibraryVersionComponent.VersionExtractor, ComponentFactory, Function, Id3Decoder.FramePredicate, ShouldPauseCallback, Consumer, LoudnessCodecController.LoudnessParameterUpdateListener, Supplier, MediaCodecSelector {
    public final /* synthetic */ int j;

    public static /* synthetic */ void e() {
        throw new RuntimeException();
    }

    public static /* synthetic */ void g(int i, int i2) {
        throw new IndexOutOfBoundsException("position=" + i + ((Object) ", limit=") + i2);
    }

    public static /* synthetic */ void h(int i, int i2, Object obj, String str) {
        throw new IllegalArgumentException((str + i + obj + i2).toString());
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalArgumentException((str + obj + '\"').toString());
    }

    public static /* synthetic */ void j(String str) {
        throw new IOException(str);
    }

    public static /* synthetic */ void k(String str, long j, Object obj) {
        throw new IllegalArgumentException((str + j + obj).toString());
    }

    public static /* synthetic */ void l(String str, long j, Object obj, long j2) {
        throw new IOException(str + j + obj + j2);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void n(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void o() {
        throw new NoSuchElementException();
    }

    public static /* synthetic */ void p(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void q(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void r(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void s(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void t(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean a() {
        return false;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        switch (this.j) {
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Label label = (Label) obj;
                int i = Format.V;
                return label.a + ": " + label.b;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return (Track) obj;
            default:
                Track track = (Track) obj;
                int i2 = Mp4Extractor.I;
                return track;
        }
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean b(int i, int i2, int i3, int i4, int i5) {
        switch (this.j) {
            case KeyModifiers.a /* 9 */:
                return false;
            case KeyModifiers.b /* 10 */:
                if (i != 2 ? !(i2 != 65 || i3 != 80 || i4 != 73 || i5 != 67) : !(i2 != 80 || i3 != 73 || i4 != 67)) {
                    return false;
                }
                return true;
            default:
                if ((i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2))) {
                    return true;
                }
                return false;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
    public List c(String str, boolean z, boolean z2) {
        return MediaCodecUtil.e(str, z, z2);
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object d(ComponentContainer componentContainer) {
        FirebaseInstallationsApi lambda$getComponents$0;
        lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(componentContainer);
        return lambda$getComponents$0;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String f(Context context) {
        switch (this.j) {
            case 0:
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                if (applicationInfo == null) {
                    return "";
                }
                return String.valueOf(applicationInfo.minSdkVersion);
            case 1:
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
                    return "tv";
                }
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
                    return "watch";
                }
                if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                    return "auto";
                }
                if (!context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                    return "";
                }
                return "embedded";
            default:
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName == null) {
                    return "";
                }
                return FirebaseCommonRegistrar.a(installerPackageName);
        }
    }

    @Override // com.google.common.base.Supplier
    public Object get() {
        Supplier supplier = MediaCodecInfo.m;
        String v = Util.v("ro.vendor.api_level");
        if (v == null) {
            v = "";
        }
        return Ints.f(v);
    }

    public /* synthetic */ k8(int i) {
        this.j = i;
    }
}
