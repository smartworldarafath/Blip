package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Base64;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.EasingFunctionsKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Player;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.DefaultPlaybackSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import coil3.EventListener;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Lazy;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.io.FileNotFoundException;
import java.lang.reflect.Constructor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f7 implements ListenerSet.Event, DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, Supplier, DrmSessionManager.DrmSessionReference, Easing, EventListener.Factory, ComponentFactory, Function, Continuation, LibraryVersionComponent.VersionExtractor {
    public final /* synthetic */ int j;

    public /* synthetic */ f7(int i) {
        this.j = i;
    }

    public static /* synthetic */ void h() {
        throw new RuntimeException();
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void j(Object obj, String str) {
        throw new FileNotFoundException(str + obj);
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        return new DefaultAnalyticsCollector((Clock) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        switch (this.j) {
            case 0:
                ((AnalyticsListener) obj).getClass();
                return;
            case 1:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((AnalyticsListener) obj).getClass();
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((AnalyticsListener) obj).getClass();
                return;
            default:
                ((Player.Listener) obj).v();
                return;
        }
    }

    @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor c() {
        switch (this.j) {
            case KeyModifiers.a /* 9 */:
                int[] iArr = DefaultExtractorsFactory.c;
                if (!Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                    return null;
                }
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(Integer.TYPE);
            default:
                int[] iArr2 = DefaultExtractorsFactory.c;
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(Extractor.class).getConstructor(null);
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object d(ComponentContainer componentContainer) {
        switch (this.j) {
            case 19:
                return (ScheduledExecutorService) ExecutorsRegistrar.a.get();
            case 20:
                return (ScheduledExecutorService) ExecutorsRegistrar.c.get();
            case 21:
                return (ScheduledExecutorService) ExecutorsRegistrar.b.get();
            default:
                Lazy lazy = ExecutorsRegistrar.a;
                return UiExecutor.j;
        }
    }

    @Override // androidx.compose.animation.core.Easing
    public float e(float f) {
        float f2;
        float f3;
        switch (this.j) {
            case 16:
                CubicBezierEasing cubicBezierEasing = EasingFunctionsKt.a;
                if (f < 0.36363637f) {
                    return 7.5625f * f * f;
                }
                if (f < 0.72727275f) {
                    float f4 = f - 0.54545456f;
                    f2 = 7.5625f * f4 * f4;
                    f3 = 0.75f;
                } else if (f < 0.90909094f) {
                    float f5 = f - 0.8181818f;
                    f2 = 7.5625f * f5 * f5;
                    f3 = 0.9375f;
                } else {
                    float f6 = f - 0.95454544f;
                    f2 = 7.5625f * f6 * f6;
                    f3 = 0.984375f;
                }
                return f2 + f3;
            default:
                CubicBezierEasing cubicBezierEasing2 = EasingKt.a;
                return f;
        }
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.targetSdkVersion);
        }
        return "";
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object g(Task task) {
        int i;
        switch (this.j) {
            case 26:
                i = 403;
                break;
            default:
                i = -1;
                break;
        }
        return Integer.valueOf(i);
    }

    @Override // com.google.common.base.Supplier
    public Object get() {
        switch (this.j) {
            case 11:
                byte[] bArr = new byte[12];
                DefaultPlaybackSessionManager.i.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
            default:
                return new DefaultLoadControl();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
    public void a() {
    }
}
