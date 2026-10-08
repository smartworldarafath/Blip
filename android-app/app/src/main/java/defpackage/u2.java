package defpackage;

import android.os.Build;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.extractor.Extractor;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.common.collect.Ordering;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRegistrarProcessor;
import java.util.ConcurrentModificationException;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u2 implements Arrangement.SpacingAlignmentCalculator, Supplier, Function, CancellationHandle, DoubleFunction, ComponentRegistrarProcessor, ListenerSet.Event {
    public final /* synthetic */ int j;

    public /* synthetic */ u2(int i) {
        this.j = i;
    }

    public static /* synthetic */ void d() {
        throw new ConcurrentModificationException();
    }

    public static /* synthetic */ void f(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void g(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void i(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void j(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i));
    }

    public static /* synthetic */ void k(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void l(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void n(String str) {
        throw new RuntimeException(str);
    }

    public static /* synthetic */ void o(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    @Override // com.google.firebase.components.ComponentRegistrarProcessor
    public List a(ComponentRegistrar componentRegistrar) {
        return componentRegistrar.getComponents();
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        switch (this.j) {
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Extractor extractor = (Extractor) obj;
                extractor.getClass();
                return extractor.getClass().getSimpleName();
            default:
                Ordering ordering = CueGroup.b;
                return Integer.valueOf(((Cue) obj).r);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.j) {
            case 23:
                analyticsListener.getClass();
                return;
            case 24:
                analyticsListener.getClass();
                return;
            case 25:
                analyticsListener.getClass();
                return;
            case 26:
                analyticsListener.getClass();
                return;
            case 27:
                analyticsListener.getClass();
                return;
            case 28:
                analyticsListener.getClass();
                return;
            default:
                analyticsListener.getClass();
                return;
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int c(int i, LayoutDirection layoutDirection) {
        return Alignment.Companion.m.a(0, i, layoutDirection);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double e(double d) {
        double d2;
        double d3;
        double d4;
        double d5;
        switch (this.j) {
            case KeyModifiers.c /* 12 */:
                float[] fArr = ColorSpaces.a;
                if (d < 0.0d) {
                    d2 = -d;
                } else {
                    d2 = d;
                }
                if (d2 >= 0.0031308049535603718d) {
                    d3 = (Math.pow(d2, 0.4166666666666667d) - 0.05213270142180095d) / 0.9478672985781991d;
                } else {
                    d3 = d2 / 0.07739938080495357d;
                }
                return Math.copySign(d3, d);
            case 13:
                float[] fArr2 = ColorSpaces.a;
                if (d < 0.0d) {
                    d4 = -d;
                } else {
                    d4 = d;
                }
                if (d4 >= 0.04045d) {
                    d5 = Math.pow((0.9478672985781991d * d4) + 0.05213270142180095d, 2.4d);
                } else {
                    d5 = d4 * 0.07739938080495357d;
                }
                return Math.copySign(d5, d);
            case 14:
                float[] fArr3 = ColorSpaces.a;
                return ColorSpaces.b(ColorSpaces.c, d);
            case 15:
                float[] fArr4 = ColorSpaces.a;
                return ColorSpaces.a(ColorSpaces.c, d);
            case 16:
                float[] fArr5 = ColorSpaces.a;
                return ColorSpaces.d(ColorSpaces.d, d);
            default:
                float[] fArr6 = ColorSpaces.a;
                return ColorSpaces.c(ColorSpaces.d, d);
        }
    }

    @Override // com.google.common.base.Supplier
    public Object get() {
        boolean z;
        Supplier supplier = AudioTrackAudioOutputProvider.l;
        if (Build.VERSION.SDK_INT > 37 && Objects.equals(Util.v("persist.audio.compressed_offload_implicit_aac"), "false")) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
    }
}
