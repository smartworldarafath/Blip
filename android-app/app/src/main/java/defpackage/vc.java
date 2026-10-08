package defpackage;

import android.graphics.PathMeasure;
import androidx.compose.foundation.OverscrollConfiguration;
import androidx.compose.foundation.OverscrollConfiguration_androidKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.material.RippleConfiguration;
import androidx.compose.material.RippleKt;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.material.Shapes;
import androidx.compose.material.ShapesKt;
import androidx.compose.material.TextKt;
import androidx.compose.material.TypographyKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.platform.PlatformTextInputModifierNodeKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.DecoderServiceLoaderTarget;
import coil3.util.FetcherServiceLoaderTarget;
import coil3.util.ServiceLoaderComponentRegistry;
import coil3.video.internal.VideoFrameDecoderServiceLoaderTarget;
import com.squareup.wire.ProtoAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.frontend.Search;
import net.blip.libblip.frontend.State$Companion$ADAPTER$1;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferNotificationResponse;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class vc implements Function0 {
    public final /* synthetic */ int j;

    public /* synthetic */ vc(int i) {
        this.j = i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, java.util.Comparator] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = 0;
        switch (this.j) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = OverscrollConfiguration_androidKt.a;
                return new OverscrollConfiguration();
            case 1:
                return new AndroidPathMeasure(new PathMeasure());
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = PinnableContainerKt.a;
                return null;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.a;
                DefaultScheduler defaultScheduler = Dispatchers.a;
                return DefaultIoScheduler.l;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = PlatformTextInputModifierNodeKt.a;
                return null;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = ProvideSharedCompositionLocalsKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalFlavor not present", new Pair[0]);
                throw null;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = ProvideSharedCompositionLocalsKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalSystemPaths not present", new Pair[0]);
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal5 = ProvideSharedCompositionLocalsKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalHardwareInfo not present", new Pair[0]);
                throw null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal6 = ProvideSharedCompositionLocalsKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalCore not present", new Pair[0]);
                throw null;
            case KeyModifiers.a /* 9 */:
                List R = CollectionsKt.R((List) ServiceLoaderComponentRegistry.a.getValue(), new Object());
                ArrayList arrayList = new ArrayList();
                int size = R.size();
                while (i < size) {
                    FetcherServiceLoaderTarget fetcherServiceLoaderTarget = (FetcherServiceLoaderTarget) R.get(i);
                    fetcherServiceLoaderTarget.getClass();
                    arrayList.add(new Pair(fetcherServiceLoaderTarget.a(), fetcherServiceLoaderTarget.type()));
                    i++;
                }
                return arrayList;
            case KeyModifiers.b /* 10 */:
                List R2 = CollectionsKt.R((List) ServiceLoaderComponentRegistry.b.getValue(), new Object());
                ArrayList arrayList2 = new ArrayList();
                int size2 = R2.size();
                while (i < size2) {
                    ((VideoFrameDecoderServiceLoaderTarget) ((DecoderServiceLoaderTarget) R2.get(i))).getClass();
                    arrayList2.add(new Object());
                    i++;
                }
                return arrayList2;
            case 11:
                return new Object();
            case KeyModifiers.c /* 12 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal7 = RippleKt.a;
                return new RippleConfiguration(Color.h, null);
            case 13:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = SaveableStateRegistryKt.a;
                return null;
            case 14:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ScaffoldKt.a;
                return null;
            case 15:
                return new ScrollState(0);
            case 16:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal8 = SelectionRegistrarKt.a;
                return null;
            case 17:
                Lazy lazy = ServiceLoaderComponentRegistry.a;
                return Collections_jvmCommonKt.a(SequencesKt.h(SequencesKt.a(ServiceLoader.load(FetcherServiceLoaderTarget.class, FetcherServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 18:
                Lazy lazy2 = ServiceLoaderComponentRegistry.a;
                return Collections_jvmCommonKt.a(SequencesKt.h(SequencesKt.a(ServiceLoader.load(DecoderServiceLoaderTarget.class, DecoderServiceLoaderTarget.class.getClassLoader()).iterator())));
            case 19:
                return SnapshotStateKt.g(Boolean.FALSE);
            case 20:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = ShapesKt.a;
                return new Shapes(RoundedCornerShapeKt.b(4.0f), RoundedCornerShapeKt.b(4.0f), RoundedCornerShapeKt.b(0.0f));
            case 21:
                throw null;
            case 22:
                int i2 = State$Companion$ADAPTER$1.y;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, Transfer.D);
            case 23:
                int i3 = State$Companion$ADAPTER$1.y;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, TransferNotificationResponse.p);
            case 24:
                int i4 = State$Companion$ADAPTER$1.y;
                return ProtoAdapter.Companion.a(ProtoAdapter.p, Search.q);
            case 25:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal9 = SystemBarsMetricsKt.a;
                throw new IllegalStateException("Missing compositionLocal of type SystemBarsMetrics");
            case 26:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal10 = TextContextMenuProviderKt.a;
                return null;
            case 27:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal11 = TextKt.a;
                return TypographyKt.a;
            case 28:
                return new IntOffset(0L);
            default:
                return new IntOffset(0L);
        }
    }
}
